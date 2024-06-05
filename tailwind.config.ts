import { Config } from "npm:tailwindcss";

export default {
  // Extract the classes from HTML and JSX files
  extensions: [".html", ".jsx", ".tsx"],

  // Your Tailwind options, like the theme colors and fonts
  options: {
    content: ["**/*.tsx", "**/*.html"],
    theme: {
      fontFamily: {
        sans: ["Graphik", "sans-serif"],
        serif: ["Merriweather", "serif"],
      },
    },
  } satisfies Config,
};
