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
  Speaking of servers, let's create an API route. Since everyone and their dog loves AI, let's create an api route in our app. We call it ai+api.ts and theand it will be automatically turned into a route that can be called securely from the client. without leaking any sensitive information. We call the function with whatever request method we want the endpoint to respond with. We can access secret variables from our .env file and in production these are automatically split in the bundle by metro so that they're not leaked to the client. We can access the request object, which is a web compliant Request object, so we can access things like the headers, body, url, method, etc just like we would with Next.js or remix. Since ai is really popular I thought we might want to build an AI assistant with api routes. Rather than show you animations or another demo, let's have a look at it why don't we: https://exp-movies.lhowsam.com/api/ai?city=sheffield&apiKey=fesheff2025
-->

````md magic-move {lines: true}
```bash
touch app/ai+api.ts
```

```tsx {1-2}
// app/ai+api.ts
export async function GET(request: Request) {
  const OPEN_API_KEY = process.env.OPEN_API_KEY;

  const { searchParams } = new URL(request.url);
  const query = searchParams.get("query") || "things to do in London";

  const response = await fetch(`https://api.openai.com/v1/chat/completions`, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${OPEN_API_KEY}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: "gpt-4o-mini",
      messages: [
        {
          role: "user",
          content: `Respond to ${query} Please provide a helpful list with brief descriptions.`,
        },
      ],
    }),
  });

  const data = await response.json();
  return new Response(data.choices[0].message.content);
}
```

```tsx {3}
// app/ai+api.ts
export async function GET(request: Request) {
  const OPEN_API_KEY = process.env.OPEN_API_KEY;

  const { searchParams } = new URL(request.url);
  const query = searchParams.get("query") || "things to do in London";

  const response = await fetch(`https://api.openai.com/v1/chat/completions`, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${OPEN_API_KEY}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: "gpt-4o-mini",
      messages: [
        {
          role: "user",
          content: `Respond to ${query} Please provide a helpful list with brief descriptions.`,
        },
      ],
    }),
  });

  const data = await response.json();
  return new Response(data.choices[0].message.content);
}
```

```tsx {5-6}
// app/ai+api.ts
export async function GET(request: Request) {
  const OPEN_API_KEY = process.env.OPEN_API_KEY;

  const { searchParams } = new URL(request.url);
  const query = searchParams.get("query") || "things to do in London";

  const response = await fetch(`https://api.openai.com/v1/chat/completions`, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${OPEN_API_KEY}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: "gpt-4o-mini",
      messages: [
        {
          role: "user",
          content: `Respond to ${query} Please provide a helpful list with brief descriptions.`,
        },
      ],
    }),
  });

  const data = await response.json();
  return new Response(data.choices[0].message.content);
}
```

```tsx {8-23}
// app/ai+api.ts
export async function GET(request: Request) {
  const OPEN_API_KEY = process.env.OPEN_API_KEY;

  const { searchParams } = new URL(request.url);
  const query = searchParams.get("query") || "things to do in London";

  const response = await fetch(`https://api.openai.com/v1/chat/completions`, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${OPEN_API_KEY}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: "gpt-4o-mini",
      messages: [
        {
          role: "user",
          content: `Respond to ${query} Please provide a helpful list with brief descriptions.`,
        },
      ],
    }),
  });

  const data = await response.json();
  return new Response(data.choices[0].message.content);
}
```

```tsx {14-22}
// app/ai+api.ts
export async function GET(request: Request) {
  const OPEN_API_KEY = process.env.OPEN_API_KEY;

  const { searchParams } = new URL(request.url);
  const query = searchParams.get("query") || "things to do in London";

  const response = await fetch(`https://api.openai.com/v1/chat/completions`, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${OPEN_API_KEY}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: "gpt-4o-mini",
      messages: [
        {
          role: "user",
          content: `Respond to ${query} Please provide a helpful list with brief descriptions.`,
        },
      ],
    }),
  });

  const data = await response.json();
  return new Response(data.choices[0].message.content);
}
```

```tsx {25-26}
// app/ai+api.ts
export async function GET(request: Request) {
  const OPEN_API_KEY = process.env.OPEN_API_KEY;

  const { searchParams } = new URL(request.url);
  const query = searchParams.get("query") || "things to do in London";

  const response = await fetch(`https://api.openai.com/v1/chat/completions`, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${OPEN_API_KEY}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: "gpt-4o-mini",
      messages: [
        {
          role: "user",
          content: `Respond to ${query} Please provide a helpful list with brief descriptions.`,
        },
      ],
    }),
  });

  const data = await response.json();
  return new Response(data.choices[0].message.content);
}
```
````
