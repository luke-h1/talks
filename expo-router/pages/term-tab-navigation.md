---
transition: slide-up
level: 2
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :click-3="{ x: 80 }"
  :leave="{ x: 1000 }"
  style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; font-size: 3rem; font-weight: 800; padding: 0.5rem; display: inline-block; line-height: 1.2;"
>
  Tab Navigation
</div>

<div style="display: flex; flex-direction: column; align-items: center; gap: 2rem; margin-top: 2rem;">
  <div style="display: flex; align-items: center; justify-content: center; gap: 1rem;">
    <div style="display: flex; flex-direction: column; align-items: center;">
      <span style="font-size: 0.9rem; font-weight: 600; margin-bottom: 0.5rem; color: #60a5fa;">Home Tab</span>
      <img v-motion :initial="{ opacity: 0, y: 100 }" :enter="{ opacity: 1, y: 0, transition: { delay: 300, duration: 600 } }" src="/assets/home.png" class="rounded-lg shadow-xl" style="width: 220px; height: 400px; object-fit: contain;" />
    </div>
    <div style="font-size: 2rem; color: #60a5fa; padding: 0 0.5rem;">→</div>
    <div style="display: flex; flex-direction: column; align-items: center;">
      <span style="font-size: 0.9rem; font-weight: 600; margin-bottom: 0.5rem; color: #c084fc;">Authors Tab</span>
      <img v-motion :initial="{ opacity: 0, y: 100 }" :enter="{ opacity: 1, y: 0, transition: { delay: 450, duration: 600 } }" src="/assets/authors.png" class="rounded-lg shadow-xl" style="width: 220px; height: 400px; object-fit: contain;" />
    </div>
  </div>
</div>

<!--
So here we have two tabs - the home tab and the authors tab. When we are on the home tab, we render the home stack and 
 when we are on the authors tab, we render the authors stack. Generally tabs can contain multiple screens or stacks, and 
 stacks can belong to many tabs. So we can have a stack/screen that belongs to the home tab and the authors tab, and a stack/screen that belongs to the home tab only.
-->
