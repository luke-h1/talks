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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Nav Utilities</span> 
</div>

<!--
The navigation utilities file is the glue that holds your React Navigation setup together. It's about 200 lines of code that handles everything from Android back button behavior to navigation persistence and type-safe navigation helpers.
-->

<div style="margin-top: 2rem; font-size: 1.1rem; line-height: 1.8;">
  <div v-click style="margin-top: 2rem;">
    <p style="margin-bottom: 1rem;">Source code: github.com/luke-h1/react-navigation-expo-blog/blob/main/src/navigationUtilities.ts</p>
  </div>
  <div v-click style="margin-bottom: 1.5rem;">
    <span style="color: #60a5fa; font-weight: 600;">🔗 navigationRef</span>
    <span style="margin-left: 1rem;">- Reference to access navigation from anywhere</span>
  </div>
  
  <div v-click style="margin-bottom: 1.5rem;">
    <span style="color: #c084fc; font-weight: 600;">📍 getActiveRouteName()</span>
    <span style="margin-left: 1rem;">- Recursively finds current active route</span>
  </div>
  
  <div v-click style="margin-bottom: 1.5rem;">
    <span style="color: #fb92bc; font-weight: 600;">⬅️ useBackButtonHandler()</span>
    <span style="margin-left: 1rem;">- Android back button logic & exit control</span>
  </div>
  
  
  <div v-click style="margin-bottom: 1.5rem;">
    <span style="color: #c084fc; font-weight: 600;">🚀 Helper functions</span>
    <span style="margin-left: 1rem;">- navigate(), goBack(), resetRoot()</span>
  </div>

  <div v-click style="margin-top: 2rem; padding: 1rem; background: rgba(96, 165, 250, 0.1); border-radius: 0.5rem; border-left: 4px solid #60a5fa;">
    <span style="font-weight: 600;">In Expo Router:</span> All of this is handled automatically! ✨
  </div>

</div>

<div style="margin-top: 2rem; display: flex; flex-direction: column; align-items: center; gap: 2rem;">
  <div style="display: flex; flex-direction: column; align-items: center;">
    <div style="max-width: 20%; max-height: 300px; overflow: hidden; display: flex; justify-content: center; align-items: center;">
      <img src='/assets/nav-util-src.jpg' alt='Navigation Utilities Source Code' style='max-width: 100%; max-height: 600px; object-fit: contain;' />
    </div>
  </div>
</div>

<!--
We need some nav utils to create some utilities that pretty much every app needs. First one is navigationRef. We need to create a global ref to the nav object just to make it easier to access the navigation object from anywhere in the app. Second we need getActiveRouteName. This recursively finds the current active route name (such as when we're in a nested navigation stack). Third we need useBackButtonHandler. This is the android back button logic and exit control. Fourth we need helper functions. This is the navigate, goBack, resetRoot functions. These are built into react-navigation but they're not typed very well, hence the need to create our own
-->
