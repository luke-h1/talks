---
transition: fade
layout: two-cols
---

# The AI Route Component

```tsx
// ~/(tabs)/ai.tsx
import { ChatUI } from "../components/ai/chatui";
import { AI } from "../context/ai-context";

export async function renderAI() {
  return (
    <AI>
      <ChatUI />
    </AI>
  );
}
```

::right::

<div style="display: flex; align-items: center; justify-content: center; height: 20%; padding: 1rem;">
<img src='/assets/ai-app.webp' alt="AI app" style="max-width: 90%; max-height: 50vh; object-fit: contain;" max-height="30vh" />
</div>

<!--
This is our entry point - a screen in our tabs stack, The Ai is just a context provider that holds all of our conversation state with the ai and the chat ui is just a client side component that renders the chat ui.
-->
