---
transition: fade
layout: full
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :leave="{ x: 1000 }"
  style="font-size: 4rem; font-weight: 800; padding: 0.5rem; display: inline-block; line-height: 1.2;"
>
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">custom SSR woes</span> 
</div>

<div style="margin-top: 2rem; font-size: 1.5rem;">
  <ul>
    <li v-click>* Here by dragons 🐉</li>
    <li v-click>* Cache invalidation 🗄️</li>
    <li v-click>* Skew protection 🛡️</li>
    <li v-click>* Does it scale??? 📈</li>
    <li v-click>* Hosting ☁️</li>
  </ul>
</div>

<!--
Now that's a perfectly valid solution to achieve SSR with react navigation and it works quite well. BlueSky and the NFL do this pattern and it works really well for them. But it does come with its own set of challenges.
It's your own beast to tame, you're going off the beaten track. If we start to think about it more deeply and how SSR works under the hood, it's a lot of work. Cache invalidation, skew protection, ensuring our custom code scales with traffic, coming up with our own infrastructure to properly host the server correctly. Now these challenges aren't unique to react navigation, but the main point is there's not much documentation on how to do it properly, whereas if we use a framework that just does this out of the box, it's all handled for us.
-->
