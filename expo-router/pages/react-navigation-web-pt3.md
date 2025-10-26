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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">SSR</span> 
</div>

````md magic-move {lines: true} example-server.ts
```tsx
import { AppRegistry } from "react-native";
import { ServerContainer } from "react-navigation/native";
import ReactDOMServer from "react-dom/server";

app.use(async (ctx) => {
  const location = new URL(ctx.url, "https://my-website.com");

  const { element, getStyleElement } = AppRegistry.getApplication("App");
});
```

```tsx
import { AppRegistry } from "react-native";
import { ServerContainer } from "react-navigation/native";
import ReactDOMServer from "react-dom/server";

app.use(async (ctx) => {
  const location = new URL(ctx.url, "https://my-website.com");

  const { element, getStyleElement } = AppRegistry.getApplication("App");

  const html = ReactDOMServer.renderToString(
    <ServerContainer location={location}>{element}</ServerContainer>,
  );

  const css = ReactDOMServer.renderToStaticMarkup(getStyleElement());
});
```

```tsx
import { AppRegistry } from "react-native";
import { ServerContainer } from "react-navigation/native";
import ReactDOMServer from "react-dom/server";

app.use(async (ctx) => {
  const location = new URL(ctx.url, "https://my-website.com");

  const { element, getStyleElement } = AppRegistry.getApplication("App");

  const html = ReactDOMServer.renderToString(
    <ServerContainer location={location}>{element}</ServerContainer>,
  );

  const css = ReactDOMServer.renderToStaticMarkup(getStyleElement());

  const document = `
    <!DOCTYPE html>
    ${css}
    <div id="root" style="display: flex; min-height: 100vh">
    ${html}
    </div>
  `;

  ctx.body = document;
});
```
````

<!--
Now it's not impossible to build your own SSR server with react navigation, We can achieve this with a express server. First we need to need to get the application registry which will give us the element we want to render and any css associated with it. Then we need to render the element to a string and also pass that to the server container, which is responsible for rendering our app on the server with the correct navigation state. Finally we render the css to a static string and return the html to the browser.
-->
