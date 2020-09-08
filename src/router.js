import { createRouter, createWebHistory } from "vue-router";
import Test from "./views/Test.vue";

export const routerHistory = createWebHistory();
export const router = createRouter({
  history: routerHistory,
  routes: [
    {
      path: "/",
      name: "Home",
      component: Test
    },
    {
      path: "/Demo",
      name: "Demo",
      component: () => import(/* webpackChunkName: "demo" */ "./views/Demo.vue")
    }
  ]
});
