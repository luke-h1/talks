---
transition: fade
layout: center
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :leave="{ x: 1000 }"
  style="font-size: 4rem; font-weight: 800; padding: 0.5rem; display: inline-block; line-height: 1.2;"
>
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Expo Router</span> 🚀
</div>

<!--
Expo router is built on top of react navigation and the expo router team took react navigation as far as they could push it in version 3, 4 and 5, but now in version 6 going forward they're building their own stuff that is exclusive to expo-router. So we're kind of left out in the cold.
-->
