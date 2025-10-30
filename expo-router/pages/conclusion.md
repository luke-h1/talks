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
- ✅ Flexible and powerful
- ⚠️ Requires boilerplate
- ⚠️ Client-side only out of the box

</div>

<div class="p-6 bg-purple-600/20 border border-purple-400/30 rounded-lg">

### Expo Router

- ✅ File-based routing
- ✅ Server-side rendering
- ✅ Built on React Navigation
- ✅ Web-first approach
- ⚠️ Newer, still maturing but getting better with each release

</div>

</div>

</div>

<div v-click="2" class="mt-12">

## Which Should You Choose?

**React Navigation**: When you need maximum control and flexibility  
**Expo Router**: When you want modern primitives and web parity

</div>

<div v-click="3" class="mt-8 text-2xl font-semibold">

🚀 The future of React Native navigation is bright!

</div>

<!--
So to wrap up - both React Navigation and Expo Router are excellent choices. React Navigation gives you battle-tested reliability and is perfect if you need maximum flexibility. Expo Router brings modern file-based routing, server-side rendering, and excellent web support.

The great news is that Expo Router is built on React Navigation, so you're not really choosing between competing technologies - you're choosing your level of abstraction.

For new projects, especially those targeting web, Expo Router is increasingly becoming the go-to choice. For existing apps or when you need specific customization, React Navigation remains solid.
-->
