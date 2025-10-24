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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">The Bridge</span> 
  <span style="font-size: 2rem; margin-left: 1rem;">🐌</span>
</div>

<div style="display: grid; grid-template-columns: 1fr auto 1fr; gap: 3rem; align-items: start; justify-items: center; margin-top: 3rem; padding: 0 2rem;">
  
  <!-- Left: JavaScript -->
  <div style="text-align: center;">
    <img src="/assets/js.webp" alt="JavaScript Thread" style="width: 180px; height: auto; object-fit: contain;" />
    <div style="font-weight: 700; margin-top: 1rem; font-size: 1.3rem; color: rgb(96, 165, 250);">JavaScript</div>
    <div 
      v-click="1"
      style="margin-top: 1.5rem; background: rgba(96, 165, 250, 0.15); border: 2px solid rgb(96, 165, 250); border-radius: 8px; padding: 0.75rem; font-family: monospace; font-size: 0.85rem;"
    >
      {"action": "fetch"}
    </div>
    <div 
      v-click="1"
      style="margin-top: 0.5rem; font-size: 0.9rem; color: rgb(148, 163, 184); font-style: italic;"
    >
      Sending message →
    </div>
  </div>

  <!-- Center: Arrows -->
  <div style="display: flex; flex-direction: column; align-items: center; gap: 4rem; padding-top: 6rem;">
    <span 
      v-click="1"
      style="font-size: 3.5rem; color: rgb(96, 165, 250); transition: all 0.3s ease-in-out;"
    >→</span>
    <div style="display: flex; flex-direction: column; align-items: center; gap: 0.5rem;">
      <div style="font-size: 4rem; margin: -2rem 0;">🌉</div>
      <div 
        v-click="2"
        style="font-size: 1rem; color: rgb(192, 132, 252); font-style: italic; font-weight: 600; white-space: nowrap;"
      >
        ⚙️ Parsing JSON...
      </div>
    </div>
    <span 
      v-click="3"
      style="font-size: 3.5rem; color: rgb(251, 146, 188); transition: all 0.3s ease-in-out;"
    >←</span>
  </div>

  <!-- Right: Native -->
  <div style="text-align: center;">
    <img src="/assets/kotlin.png" alt="Native Thread" style="width: 180px; height: auto; object-fit: contain;" />
    <div style="font-weight: 700; margin-top: 1rem; font-size: 1.3rem; color: rgb(251, 146, 188);">Native (Kotlin/Swift)</div>
    <div 
      v-click="3"
      style="margin-top: 1.5rem; background: rgba(251, 146, 188, 0.15); border: 2px solid rgb(251, 146, 188); border-radius: 8px; padding: 0.75rem; font-family: monospace; font-size: 0.85rem;"
    >
      {"data": [...]}
    </div>
    <div 
      v-click="3"
      style="margin-top: 0.5rem; font-size: 0.9rem; color: rgb(148, 163, 184); font-style: italic;"
    >
      ← Sending response
    </div>
  </div>

</div>

<style scoped>
[v-click] {
  transition: all 0.3s ease-in-out;
}
</style>

<!--
And in the old architecture, this is done via a bridge. The bridge is responsible for facilitating the communication between the JS thread and the native thread. The bridge is responsible for marshalling and unmarshaling the data between the two threads.
How it works is that the JS thread will send a message to the native thread and the native thread will parse the message and execute the corresponding native code. The native thread will then send a response back to the JS thread. So it's bidirectional communication
-->
