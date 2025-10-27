---
transition: fade
---

# SDUI Network Flow

<div style="margin-top: 2rem;">

````md magic-move {lines: true}
```ts {1-2|3-7|9-13}

// 1️⃣ Client makes request
fetch('/api/ui/movie/123')

// 2️⃣ Server responds with SDUI
{
  "blocks": [...]
}

// 3️⃣ Map JSON from server to UI components
blocks.map(block => {
  return renderBlock(block)
})
```

```ts {7-14}

type Block =
  | { type: 'header'; text: string; level: number; id: string }
  | { type: 'paragraph'; text: string; id: string }
  | { type: 'tagline'; text: string; id: string }
  | { type: 'posters'; images: string[]; id: string }

function renderBlock(block: Block) {
  switch (block.type) {
    case 'header':
      return <Header {...block} />
    case 'paragraph':
      return <Paragraph {...block} />
    ...
  }
}
```

```ts
{blocks.map(block => {
  const Component = BlockComponents[block.type]
  return <Component key={block.id} {...block} />
})}
```
````

</div>

::right::

<div style="padding: 2rem;">

<div style="display: flex; flex-direction: column; gap: 2rem; align-items: center;">

<!-- Client -->
<div v-click="1" style="text-align: center;">
  <div style="font-size: 1.5rem; font-weight: 700; color: rgb(96, 165, 250); margin-bottom: 0.5rem;">📱 Client</div>
  <div style="background: rgba(96, 165, 250, 0.1); border: 2px solid rgb(96, 165, 250); border-radius: 8px; padding: 1rem; font-family: monospace; font-size: 0.75rem;">
    GET /api/ui/movie/123
  </div>
</div>

<!-- Arrow Down -->
<div v-click="2" style="font-size: 3rem; color: rgb(148, 163, 184);">
  ↓
</div>

<!-- Server -->
<div v-click="2" style="text-align: center;">
  <div style="font-size: 1.5rem; font-weight: 700; color: rgb(251, 146, 188); margin-bottom: 0.5rem;">🖥️ Server</div>
  <div style="background: rgba(251, 146, 188, 0.1); border: 2px solid rgb(251, 146, 188); border-radius: 8px; padding: 1rem; font-family: monospace; font-size: 0.65rem; max-width: 300px;">
    {<br/>
    &nbsp;&nbsp;"blocks": [<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;{"type": "header"},<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;{"type": "paragraph"}<br/>
    &nbsp;&nbsp;]<br/>
    }
  </div>
</div>

<!-- Arrow Down -->
<div v-click="3" style="font-size: 3rem; color: rgb(148, 163, 184);">
  ↓
</div>

<!-- Mapper -->
<div v-click="3" style="text-align: center;">
  <div style="font-size: 1.5rem; font-weight: 700; color: rgb(192, 132, 252); margin-bottom: 0.5rem;">⚙️ Mapper</div>
  <div style="background: rgba(192, 132, 252, 0.1); border: 2px solid rgb(192, 132, 252); border-radius: 8px; padding: 1rem; font-family: monospace; font-size: 0.75rem;">
    JSON → Components
  </div>
</div>

<!-- Arrow Down -->
<div v-click="4" style="font-size: 3rem; color: rgb(148, 163, 184);">
  ↓
</div>

<!-- Rendered UI -->
<div v-click="4" style="text-align: center;">
  <div style="font-size: 1.5rem; font-weight: 700; color: rgb(34, 197, 94); margin-bottom: 0.5rem;">✨ UI</div>
  <div style="background: rgba(34, 197, 94, 0.1); border: 2px solid rgb(34, 197, 94); border-radius: 8px; padding: 1rem; width: 200px; height: 120px; display: flex; flex-direction: column; gap: 0.5rem;">
    <div style="background: rgba(255,255,255,0.1); height: 30px; border-radius: 4px;"></div>
    <div style="background: rgba(255,255,255,0.1); height: 20px; border-radius: 4px;"></div>
    <div style="background: rgba(255,255,255,0.1); height: 60px; border-radius: 4px;"></div>
  </div>
</div>

</div>

</div>

<!--
This shows the typical flow of server-driven UI: The client requests UI configuration from the server. The server responds with JSON describing the UI blocks. The mapper function converts each JSON block into its corresponding React component. Finally, the UI is rendered on screen. Now this is ok but we're having to go back and forth between the server and the client to get the UI to work. We're going to take this a step further - we're going to use react server functions to stream the UI back to the client as it's being rendered for a really fast and responsive experience.
-->
