---
theme: geist
titleTemplate: "%s - Expo Router"
fonts:
  sans: Robot
  serif: Robot Slab
  mono: Fira Code
css: unocss
stylesheets:
  - ./style.css

info: |
  ## Expo Router

class: text-center
author: Luke Howsam
download: true
drawings:
  persist: false
transition: slide-left
mdc: true
src: ./pages/start.md
---

<!--
TODO:
add TOC,
add deep-linking terminology
add server driven ui terminology
add conclusion slide
replace tweet screenshot with tweet comp
Add client side representation of react-navigation (screenshot) ✅
talk about how its dificult to deploy your own SSR server ✅
-->

<!-- make it display presenter notes full screen instead of just on the right -->
<style>
.slidev-presenter .grid-container {
  grid-template-areas:
    "top top top"
    "note note main"
    "note note next"
    "bottom bottom bottom" !important;
}
</style>

---
src: ./pages/intro.md
---

---
src: ./pages/intro-p2.md
---

---
src: ./pages/house-keeping.md
---

---
src: ./pages/resources.md
---

---
src: ./pages/terminology.md
---

---
src: ./pages/term-tab-navigation.md
---

---
src: ./pages/term-stack-navigation.md
---

---
src: ./pages/term-stack-navigation-2.md
---

---
src: ./pages/term-new-architecture.md
---

---
src: ./pages/term-old-architecture.md
---

---
src: ./pages/term-old-architecture-pt2.md
---

---
src: ./pages/term-old-architecture-pt3.md
---

---
src: ./pages/term-new-architecture-pt2.md
---

---
src: ./pages/term-new-architecture-pt-3.md
---

---
src: ./pages/react-navigation-pt0.md
---

---
src: ./pages/bk-mention.md
---

---
src: ./pages/react-navigation-pt1.md
---

---
src: ./pages/react-navigation-pt-2.md
---

---
src: ./pages/react-navigation-pt3.md
---

---
src: ./pages/react-navigation-pt4.md
---

---
src: ./pages/react-navigation-pt5.md
---

---
src: ./pages/react-navigation-pt6.md
---

---
src: ./pages/react-navigation-pt-7.md
---

---
src: ./pages/react-navigation-web.md
---

---
src: ./pages/react-navigation-web-pt2.md
---

---
src: ./pages/react-navigation-web-pt3.md
---

---
src: ./pages/react-navigation-web-pt4.md
---

---
src: ./pages/react-navigation-pt8.md
---

---
src: ./pages/react-navigation-pt9.md
---

---
src: ./pages/expo-router.md
---

---
src: ./pages/expo-router-pt2.md
---

---
src: ./pages/expo-router-pt3.md
---

---
src: ./pages/expo-router-pt4.md
---

---
src: ./pages/expo-router-pt5.md
---

---
src: ./pages/expo-router-pt6.md
---

---
src: ./pages/expo-router-pt7.md
---

---
src: ./pages/expo-router-pt8.md
---

---
src: ./pages/expo-router-pt9.md
---

---
src: ./pages/expo-router-pt10.md
---

---
src: ./pages/expo-server-plat.md
---

---
src: ./pages/expo-router-pt11.md
---

---
src: ./pages/expo-router-pt12.md
---

---
src: ./pages/expo-router-pt13.md
---

---
src: ./pages/expo-router-pt14.md
---

---
src: ./pages/expo-router-pt15.md
---

---
src: ./pages/expo-router-pt16.md
---

---
src: ./pages/expo-router-pt17.md
---

---
src: ./pages/expo-router-pt18.md
---

---
src: ./pages/expo-router-pt19.md
---

---
src: ./pages/expo-router-pt20.md
---

---
src: ./pages/expo-router-pt21.md
---

---
src: ./pages/expo-router-pt22.md
---

<!--
terminology:
  Stack + Tab Navigation
  react-native-screens
  new architecture
-->

<!--
two libraries for navigation in react-native
react-navigation and expo router
you're in good company - bluesky + minstral.ai
-->

<!--
 ven diagram of developers liking file-based vs traditional navigation
 -->

 <!-- 
  React navigation:
    * "old school"

    pros:
    * lots of rn apps use it
    * solid API and very mature
    * Libraries rely on it - expo-router
    * good integration with react-native-screens
    * structure of how react navigation works and how it integrates with react-native-screens

    cons:
    * requires boilerplate 
    * users get boilerplate wrong a lot
    * limited to the react-navigation library
    * client-side only primitives - you have to setup custom infra to do server-side rendering
    * 
-->

<!--
expo router

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

---
src: ./pages/navigation.md
---

---
src: ./pages/code.md
---

---
src: ./pages/components.md
---

---
src: ./pages/themes.md
---

---
src: ./pages/animations.md
---

---
src: ./pages/advanced.md
---

---
src: ./pages/imported-slides.md
---

---
layout: center
class: text-center
---

# Learn More

[Documentation](https://sli.dev) · [GitHub](https://github.com/slidevjs/slidev) · [Showcases](https://sli.dev/resources/showcases)

<PoweredBySlidev mt-10 />
