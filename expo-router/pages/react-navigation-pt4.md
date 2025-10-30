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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">TypeScript support</span> 
</div>

````md magic-move {lines: true}
```tsx
// App.tsx - Untyped React Navigation Stack
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import HomeScreen from "./screens/HomeScreen";
import BlogPostScreen from "./screens/BlogPostScreen";
import AuthorScreen from "./screens/AuthorScreen";

const Stack = createNativeStackNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name="Home" component={HomeScreen} />
        <Stack.Screen name="BlogPost" component={BlogPostScreen} />
        <Stack.Screen name="Author" component={AuthorScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
```

```tsx
// screens/HomeScreen.tsx - No type safety
import { useNavigation } from '@react-navigation/native';

export default function HomeScreen() {
  const navigation = useNavigation();

  const handlePress = (postId: string) => {
    // ❌ No autocomplete for route names
    // ❌ No type checking for params
    // ❌ Typos won't be caught
    navigation.navigate('BlogPost', {
      id: postId,
      // Could pass wrong params and TS won't catch it
    });
  };

  return (
    // ... your UI
  );
}
```

```tsx
// screens/BlogPostScreen.tsx - No type safety for params
import { useRoute } from '@react-navigation/native';

export default function BlogPostScreen() {
  const route = useRoute();

  // ❌ params is typed as 'any' or 'object | undefined'
  // ❌ No autocomplete for param names
  // ❌ Could access non-existent params without errors
  const postId = route.params?.id; // Type: any

  return (
    // ... your UI
  );
}
```
````

<!--
TypeScript support doesn't come out of the box with React Navigation. What I mean by that is no typescript inference happens when you create a new screen or stack or use the routing hooks to navigate between screens. You have to manually add types to your code to register your screens and routes.
-->
