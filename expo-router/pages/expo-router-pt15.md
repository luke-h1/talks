---
transition: fade
layout: center
---

# Setting Up the AI Context

```tsx
import { createAI, getMutableAIState, streamUI } from "@ai-sdk/rsc";
import { openai } from "@ai-sdk/openai";
import { z } from "zod";

// 🪄 Helper function to call TMDB API (The Movie Database)
async function tmdbFetch(endpoint: string) {
  const response = await fetch(`${TMDB_BASE_URL}${endpoint}`, {
    headers: {
      Authorization: `Bearer ${process.env.TMDB_READ_ACCESS_TOKEN}`,
    },
  });
  return response.json();
}
```

<!--
We validate our environment and set up our TMDB helper. This all runs on the server so API keys stay safe.
-->
