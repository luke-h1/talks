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
  Stack Navigation
</div>

<div style="display: flex; flex-direction: column; align-items: center; gap: 2rem; margin-top: 2rem;">
  <div style="display: flex; align-items: center; justify-content: center; gap: 1rem;">
    <div style="display: flex; flex-direction: column; align-items: center;">
      <span style="font-size: 0.9rem; font-weight: 600; margin-bottom: 0.5rem; color: #60a5fa;">Home</span>
      <img v-motion :initial="{ opacity: 0, y: 100 }" :enter="{ opacity: 1, y: 0, transition: { delay: 300, duration: 600 } }" src="/assets/home.png" class="rounded-lg shadow-xl" style="width: 220px; height: 400px; object-fit: contain;" />
    </div>
    <div style="font-size: 2rem; color: #60a5fa; padding: 0 0.5rem;">→</div>
    <div style="display: flex; flex-direction: column; align-items: center;">
      <span style="font-size: 0.9rem; font-weight: 600; margin-bottom: 0.5rem; color: #c084fc;">Article</span>
      <img v-motion :initial="{ opacity: 0, y: 100 }" :enter="{ opacity: 1, y: 0, transition: { delay: 450, duration: 600 } }" src="/assets/movie-screen.png" class="rounded-lg shadow-xl" style="width: 220px; height: 400px; object-fit: contain;" />
    </div>
    <!-- <div style="font-size: 2rem; color: #c084fc; padding: 0 0.5rem;">→</div>
    <div style="display: flex; flex-direction: column; align-items: center;">
      <span style="font-size: 0.9rem; font-weight: 600; margin-bottom: 0.5rem; color: #fb92bc;">Authors</span>
      <img v-motion :initial="{ opacity: 0, y: 100 }" :enter="{ opacity: 1, y: 0, transition: { delay: 600, duration: 600 } }" src="/assets/authors.png" class="rounded-lg shadow-xl" style="width: 220px; height: auto; object-fit: contain;" />
    </div> -->
  </div>
  <!-- <div style="font-size: 2rem; color: #fb92bc;">↓</div>
  <div style="display: flex; flex-direction: column; align-items: center;">
    <span style="font-size: 0.9rem; font-weight: 600; margin-bottom: 0.5rem; color: #fb92bc;">Author Detail</span>
    <img v-motion :initial="{ opacity: 0, y: 100 }" :enter="{ opacity: 1, y: 0, transition: { delay: 750, duration: 600 } }" src="/assets/author-slug.png" class="rounded-lg shadow-xl" style="width: 220px; height: auto; object-fit: contain;" />
  </div> -->
</div>

<!--
Stack navigation is a way for your app to transition between screens where each new screen is placed on top of a stack. You can think of it like a stack of plates - each new plate is placed on top of the previous one. Within a tab, you can have multiple stacks, and each stack can have multiple screens. Screens can also render on different tabs. So in our app for example, we have a home tab and an authors tab. We can have a stack of screens for the home tab and a stack of screens for the authors tab. We can also have a screen that belongs to both the home tab and the authors tab.
-->
