import Vue from 'vue';
import Router from 'vue-router';
import NotFound from '@/components/NotFound';
import ComingSoon from '@/components/ComingSoon';

Vue.use(Router);

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'ComingSoon',
      component: ComingSoon,
    }, {
      path: '*',
      name: '404',
      component: NotFound,
    },
  ],
});
