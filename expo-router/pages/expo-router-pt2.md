---
transition: fade
layout: center
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :leave="{ x: 1000 }"
  style="font-size: 4rem; font-weight: 800; padding: 0.5rem; display: inline-block; line-height: 1.2;"
>
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Expo Router</span> 
</div>

<!--
  Expo router is a file based routing framework. It's compatible with Android, IOS, Web, TVos for apple, and even Vega OS which is Amazon's new linux based TV OS
 -->

<div style="display: flex; flex-direction: row; gap: 1rem; align-items: center;">
  <div class="i-logos-android-icon w-25 h-25" v-click />
  <img src='/assets/apple-logo.png' alt='apple logo' style='width: 100px; height: 100px;' v-click />
  <div class="i-logos-chrome w-25 h-25" v-click />
  <img src='/assets/tv-os-logo.png' alt='apple tv os logo' style='width: 100px; height: 100px;' v-click />
  <img src='/assets/vegas-os.png' alt='vegas tv os logo' style='width: 100px; height: 100px;' v-click />
</div>

<!--
what is expo router?
 benefits 
 expo-web
 dom components
 file-based navigation
 listen to following talks to get ideas in order:
  * https://www.youtube.com/watch?v=GKQ_0VfYweg
  * https://www.youtube.com/watch?v=djhEgxQf3Kw
  * https://www.youtube.com/watch?v=hub__0Gbr6E
 server-side rendering
 static site generation
 react server functions
 react suspense boundaries

  pros:
  * new kid on the block
  * file-based navigation
  * uses react navigation + react-native-screens under hood
  * feels like using a web router - link, href, router.push
  * "simpler" API
  * solid support from expo
  * supper server-side rendering *soon*
  * support SSG
  * excellent support for web (ssg, spa, ssr soon,)
  * react server functions
  * they've fully implemented everything react-navigation does, plus more - they're going beyond it 

  cons:
  * not as mature as react-navigation
  * not as many libraries rely on it
  * not as many apps use it
  * some bugs?

takeaway:
  * next releases will become more mature
-->
