<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; &nbsp; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="icon-next-heart"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
</div>

<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="http://hexo.io">Hexo</a>') }}
</div>

<div class="theme-info">
  {{ __('footer.theme') }} -
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">
    NexT{% if theme.scheme %}.{{ theme.scheme }}{% endif %}
  </a>
</div>
<script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>

本站总访问量 <span id="busuanzi_value_site_pv"></span> &nbsp&nbsp&nbsp
您是第<span id="busuanzi_value_site_uv"></span>个来到的小伙伴

{% block footer %}{% endblock %}
