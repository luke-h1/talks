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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">CSR only out of the box</span> 
</div>

````md magic-move {lines: true}
```html

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta httpEquiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <body>
    <noscript>
      You need to enable JavaScript to run this app.
    </noscript>
    <div id="root"></div>
  <script src="/bundle.js" defer></script>
</body>
</html>

```
````

<!--
React navigation only supports client side rendering out of the box.
and that means things like SEO and accessibility suffer quite greatly, as the browser has to download the JavaScript bundle and then execute it to render the html.
For the average project and developer, this is a massive deal breaker. We need the ability to either server-side render the page or statically generate it in order to support SEO and accessibility aspects.
-->
