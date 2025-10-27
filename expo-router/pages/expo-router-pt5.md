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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Maximizing React</span> 
</div>

<div style="display: flex; flex-direction: row; justify-content: center; align-items: center; gap: 20px;">
  <img src="/assets/bsky.webp" alt="BlueSky" style="max-width: 45%; max-height: 450px; object-fit: contain;" />
  <img src="/assets/bsky-web.png" alt="BSKY web" style="max-width: 45%; max-height: 450px; object-fit: contain;" />
</div>

<!--
Expo for web really is turning the heat up on the React framework and pushing it to its limits. It powers very popular apps like BlueSky,  that not only run great on iphone or android, but on web too. And with expo router, it's helping team use modern web patterns like server driven UI, react server functions. Proving that you can write once run everywhere.
-->
