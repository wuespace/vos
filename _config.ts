import lume from "lume/mod.ts";
import jsx from "lume/plugins/jsx.ts";
import tailwindcss from "lume/plugins/tailwindcss.ts";
import postcss from "lume/plugins/postcss.ts";
import favicon from "lume/plugins/favicon.ts";
import sitemap from "lume/plugins/sitemap.ts";
import basePath from "lume/plugins/base_path.ts";

import { typstDelegis } from "./lib/typst-delegis.ts";
import { checkPrerequisities } from "./lib/check-prereqs.ts";
import tailwindConfig from "./tailwind.config.ts";

await checkPrerequisities();

export const site = lume({
  location: new URL("https://vos.wuespace.de/"),
});

site.use(jsx());
site.use(
  tailwindcss(tailwindConfig),
);
site.use(postcss());
site.use(favicon({ input: "assets/logo.svg" }));
site.use(sitemap());
site.use(typstDelegis());
site.copy("assets");
site.copy("pdfjs");

site.use(basePath());

export default site;
