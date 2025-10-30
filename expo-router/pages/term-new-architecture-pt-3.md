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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">New Architecture</span> 
  <span style="font-size: 2rem; margin-left: 1rem;">🚀 🧑‍🚀</span>
</div>

<div style="display: flex; justify-content: center; align-items: center; width: 100%;">
  <h1>Why do we care? <span style="font-size: 2rem; margin-left: 1rem;">🤔</span></h1>
  
</div>

<div style="margin-top: 2rem; display: flex; justify-content: center; align-items: center; width: 100%;">
<ul style="list-style-type: none; padding: 0;" >
    <li v-click style="margin-bottom: 1rem;">
    ⚛️ <strong>Latest React features</strong> 
  </li>
  <li v-click style="margin-bottom: 1rem;">
    ⏳ <strong>Faster ⚡</strong> Everything is much faster
  </li>
</ul>
</div>

<!--
Why do we care? Well the new arch allows us to use the latest React features. Server functions, suspense boundaries. Without that some of the demos I'm going to show you today wouldn't be possible. It's also enabling the expo & meta team to work on supporting advanced server side rendering techniques like partial pre-rendering, incremental static regeneration and all that good stuff we know and love on web.

* Everything much faster for authors and consumers
-->
