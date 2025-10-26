---
transition: fade
layout: center
---

# The Server function

```tsx
// 🪄 This is a Server Action - callable from the client but runs on the server
export async function onSubmit(message: string) {
  "use server";

  // 🪄 Get mutable state to track conversation history
  const aiState = getMutableAIState();

  // 🪄 Add user's message to the conversation
  aiState.update({
    ...aiState.get(),
    messages: [
      ...aiState.get().messages,
      { id: nanoid(), role: "user", content: message },
    ],
  });

  // 🪄 Access Expo's request headers for user context
  const headers = await unstable_headers();

  // 🪄 Stream UI components back to the client as AI responds
  const result = await streamUI({
    model: openai("gpt-4o-mini"),
    // ...
  });
}
```

<!--
This is where the magic happens. The client calls this, but it executes entirely on the server. We can track state and stream responses.
-->
