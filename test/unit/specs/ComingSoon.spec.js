import Vue from 'vue';
import ComingSoon from '@/components/ComingSoon';

describe('ComingSoon.vue', () => {
  it('should render correct contents', () => {
    const Constructor = Vue.extend(ComingSoon);
    const vm = new Constructor().$mount();
    expect(vm.$el.querySelector('.framed-art-text h1').textContent)
    .toEqual('Coming soon!');
  });
});
