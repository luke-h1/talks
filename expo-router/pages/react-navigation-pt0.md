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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Building apps</span> 
</div>

<!--
Now that we know about all the terminology, let's dive into building some apps. I've split this up into two parts. The first part will be building a simple app using React Navigation and the second part will be building a simple app using Expo Router. And then we'll compare the two to see how they differ, the positives and negatives of each approach.
-->
