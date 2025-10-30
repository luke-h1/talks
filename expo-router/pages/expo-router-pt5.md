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

<div style="display: flex; flex-direction: row; justify-content: center; align-items: flex-start; gap: 20px;">
  <div style="display: flex; flex-direction: column; align-items: center; max-width: 30%;">
    <h3 style="margin: 0 0 10px 0; font-size: 1.5rem; font-weight: 700;">Android</h3>
    <img src="/assets/blog-android.png" style="max-width: 100%; max-height: 400px; object-fit: contain;" />
  </div>
  <div style="display: flex; flex-direction: column; align-items: center; max-width: 30%;">
    <h3 style="margin: 0 0 10px 0; font-size: 1.5rem; font-weight: 700;">iOS</h3>
    <img src="/assets/blog-ios.png" style="max-width: 100%; max-height: 400px; object-fit: contain;" />
  </div>
  <div style="display: flex; flex-direction: column; align-items: center; max-width: 30%;">
    <h3 style="margin: 0 0 10px 0; font-size: 1.5rem; font-weight: 700;">Web</h3>
    <img src="/assets/blog-web.png" style="max-width: 100%; max-height: 450px; object-fit: contain;" />
  </div>
</div>

<!--
Expo is turning the heat up on the React framework and pushing it to its limits. I adjusted the blog application we just built to use native tabs for ios and android, which also ended up making the web version look a bit cleaner. So you have a lot of power at your fingertips to use each platform you're working on to its full limits
-->
