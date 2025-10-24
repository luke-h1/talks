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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Expo Router</span> 
</div>

<div style="margin-top: 2rem; margin-left: 2rem; font-family: monospace; font-size: 1.2rem; line-height: 2;">
  <div  style="margin-left: 0; color: rgb(96, 165, 250); font-weight: 600;">
    📁 app/
  </div>
  
  <div  style="margin-left: 2rem; color: rgb(192, 132, 252);">
    📄 index.tsx <v-click><span style="color: rgb(148, 163, 184); font-size: 0.9rem; margin-left: 1rem;">→ / (home route)</span></v-click>
  </div>
  
  <div  style="margin-left: 2rem; color: rgb(192, 132, 252);">
    📄 home.tsx <v-click><span style="color: rgb(148, 163, 184); font-size: 0.9rem; margin-left: 1rem;">→ /home</span></v-click>
  </div>
  
  <div  style="margin-left: 2rem; color: rgb(251, 146, 188);">
    📄 _layout.tsx <v-click><span style="color: rgb(148, 163, 184); font-size: 0.9rem; margin-left: 1rem;">→ Layout wrapper</span></v-click>
  </div>
  
  <div  style="margin-left: 2rem; color: rgb(96, 165, 250); font-weight: 600;">
    📁 profile/
  </div>
  
  <div  style="margin-left: 4rem; color: rgb(192, 132, 252);">
    📄 friends.tsx <v-click><span style="color: rgb(148, 163, 184); font-size: 0.9rem; margin-left: 1rem;">→ /profile/friends</span></v-click>
  </div>

  <div  style="margin-left: 4rem; color: rgb(192, 132, 252);">
    📄 events.tsx <v-click><span style="color: rgb(148, 163, 184); font-size: 0.9rem; margin-left: 1rem;">→ /profile/events</span></v-click>
  </div>
  <div  style="margin-left: 4rem; color: rgb(192, 132, 252);">
    📄 _layout.tsx <v-click><span style="color: rgb(148, 163, 184); font-size: 0.9rem; margin-left: 1rem;">→ profile layout</span></v-click>
  </div>
</div>

::right::

<div style="margin-top: 12rem; font-family: monospace; font-size: 1.2rem; line-height: 2;" v-click>

  <div class="mt-4 flex items-center gap-4">
      <logos-chrome class="w-8 h-8 flex-shrink-0" />
      <span class="text-2xl">/profile/events</span>
    </div>

  <div class="mt-4 flex items-center gap-4">
      <span class="w-8 h-8 flex items-center justify-center text-2xl">📱</span>
      <span class="text-2xl">myapp://profile/events</span>
    </div>

</div>

<!--
Routes are defined as files within a special folder called `app`, allowing you to seamlessly use the file system as the source of truth for your routing needs. For example, the file structure above would correspond to the following routes:

* /
* /home
* /profile/friends

This feels a lot like a web router right? These routes adhere to the same syntax as a web URL would, which thinking about web and supporting it a lot easier.
-->
