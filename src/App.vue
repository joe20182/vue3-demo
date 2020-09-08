<template>
  <div>
    <router-link to="/">Home</router-link>
    <router-link to="/Demo">Demo</router-link>
    <transition name="fade">
      <router-view />
    </transition>
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
.fade-enter-active {
  animation: fadeIn 0.5s;
}
.fade-leave-active {
  animation: fadeOut 0.5s;
}
@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
</style>
