---
transition: fade
layout: center
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :click-3="{ x: 80 }"
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

The second issue is that the data must be serialized/deserialized constantly. This is a performance issue because it adds overhead to the communication between the JS thread and the native thread.

The third issue is that everything is async. This is a performance issue because it adds latency to the communication between the JS thread and the native thread. Meaning it can result in skipped frames and UI jank.
-->
