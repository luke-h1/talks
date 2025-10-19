---
transition: fade
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :click-3="{ x: 80 }"
  :leave="{ x: 1000 }"
  style="font-size: 4rem; font-weight: 800; padding: 0.5rem; display: inline-block; line-height: 1.2;"
>
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">The app</span> 
</div>

<!--
This is the app we'll be building. It's a static site that displays a list of blog posts from Sanity which is a headless CMS. There is one app I've left out of building which is the movie app. And I want you to have a think about why we can't build that with react navigation while we're going thru the demo. There'll be a few hints at the end.
-->
<div style="display: flex; flex-direction: column; align-items: center; gap: 2rem; margin-top: 2rem;">
  <div style="display: flex; align-items: center; justify-content: center; gap: 1rem;">
    <div style="display: flex; flex-direction: column; align-items: center;">
      <img v-motion :initial="{ opacity: 0, y: 100 }" :enter="{ opacity: 1, y: 0, transition: { delay: 300, duration: 600 } }" src="/assets/home.png" class="rounded-lg shadow-xl" style="width: 300px; height: 400px; object-fit: contain;" />
    </div>
    <!-- <div style="display: flex; flex-direction: column; align-items: center;">
      <img v-motion :initial="{ opacity: 0, y: 100 }" :enter="{ opacity: 1, y: 0, transition: { delay: 450, duration: 600 } }" src="/assets/authors.png" class="rounded-lg shadow-xl" style="width: 220px; height: 400px; object-fit: contain;" />
    </div> -->
  </div>
</div>
