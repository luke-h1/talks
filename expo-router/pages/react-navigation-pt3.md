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
  <span style="background: linear-gradient(to right, rgb(96, 165, 250), rgb(192, 132, 252), rgb(251, 146, 188)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text;">Requirements</span> 
</div>

<div style="margin-top: 2rem; display: flex; flex-direction: column; align-items: center; gap: 2rem;">
  <div style="display: flex; flex-direction: column; align-items: center;">
    <ul style="list-style-type: none; padding: 0;">
      <li style="margin-bottom: 0.5rem;" v-click>TypeScript support</li>
      <li style="margin-bottom: 0.5rem;" v-click>Display a list of blog posts</li>
      <li style="margin-bottom: 0.5rem;" v-click>Navigate to a blog post detail screen</li>
      <li style="margin-bottom: 0.5rem;" v-click>Author and author slug page</li>
      <li style="margin-bottom: 0.5rem;" v-click>Web support</li>
    </ul>
  </div>
</div>

<!--
Requirements. We need well typed navigation, a list of blog posts, a detail screen for each blog post, author and author slug page, and web support.
-->
