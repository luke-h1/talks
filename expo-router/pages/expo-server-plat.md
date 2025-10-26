---
transition: fade
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :leave="{ x: 1000 }"
  style="font-size: 4rem; font-weight: 800; display: inline-block; line-height: 1.2;"
>
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Server tri-fecta</span>
</div>

<div style="width: 100%; max-width: 1200px; margin: 2rem auto; padding: 1rem; overflow: hidden;">
  <div style="display: flex; justify-content: center; align-items: center; width: 100%; height: 400px;">
    <img src="/assets/expo-server-plat.png" alt="Server tri-fecta" style="max-width: 100%; max-height: 100%; object-fit: contain;" />
  </div>
</div>

<!--
This isn't an official term, but this is what I think of when someone mentions the expo server platform. You have the main pillar - the framework support itself. Which enables us to actually use all of these server capabilities. And then you have EAS hosting - which is a super easy way to deploy these server capabilities. For the applications I built for this talk, I used EAS hosting and it took like 30 seconds to deploy them. But having said that, if you work for a company it's very likely you're either using azure or AWS. And that's where build adapters come in. These adapters basically build the server in a way that can be deployed to your own infrastructure. Expo currently support 6 adapters - netlify, vercel, cloudflare and finally cloud agnostic options: http, express.js and bun. What I really like about this is you're not locked into using a single hosting provider. You can use the one that best suits your needs.
-->
