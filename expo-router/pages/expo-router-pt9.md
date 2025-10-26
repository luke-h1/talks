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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Servers</span>🤔
</div>

<!--
If you're building an application, you usually need to have some api to talk to. And if you've used full-stack frameworks such as Next.js or remix, you know how the boundary between client and server just melts away by being able to create API routes and server functions, without having to go through the trials and tribulations of deploying infrastructure, creating a new API, setting up certificates etc. etc.
-->

```tsx
// app/page.tsx (Next.js)
function HomePage() {
  const response = await fetch("http://localhost:3000/api/event");
  const data = await response.json();
  return (
    <div>
      {data.message} {data.framework}
    </div>
  );
}
```

```tsx
// app/api/event/route.ts (Next.js)
import { NextRequest } from "next/server";

export async function GET(request: NextRequest) {
  return Response.json({
    message: "Frontend sheff is awesome",
    framework: "next",
  });
}
```
