---
transition: fade
layout: center
---

# The Server function

```tsx
// 🪄 This is a Server Action - callable from the client but runs *only* on the server

export async function onSubmit(message: string) {
  "use server";

  const aiState = getMutableAIState();

  aiState.update({
    ...aiState.get(),
    messages: [
      ...aiState.get().messages,
      { id: nanoid(), role: "user", content: message },
    ],
  });

  const headers = await unstable_headers();

  const result = await streamUI({
    model: openai("gpt-4o-mini"),
    // ...
  });
}
```

<!--
This is where the magic happens. The client calls this, but it executes entirely on the server. We first get the state from the ai sdk, add the users message to the conversation, try to get any headers from the request to personalize the response (such as city,country, platform the user is using) and then we call streamUI to start the streaming process.
-->
