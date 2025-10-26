---
transition: fade
layout: two-cols
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :leave="{ x: 1000 }"
  style="font-size: 4rem; font-weight: 800; padding: 0.5rem; display: inline-block; line-height: 1.2;"
>
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">AI</span>
</div>

<!--
Now I don't know about you, but I find it pretty boring that our cool AI assistant just streams down markdown. Since it's halloween tomorrow, I want to know what horror movies are playing in sheffield. Chat GPT was pretty disappointing, it just streamed back markdown. Perplexity did a bit better, they display the movie poster as well as a description of the movie which is a bit better but it's still not very engaging right? Well now that we can use server functions, let's build something better
-->

<div style="display: flex; flex-direction: row; gap: 2rem; align-items: center;">

<img src='/assets/chat-gpt.webp' alt="ChatGPT" style="width: 400px; height: 400px; object-fit: contain;" />

<v-click>
<video v-motion :initial="{ opacity: 0, y: 100 }" :enter="{ opacity: 1, y: 0, transition: { delay: 300, duration: 600 } }" src="/assets/perplexity.mov" alt="AI horror movies" 
 autoplay loop muted playsinline
 style="width: 300px; height: 400px; object-fit: contain;"
/>
</v-click>
</div>
