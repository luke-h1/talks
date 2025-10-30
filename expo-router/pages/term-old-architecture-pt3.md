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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Old Arch issues</span> 
  <span style="font-size: 2rem; margin-left: 1rem;">🐌</span>
</div>

<div style="margin-top: 3rem; font-size: 1.4rem; line-height: 2;">
  <ul style="list-style-type: none; padding: 0;">
    <li v-click style="margin-bottom: 1rem;">
      🌉 <strong>Bridge Bottleneck:</strong> All communication must go through the bridge
    </li>
    <li v-click style="margin-bottom: 1rem;">
      📦 <strong>JSON Serialization:</strong> Data must be serialized/deserialized constantly
    </li>
    <li v-click style="margin-bottom: 1rem;">
      ⏳ <strong>Asynchronous Nature:</strong> Everything is async, causing delays with the synchronous nature of the native thread
    </li>
    <li v-click style="margin-bottom: 1rem;">
      🔍 <strong>Hard to Debug:</strong> Difficult to trace issues across the bridge
    </li>
  </ul>
</div>

<!--
The old architecture has a few issues that make it less than ideal.

The first issue is that all communication must go through the bridge. This is a bottleneck because it adds latency to the communication between the JS thread and the native thread.

The second issue is that the data must be serialized/deserialized constantly. Unmarshalling and marshalling data is expensive

The third issue is that everything is async. You might think this is a good thing, but it's not. What do we have to do with async code? We have to wait for it to complete. And if messages were sent too late 
it could be missed by the js microtask queue and result in FPS drop and UI jank. It was also very difficult to debug issues across the bridge, not only for library authors but for consumers too
-->
