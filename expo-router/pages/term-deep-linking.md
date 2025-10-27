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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Deep Linking</span> 
</div>

<div class="grid grid-cols-2 gap-6 items-start">
<img src="/assets/airbnb-deeplink.png" alt="Deep Linking" class="w-full" v-click />

````md magic-move {lines: true}
```
airbnb://article/123
```

```tsx
// app.config.ts
const appConfig: ExpoConfig = {
  expo: {
    scheme: "myapp",
    android: {
      intentFilters: [
        {
          action: "VIEW",
          data: [
            {
              scheme: "https",
              host: "*.example.com",
            },
          ],
          category: ["BROWSABLE", "DEFAULT"],
        },
      ],
    },
    ios: {
      associatedDomains: ["applinks:*.example.com"],
    },
  },
};
```

```

```
````

</div>

<!--
Deep linking is a way to open your app from a specific link. It instructs your app what screen to open from a given link. The link typically looks something like this. In mobile web this is quite a popular pattern as well. You often have links like this promoting you to use the app instead of your browser. With expo and expo router, deep linking is a breeze. We just configure deep linking in the app.config.ts file and we're good to go. So when you visit a link with the url example.com, we can configure the app to open a certain screen if the user has the app installed
-->
