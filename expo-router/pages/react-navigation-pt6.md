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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Tab support</span> 
</div>

<!--
Let's add tab support to our app. This will also cover adding TypeScript support too partially. The first thing we need to do is create a type of the tabs we want to create. We're going to call it tab param list. This is a type that will be used to define the parameters for each tab. In our app it's really simple, we just have two tabs - home and authors and they accept no parameters so we just define the type as undefined. The parameters are the props that are passed to the screen when it is rendered. You can pass IDs, slugs, query params etc. We can then create our tab navigator which takes our tab param list type as a generic.
-->

````md magic-move {lines: true}
```txt
src/
└── navigation/
    └── TabNavigator.tsx
```

```tsx
export type TabParamList = {
  Home: undefined;
  Authors: undefined;
};
```

```tsx
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";

const Tab = createBottomTabNavigator<TabParamList>();
```

```tsx {13-16}
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";

const Tab = createBottomTabNavigator<TabParamList>();
//    ^ TypedNavigator<
//      TabParamList,
//      undefined,
//      {
//        ParamList: TabParamList;
//        NavigatorID: undefined;
//        State: TabNavigationState<TabParamList>;
//        ScreenOptions: BottomTabNavigationOptions;
//        EventMap: BottomTabNavigationEventMap;
//        NavigationList: {
//          Home: BottomTabNavigationProp<TabParamList, "Home", undefined>;
//          Authors: BottomTabNavigationProp<TabParamList, "Authors", undefined>;
//        };
//        Navigator: ({ id, initialRouteName, ... }) => JSX.Element;
//      }
//    >
```

```tsx
export function TabNavigator() {
  return (
    <Tab.Navigator
      initialRouteName="Home"
      // screen opts...
    >
      <Tab.Screen
        name="Home"
        component={HomeScreen}
        options={{
          lazy: true,
          headerShown: false,
          tabBarIcon: ({ focused, color, size }) => (
            <IconSymbol
              name="person.2"
              color={color}
              size={size}
              weight={focused ? "semibold" : "regular"}
            />
          ),
        }}
      />
      // ...authors screen
    </Tab.Navigator>
  );
}
```
````
