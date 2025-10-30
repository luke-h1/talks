---
transition: fade
layout: center
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :leave="{ x: 1000 }"
  style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; font-size: 3rem; font-weight: 800; padding: 0.5rem; display: inline-block; line-height: 1.2;"
>
  Terminology
</div>

<div style="margin-top: 2rem; max-width: 1200px;">
    <img src="/assets/react-native.webp" alt="React" style="height: 400px; object-fit: contain;" />
</div>

<!--
While this talk is going to be focussed quite heavily on how you can use your existing skills as a web developer to build full stack apps and websites, I'm going to cover some native terms that we'll be using throughout the talk to build the best possible experiences on each platform.
-->
