import lume from "lume/mod.ts";
import jsx from "lume/plugins/jsx.ts";
import tailwindcss from "lume/plugins/tailwindcss.ts";
import postcss from "lume/plugins/postcss.ts";
import { typstDelegis } from "./lib/typst-delegis.ts";
import { checkPrerequisities } from "./lib/check-prereqs.ts";
import tailwindConfig from "./tailwind.config.ts";

await checkPrerequisities();

export const site = lume({
  location: new URL("https://wuespace.github.io/vos/"),
});

site.use(jsx());
site.use(
  tailwindcss(tailwindConfig),
);
site.use(postcss());
site.use(typstDelegis());
site.copy("assets");

export default site;
