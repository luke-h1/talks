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
  <span>
    Conclusion
  </span>
</div>

<div v-click="1">

<div class="grid grid-cols-2 gap-8 mt-8 text-left">
<div class="p-6 bg-blue-600/20 border border-blue-400/30 rounded-lg">

### React Navigation

- ✅ Battle-tested & mature
- ✅ Wide ecosystem support
- ✅ Fine to use if you want max control and are only building native apps

</div>

<div class="p-6 bg-purple-600/20 border border-purple-400/30 rounded-lg" v-click="2">

### Expo Router

- ✅ File-based routing
- ✅ Web-first approach
- ⚠️ Newer, still maturing but getting better with each release

</div>

</div>

</div>

<!--
So to wrap up - both React Navigation and Expo Router are excellent choices. React Navigation gives you battle-tested reliability and is perfect if you need maximum flexibility. Expo Router brings modern file-based routing, server-side rendering, and excellent web support, so it makes it easier to onboard web devs to a native codebase

The great news is that Expo Router is built on React Navigation, so you're not really choosing between competing technologies - you're choosing your level of abstraction.
-->
