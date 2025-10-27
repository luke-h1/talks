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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Deep Linking Support</span> 
</div>

```tsx
/**
 * Deep linking config
 */

import type { LinkingOptions } from "@react-navigation/native";

const linking = {
  prefixes: [
    Linking.createURL("/"),
    "yourappscheme://",
    "https://yourdomain.com",
  ],
  config: {
    screens: {
      Tabs: {
        path: "",
        screens: {
          Home: "",
          Authors: "authors",
        },
      },
      Author: "author/:id",
      Article: "article/:id",
    },
  },
} satisfies LinkingOptions<AppStackParamList>;
```

<!--
Finally we need to create a linking configuration for our app. This is used to handle deep linking and navigation to our app when its linked to from websites or other apps. We need to update this anytime we adda new screen
-->
