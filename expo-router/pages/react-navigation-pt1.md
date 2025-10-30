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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">React Navigation</span> 
</div>

<div style="display: flex; justify-content: center; align-items: center; gap: 1rem; width: 100%;">
  <img src="/assets/bsky.webp" alt="BlueSky" style="max-width: 250px; max-height: 450px; object-fit: contain;" />
  <img src="/assets/nfl.webp" alt="NFL" style="max-width: 250px; max-height: 450px; object-fit: contain;" />
  <img src="/assets/coinbase.webp" alt="Coinbase" style="max-width: 250px; max-height: 450px; object-fit: contain;" />
</div>

<!--
We're going to be using React Navigation for our first app & its one of the most popular and oldest ways of handling routing in React Native. It's used by apps
  such as BlueSky, NFL, CoinBase etc. And these companies also use it for their web apps. They use react native-web along with
  react navigation to build a unified experience across all platforms. It's a very mature library and coincidentally expo-router uses it under the hood.
-->
