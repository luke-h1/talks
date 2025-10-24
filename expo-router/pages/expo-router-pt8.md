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
  <span>
    DOM components
  </span> 
</div>

<!--
Expo team released something called DOM components. Where you simply mark files with a directive called 'use dom' and this will
render them in a highly optimized web view. This is a huge win for the native world as it allows you to incrementally adopt web components in your native app. You can imagine if you have a big web design system, you can now just start using it in your native app without having to rewrite everything.
-->

```tsx
"use dom";

import { useDom } from "expo-router";

import { CoolComponent } from "@my-org/best-design-system-ever";

export default function MyAwesomeScreen() {
  return (
    <div>
      <h1>Hello React Native!</h1>
      <CoolComponent />
    </div>
  );
}
```
