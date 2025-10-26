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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Burger King</span> 
</div>

<div style="display: flex; gap: 2rem; justify-content: center; align-items: center; margin-top: 2rem; max-width: 1500px; margin-left: auto; margin-right: auto;">
  <div style="flex: 1; text-align: center;">
    <img src="/assets/bk-web.png" alt="Burger King Web" style="max-width: 100%; height: 400px; object-fit: contain; border-radius: 8px;" />
  </div>
  <div style="flex: 1; text-align: center;">
    <img src="/assets/bk-mobile.webp" alt="Burger King Mobile" style="max-width: 100%; height: 400px; object-fit: contain; border-radius: 8px;" />
  </div>
</div>

<!--
One of the apps I've been using a little too much as of late is burger king. They use react native and expo for their mobile apps, and also use expo + react navigation for their website
-->
