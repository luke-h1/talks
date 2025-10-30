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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Expo web</span> 🎯 
</div>

<div style="margin-top: 2rem; font-size: 1.5rem;">
  <ul>
    <li v-click>Different rendering patterns 🎨</li>
    <li v-click>Modern CSS 🎨</li>
    <li v-click>React 19+ 🧑‍🚀</li>
    <li v-click>Very accessible 🎯</li>
  </ul>
</div>

<!--
Expo web allows you to build delightful web experiences. 
* Different rendering patterns , 
* modern css like tailwind, sass, styled components  
* Latest React features like suspense boundaries, server functions and much more that we don't have time to cover today. 

* Very accessible too, out of the box it comes with very good support for aria-labels, focus management, keyboard navigation and if anything is lacking, the react native apis are very oriented towards accessibility so its very easy to patch things your components up if needed
-->
