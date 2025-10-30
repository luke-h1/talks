---
transition: fade
layout: center
---

# Tools (Function Calling)

```tsx
  tools: {
    // 🪄 Define a tool the AI can call to fetch movie data
    get_media: {
      description: "Search for movies or TV shows, or get trending content",

      // 🪄 Type-safe schema using Zod - AI must provide these params
      inputSchema: z.object({
        time_window: z.enum(["day", "week"]).default("day"),
        media_type: z.enum(["tv", "movie"]).default("movie"),
        generated_description: z.string(),
        query: z.string().optional(), // for searches
      }),
```

<!--
This is where it gets really cool. We can define custom tools the AI can use. When the AI decides to search for movies, it will call this function with type-safe parameters.
-->
