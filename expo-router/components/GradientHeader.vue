<script setup lang="ts">
defineProps<{
  title: string;
  subtitle?: string;
  align?: "left" | "center" | "right";
}>();
</script>

<template>
  <div :class="['gradient-header-wrapper', `text-${align || 'left'}`]">
    <h1
      class="gradient-header-title"
      style="
        background: linear-gradient(
          to right,
          rgb(96, 165, 250),
          rgb(192, 132, 252),
          rgb(251, 146, 188)
        );
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
      "
    >
      {{ title }}
    </h1>
    <p v-if="subtitle" class="gradient-header-subtitle">
      {{ subtitle }}
    </p>
  </div>
</template>

<style scoped>
.gradient-header-wrapper {
  width: 100%;
  margin-bottom: 2rem;
}

.gradient-header-title {
  font-size: 4rem;
  font-weight: 800;
  padding: 0.5rem;
  display: inline-block;
  line-height: 1.2;
}

.gradient-header-subtitle {
  font-size: 1.5rem;
  opacity: 0.8;
  margin-top: 1rem;
}

.text-left {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: flex-start;
}

.text-center {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.text-right {
  display: flex;
  flex-direction: column;
  align-items: flex-end;
  justify-content: flex-end;
}
</style>
