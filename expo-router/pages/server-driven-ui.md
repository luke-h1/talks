---
transition: fade
layout: two-cols
---

<div
  v-motion
  :initial="{ x: -80 }"
  :enter="{ x: 0 }"
  :leave="{ x: 1000 }"
  style="font-size: 4rem; font-weight: 800; padding: 0.5rem; display: inline-block; line-height: 1.2;"
>
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;"> SDUI</span>
</div>

<div v-click>

````md magic-move {lines: true}
```
GET /api/ui?variant=b
```
````

```json
{
  "blocks": [
    {
      "type": "header",
      "text": "Stranger things",
      "level": 1
    },
    {
      "tagline": "One last adventure."
    },
    {
      "type": "paragraph",
      "text": "When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl."
    },
    {
      "posters": [
        "https://picsum.photos/200/300",
        "https://picsum.photos/200/300"
      ]
    }
  ]
}
```

</div>

::right::

<div style="display: flex; align-items: center; justify-content: center; height: 100%; padding: 1rem;">
<img src='/assets/stranger-things.webp' alt="Stranger things" style="max-width: 90%; max-height: 80vh; object-fit: contain;" />
</div>

<!--
Server driven UI is a way to represent how your UI looks on the server. This is used by quite a lot of companies to build a really customized experience for each user based on things like experimentation, feature flags etc. So as an example, let's think about how we could use server driven ui in our movie app. So we have a movie screen, it has two images, title, headline, and a description. Our backend might respond with something like this and then it's our job to turn this json into something that can be rendered. We're going to take this a step further - we're going to use react server functions to stream the UI back to the client as it's being rendered.
-->
