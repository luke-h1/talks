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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Web support</span> 
</div>

<div style="margin-top: 2rem; font-size: 1.5rem; display: flex; align-items: center; gap: 2rem;">
  <ul v-click style="margin: 0;">
    <li>🤔 Webpack</li>
  </ul>
  <img src='/assets/webpack.jpg' style='width: 300px; height: 300px;' v-click />
</div>

<!--
So I did try to build this project for web using react navigation and I kind of ran out of time fighting with it. Long story short it involves configuring webpack and making it play nice with React and everything else. I think i could have gotten it to work, but I felt it wasn't worth the effort.
-->
