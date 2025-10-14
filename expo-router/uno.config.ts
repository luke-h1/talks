import { defineConfig, presetIcons, presetUno } from "unocss";

export default defineConfig({
  shortcuts: {
    // Background shortcuts
    "bg-main": "bg-white text-[#181818] dark:bg-[#121212] dark:text-[#ddd]",

    // Common gradient text patterns
    "gradient-text": "bg-clip-text text-transparent bg-gradient-to-r",
    "gradient-blue-purple": "from-blue-400 via-purple-400 to-pink-400",
    "gradient-expo": "from-[#4EC5D4] via-[#146b8c] to-[#2B90B6]",

    // Layout shortcuts
    "flex-center": "flex items-center justify-center",
    "absolute-center":
      "absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2",

    // Common button/link styles
    "link-hover": "hover:opacity-80 transition-opacity",
  },
  presets: [
    presetUno(),
    presetIcons({
      collections: {
        // @ts-expect-error
        logos: () =>
          import("@iconify-json/logos/icons.json").then((i) => i.default),
      },
      extraProperties: {
        display: "inline-block",
        "vertical-align": "middle",
      },
    }),
  ],
});
