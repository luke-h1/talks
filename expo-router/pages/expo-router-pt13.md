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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Movie app</span>
</div>

<div style="display: flex; flex-direction: row; gap: 2rem; align-items: center;">
<ul>
  <li v-click>Server driven UI to render the movies natively</li>
  <li v-click>AI integration</li>
  </ul>
</div>

<!--
Now that we've identified our problem lets think about how we could improve the experience that we just saw with perplexity.
-->
