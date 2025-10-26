---
transition: fade
layout: center
---

# Streaming Text Responses

```tsx
  // 🪄 Stream text responses as they're generated
  text: ({ content, done }) => {
    if (done) {
      // 🪄 When streaming is complete, save to conversation history
      aiState.done({
        ...aiState.get(),
        messages: [...aiState.get().messages, {
          id: nanoid(),
          role: "assistant",
          content,
        }],
      });
    }
    // 🪄 Return a React component that renders on the client
    return <MarkdownText done={done}>{content}</MarkdownText>;
  },
```

<!--
As the AI generates text, we can stream React components back to the client. The user sees responses as they're being written - just like ChatGPT. Now at this stage, we've got feature parity with ChatGPT. But hopefully you're starting to see how easy it is to use expo-router and server functions to go even further than just text.
-->
