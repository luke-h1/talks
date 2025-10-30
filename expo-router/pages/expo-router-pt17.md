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

IMPORTANT: If not about movies/TV, respond with:
"I only respond to TV / movie questions."

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
This is our prompt. You're a helpful assitant to help the user decide on what to watch this halloween. the 'system' role is just used for setting general instructions and guidlines. Assitant represents the ai reply and user represents the user's message.
-->
