---
transition: fade
layout: center
---

# Text Responses

```tsx
  text: ({ content, done }) => {
    if (done) {
      aiState.done({
        ...aiState.get(),
        messages: [...aiState.get().messages, {
          id: nanoid(),
          role: "assistant",
          content,
        }],
      });
    }
    return <MarkdownText done={done}>{content}</MarkdownText>;
  },
```

<!--
Now we can generate some text and render that as markdown. Now at this stage, we've got feature parity with ChatGPT. But hopefully you're starting to see how easy it is to use expo-router and server functions to go even further than just text.
-->
