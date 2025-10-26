---
transition: fade
layout: center
---

# The prompt

```tsx
const result = await streamUI({
  model: openai("gpt-4o-mini"),
  messages: [
    {
      role: "system",
      content: `
You are a helpful movie and TV show assistant.

// 🪄 Guard rail: Only respond to movie/TV questions
IMPORTANT: If not about movies/TV, respond with:
"I only respond to TV / movie questions."

// 🪄 Use Expo Router headers for personalization
User info:
- city: ${headers.get("eas-ip-city")}
- country: ${headers.get("eas-ip-country")}
- platform: ${headers.get("expo-platform")}
      `,
    },
    ...aiState.get().messages,
  ],
```

<!--
We can use Expo Router's headers to personalize the AI's responses based on user location and platform. All processed server-side. We then just craft a prompt so that the AI doesnt hopefully go off topic.
-->
