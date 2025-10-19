---
theme: geist
titleTemplate: "%s - Expo Router"
fonts:
  sans: Robot
  serif: Robot Slab
  mono: Fira Code
css: unocss

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
src: ./pages/navigation.md
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
src: ./pages/react-navigation-pt8.md
---

---
src: ./pages/react-navigation-pt9.md
---

<!--
terminonology:
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
