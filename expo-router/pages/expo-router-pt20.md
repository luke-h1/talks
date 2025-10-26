---
transition: fade
layout: center
---

# Tool Implementation

```tsx
      async *generate({ query, media_type, time_window, generated_description }) {

        // 🪄 First: Show loading skeleton immediately
        yield <MoviesSkeleton />;

        // 🪄 Then: Fetch data from TMDB
        let results = [];
        if (query) {
          const data = await tmdbFetch(`/search/${media_type}?query=${query}`);
          results = data.results;
        } else {
          const data = await tmdbFetch(`/trending/${media_type}/${time_window}`);
          results = data.results;
        }

        return <MoviesCard data={results} title={generated_description} />;
      },
```

<!--
The generate function here, is responsible for fetching the data from the API and actually generating the result. First the user sees a skeleton, then we fetch data, then we return the final component. All streamed to the client as React components.
-->
