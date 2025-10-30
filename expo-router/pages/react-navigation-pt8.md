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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">App done!?</span> 
</div>

<div style="display: flex; align-items: flex-start; justify-content: center; gap: 3rem; margin-top: 2rem;">
  <div style="display: flex; flex-direction: column; align-items: center;">
    <video v-motion :initial="{ opacity: 0, y: 100 }" :enter="{ opacity: 1, y: 0, transition: { delay: 300, duration: 600 } }" src="/assets/app-blog-done.mov" class="rounded-lg shadow-xl" style="width: 300px; height: 400px; object-fit: contain;" autoplay loop muted playsinline></video>
  </div>

  <div style="text-align: left;">
    <p style="font-size: 1.2rem; font-weight: 600; margin-bottom: 1rem; color: #60a5fa;">Requirements:</p>
    <ul style="list-style-type: none; padding-left: 0; font-size: 1rem; line-height: 1.8;">
      <li v-click style="margin-bottom: 0.5rem;">✅ TypeScript support with typed navigation</li>
      <li v-click style="margin-bottom: 0.5rem;">✅ Tab navigator (Home & Authors screens)</li>
      <li v-click style="margin-bottom: 0.5rem;">✅ Stack navigator (Article & Author detail screens)</li>
      <li v-click style="margin-bottom: 0.5rem;">✅ List of Blog posts </li>
      <li v-click style="margin-bottom: 0.5rem;">❌ Web support</li>
    </ul>
  </div>
</div>

<!--
That's it, we've created our app. We've got typescript support, a tab & stack navigator, a list of blog posts and a detail screen for each blog post. Web support - no.
-->
