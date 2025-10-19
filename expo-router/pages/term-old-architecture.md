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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Old Arch</span> 
  <span style="font-size: 2rem; margin-left: 1rem;">🐌</span>
</div>

<!--

-->

<div style="display: flex; flex-direction: row; align-items: center; justify-content: center; gap: 2rem; margin-top: 2rem;">
  <img v-click src="/assets/js.webp" alt="JS logo" style="max-width: 15%; height: auto; object-fit: contain;" />
    <div style="font-size: 2rem;">→</div>

  <img v-click src="/assets/kotlin.png" alt="React Native logo" style="max-width: 15%; height: auto; object-fit: contain;" />
  <img v-click src="/assets/swift.png" alt="React Native logo" style="max-width: 15%; height: auto; object-fit: contain;" />
</div>

<!--
With the old architecture, you have two threads that are running. There is the JS thread and this where all our app logic runs, we write our code etc. and the native world. Whether the UI/native thread runs.
 Since these two things run in different languages, we need a way to communicate between them. And in the old architecture, this is done via a bridge.
-->
