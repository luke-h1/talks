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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Expo Router</span> 
</div>

````md magic-move {lines: true}
```tsx
import { Link } from "expo-router";

export default function HomeScreen() {
  return <Link href="/conf">Frontend North 2026? 👀</Link>;
}
```

```tsx
import { useRouter } from "expo-router";

export default function MyAwesomeScreen() {
  const router = useRouter();

  return <Button title="Go to About" onPress={() => router.push("/conf")} />;
}
```

```tsx
// screen name -> /app/post/[id].tsx

import { useLocalSearchParams } from "expo-router";

export default function PostScreen() {
  const { id } = useLocalSearchParams<{ id: string }>();
  return <Text>You're on the post with id: {id} screen! 😎</Text>;
}
```
````

<!--
It uses very familiar web APIs to handle routing needs such as link and href to handle navigation between screens. It also has a router hook to access things like the current route, pushing to new routes. If you've used Next.js or even just react-router, this should feel very familiar. My understanding is that the expo-router team took a lot of inspiration from how web frameworks built their routing tooling and applied that to expo router. Finally we also have a handy hook called useLocalSearchParams to access any dynamic route params we might want to access.
-->
