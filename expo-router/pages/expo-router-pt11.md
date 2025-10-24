---
transition: fade
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :leave="{ x: 1000 }"
  style="font-size: 4rem; font-weight: 800; padding: 0.5rem; display: inline-block; line-height: 1.2;"
>
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">API routes</span>
</div>

<!--
  Expo router has support for API routes. We can create a file called api/hello.ts and it will be automatically turned into a route that can be called securely from the client. without leaking any sensitive information or credentials to the client.
-->

```tsx
// -> app/api/hello+api.ts
// -> ~/.env

import { api } from "expo-router";

export async function GET(request: Request) {
  const OPEN_API_KEY = process.env.OPEN_API_KEY;
  if (!OPEN_API_KEY) {
    return new Response("OPEN_API_KEY is not set", { status: 500 });
  }

  const response = await fetch(`https://api.openai.com/v1/chat/completions`, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${OPEN_API_KEY}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: "Hello, how are you?" }],
    }),
  });

  const data = await response.json();

  return new Response(data.choices[0].message.content);
}
```
