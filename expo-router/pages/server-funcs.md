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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Server functions</span>
</div>

<div style="display: grid; grid-template-columns: 1fr auto 1fr; gap: 3rem; align-items: start; justify-items: center; margin-top: 3rem; padding: 0 2rem;">
  
  <!-- Left: JavaScript Client -->
  <div style="text-align: center;">
    <img src="/assets/js.webp" alt="JavaScript Client" style="width: 180px; height: auto; object-fit: contain;" />
    <div style="font-weight: 700; margin-top: 1rem; font-size: 1.3rem; color: rgb(96, 165, 250);">Client</div>
    <div 
      v-click="1"
      style="margin-top: 1.5rem; background: rgba(96, 165, 250, 0.15); border: 2px solid rgb(96, 165, 250); border-radius: 8px; padding: 0.75rem; font-family: monospace; font-size: 0.85rem;"
    >
      getPopularMovies({ type: "movie", time_window: "week" })
    </div>
    <div 
      v-click="1"
      style="margin-top: 0.5rem; font-size: 0.9rem; color: rgb(148, 163, 184); font-style: italic;"
    >
      Calling server →
    </div>
  </div>

  <!-- Center: Arrows -->
  <div style="display: flex; flex-direction: column; align-items: center; gap: 4rem; padding-top: 6rem;">
    <span 
      v-click="1"
      style="font-size: 3.5rem; color: rgb(96, 165, 250); transition: all 0.3s ease-in-out;"
    >→</span>
    <div style="display: flex; flex-direction: column; align-items: center; gap: 0.5rem;">
      <div style="font-size: 4rem; margin: -2rem 0;">🔐</div>
      <div 
        v-click="2"
        style="font-size: 1rem; color: rgb(192, 132, 252); font-style: italic; font-weight: 600; white-space: nowrap;"
      >
        ⚙️ Processing...
      </div>
    </div>
    <span 
      v-click="3"
      style="font-size: 3.5rem; color: rgb(251, 146, 188); transition: all 0.3s ease-in-out;"
    >←</span>
  </div>

  <!-- Right: Server -->
  <div style="text-align: center;">
    <img src="/assets/node.webp" alt="Server" style="width: 180px; height: auto; object-fit: contain;
    " />
    <div style="font-weight: 700; margin-top: 1rem; font-size: 1.3rem; color: rgb(251, 146, 188);">Server</div>
    <div 
      v-click="3"
      style="margin-top: 1.5rem; background: rgba(251, 146, 188, 0.15); border: 2px solid rgb(251, 146, 188); border-radius: 8px; padding: 0.75rem; font-family: monospace; font-size: 0.85rem;"
    >
      { "native UI": "..." }
    </div>
    <div 
      v-click="3"
      style="margin-top: 0.5rem; font-size: 0.9rem; color: rgb(148, 163, 184); font-style: italic;"
    >
      ← Returning result
    </div>
  </div>

</div>

<style scoped>
[v-click] {
  transition: all 0.3s ease-in-out;
}
</style>

<!--
So to achieve that, we'll be using server functions. Server functions are basically a way for client components to call async functions on the server. They're useful for things like protecting secrets, keeping business logic closed and rendering UI on the server
-->
