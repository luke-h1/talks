---
transition: fade
layout: center
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :click-3="{ x: 80 }"
  :leave="{ x: 1000 }"
  style="font-size: 4rem; font-weight: 800; padding: 0.5rem; display: inline-block; line-height: 1.2;"
>
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">React Navigation Woes</span> 😧
</div>

<div style="margin-top: 2rem; font-size: 1.5rem;">
  <ul>
    <li v-click>😵‍💫 Boilerplate, boilerplate, boilerplate</li>
    <li v-click>🤧 Upgrades can be tricky</li>
    <li v-click>🔗 Deep linking requires manual configuration</li>
    <li v-click>🤒 Website support is limited & tricky</li>
    <li v-click>👀 Expo router...</li>
  </ul>
</div>

<!--
We've just created a lot of boilerplate to just get our navigation working. Anytime we want to add new screens, we need to add to this boilerplate. This makes upgrading a lot of work, as you might have to rewrite some of the helpers or types to work with the latest version of react navigation. Deep linking, requires manual configuration and handling, meaning you'll need to test it very well. Web support is quite tricky. React navigation mainly supports CSR, so if you want SSR or SSG capabilities, it's up to you to build your own server to handle that. It's not impossible, but it's extra work. Expo router is pushing ahead of react-navigation. The expo router team took react navigation as far as they could push it, but now they're building their own stuff that is exclusive to expo-router. So we're kind of left out in the cold.
-->
