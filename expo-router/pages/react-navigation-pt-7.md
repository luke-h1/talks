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

```tsx {2|3-4|7-8}
export type AppStackParamList = {
  Tabs: NavigatorScreenParams<TabParamList>;
  Author: { id: string };
  Article: { id: string };
};

export type AppStackScreenProps<T extends keyof AppStackParamList> =
  StackScreenProps<AppStackParamList, T>;
```

```tsx
export function AuthorScreen({ route }: AppStackScreenProps<"Author">) {
  // ^ { route: { params: { id: string } } }
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
````

<!--
Much like the tab param list, we need to create a stack param list. This lists all the available screens that our app can route to. 

* First we need to register our tab with the navigator

* So for our example we know our author and article screens need to be passed an id param to fetch them from the cms

*  Next we need to create a helper type to get the stack props for a given screen. 

* This makes sure that all the parameter that we destructure in our screens are typed correctly

* And thats pretty much it, we can go ahead and render our stack
-->
