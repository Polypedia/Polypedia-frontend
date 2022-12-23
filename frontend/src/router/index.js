/* eslint-disable*/
import { createRouter, createWebHashHistory } from "vue-router";
import LoginView from "../views/LoginView";
import SignupView from "../views/SignupView";
import AccountView from "../views/AccountView";
import HomeView from "../views/HomeView";
import UploadView from "../views/UploadBook"
import BookView from "../views/BookView"

import { isLoggedIn } from "../utils/auth";

const router = createRouter({
  history: createWebHashHistory(),
  routes: [
    {
      path: "/",
      name: "default",
      component: LoginView,
      meta: { allowAnonymous: true },
    },
    {
      path: "/home",
      name: "Home",
      component: HomeView,
      meta: { navbar: true },
    },

    {
      path: "/login",
      name: "Login",
      component: LoginView,
      meta: { allowAnonymous: true },
    },

    {
      path: "/signup",
      name: "Signup",
      component: SignupView,
      meta: { allowAnonymous: true },
    },

    {
      path: "/account",
      name: "Account",
      component: AccountView,
      meta: { navbar: true },
    },

    {
      path: "/upload",
      name: "Upload",
      component: UploadView,
      meta: { navbar: true },
    },
    {
      path: "/book/:id",
      name: "Book",
      component: BookView,
      meta: { navbar: true },
    },
  ],
});

router.beforeEach(async (to, from, next) => {

  if (!to.meta.allowAnonymous && !isLoggedIn())next({namle: "Login",});
    next();
});

export default router;
