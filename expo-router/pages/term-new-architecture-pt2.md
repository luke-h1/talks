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

<!--
The new architecture (called fabric) is really simple. The react native team grabbed the bridge and ripped it out. So now instead of having to pass around json messages, deal with async vs sync threads, we can call the native code directly from c++ function. This means JS and native threads can be insync with each other and allows them both to share memory
-->

<div style="display: flex; justify-content: center; align-items: center; width: 100%;">
  <img src="/assets/new-arch.png" alt="Fabric" style="width: 70%; height: auto; object-fit: contain;" />
</div>
