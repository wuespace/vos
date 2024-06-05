import { Page } from "lume/core/file.ts";
import Site from "lume/core/site.ts";
import { Metadata, readMetadata } from "./metadata.ts";
import { compileTypst } from "./compile.ts";

export const typstDelegis = () => (site: Site) => {
  site.preprocess([".typ"], async (filteredPages, allPages) => {
    const urls: Record<string, Metadata> = {};
    await Promise.allSettled(filteredPages.map(async (page) => {
      const metadata = await readMetadata(site.src(page.sourcePath));
      urls[page.data.url] = metadata;

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
        content: page.data.url + "rendered.pdf",
        title: metadata.abbreviation,
      };

      await Deno.mkdir(
        site.dest(page.outputPath, ".."),
        { recursive: true },
      );
      await compileTypst(
        site.src(page.sourcePath),
        site.dest(page.outputPath.replace("index.html", "rendered.pdf")),
      );
    }));

    allPages.map((page) => page.data = { ...page.data, vos: urls });
  });
  site.loadPages([".typ"]);
};
