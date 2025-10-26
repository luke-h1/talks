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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Stack support</span> 
</div>

````md magic-move {lines: true}
```tsx
export type AppStackParamList = {
  Tabs: NavigatorScreenParams<TabParamList>;
  Author: { id: string };
  Article: { id: string };
};
```

```tsx
export type AppStackParamList = {
  Tabs: NavigatorScreenParams<TabParamList>;
  Author: { id: string };
  Article: { id: string };
};

export type AppStackScreenProps<T extends keyof AppStackParamList> =
  StackScreenProps<AppStackParamList, T>;
```

```tsx
export function ArticleScreen({
  route,
}: {
  route: { params: { id: string } };
}) {
  return (
    <View>
      <Text>Article: {route.params.id}</Text>
    </View>
  );
}
```

```tsx
export function AuthorScreen({ route }: AppStackScreenProps<"Author">) {
  return (
    <View>
      <Text>Author: {route.params.id}</Text>
    </View>
  );
}
```

```tsx
const AppStack = () => {
  return (
    <Stack.Navigator
      initialRouteName="Tabs"
      screenOptions={{
        headerShown: false,
      }}
    >
      {/* Tab stack */}
      <Stack.Screen name="Tabs" component={TabNavigator} />

      {/* Author screen */}
      <Stack.Screen name="Author" component={AuthorScreen} />

      {/* Article screen */}
      <Stack.Screen name="Article" component={ArticleScreen} />
    </Stack.Navigator>
  );
};
```

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

```tsx
export const AppNavigator = (props: NavigationProps) => {
  return (
    <NavigationContainer
      theme={"dark"}
      linking={linking}
      {...props}
      onReady={() => {
        SplashScreen.hideAsync();
      }}
    >
      <View style={styles.container}>
        <AppStack />
      </View>
    </NavigationContainer>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});
```

```tsx
export default function App() {
  return <AppNavigator />;
}
```
````

<!--
Much like the tab param list, we need to create a stack param list. This lists all the available stacks and screens that can be navigation to in our app. This type allows TypeScript to know what routes are defined in this navigator as
 * well as what properties (if any) they might take when navigating to them. So for our example we know our author and article screens need to be passed an id param to fetch the author or the article. Next we need to create a helper type to get the stack props for a given screen. Now we can create our stack navigator component. We're going to call it AppStack and it will contain the tab stack, the author screen and the article screen. You might be asking yourself, why are our screens not just in the tab stack? Well, because we want to be able to navigate to the author screen from the article screen, and the article screen from the home screen. They need to be globally accessible within the app. Finally we need to create a linking configuration for our app. This is used to handle deep linking and navigation to our app from other apps or websites. Finally we need to create the app navigator component which will contain the app stack and the linking configuration as well as some styling. Finally we can register our navigation component as the root component of our app.
-->
