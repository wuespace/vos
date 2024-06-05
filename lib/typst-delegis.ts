import {Page} from "lume/core/file.ts";
import Site from "lume/core/site.ts";
import {Metadata, readMetadata} from "./metadata.ts";
import {compileTypst} from "./compile.ts";
import {checkForChanges} from "./cache.ts";

export const typstDelegis = () => (site: Site) => {
  site.preprocess([".typ"], async (filteredPages, allPages) => {
    const urls: Record<string, Metadata> = {};
    for (const page of filteredPages) {
      const {cacheKey, shouldRecompile} = checkForChanges(page.sourcePath, page.data.content?.toString() ?? "");

      const metadata = await readMetadata(site.src(page.sourcePath), cacheKey);

      urls[site.url(page.data.url)] = metadata;

      allPages.push(Page.create({
        url: page.data.url + "info.json",
        content: JSON.stringify(
          metadata,
          null,
          2,
        ),
      }));

      page.data = {
        ...page.data,
        layout: "vo.tsx",
        // cache key included to make the SSG detect changes in the resulting content and reload the page
        content: site.url(page.data.url + "rendered.pdf#" + cacheKey),
        title: metadata.abbreviation + " - " + metadata.title + ` (WüSpace VOS)`,
      };

      if (shouldRecompile) {
        await Deno.mkdir(
          site.dest(page.outputPath, ".."),
          { recursive: true },
        );
        await compileTypst(
          site.src(page.sourcePath),
          site.dest(page.outputPath.replace("index.html", "rendered.pdf")),
        );
      }
    }

    allPages.map((page) => page.data = { ...page.data, vos: urls });
  });
  site.loadPages([".typ"]);
};

