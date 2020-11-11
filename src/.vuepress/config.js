const { description } = require('../../package')

module.exports = {
  /**
   * Ref：https://v1.vuepress.vuejs.org/config/#title
   */
  title: 'JZVD文档',
  /**
   * Ref：https://v1.vuepress.vuejs.org/config/#description
   */
  description: description,

  /**
   * Extra tags to be injected to the page HTML `<head>`
   *
   * ref：https://v1.vuepress.vuejs.org/config/#head
   */
  head: [
    ['meta', { name: 'theme-color', content: '#4253AF' }],
    ['meta', { name: 'apple-mobile-web-app-capable', content: 'yes' }],
    ['meta', { name: 'apple-mobile-web-app-status-bar-style', content: 'black' }]
  ],

  /**
   * Theme configuration, here is the default theme configuration for VuePress.
   *
   * ref：https://v1.vuepress.vuejs.org/theme/default-theme-config.html
   */
  themeConfig: {
    repo: '',
    editLinks: false,
    docsDir: '',
    editLinkText: '',
    lastUpdated: true,
    nav: [
      {
        text: 'JZPlayer',
        link: '/jzplayer/',
      },
      {
        text: 'JZToken',
        link: '/jztoken/'
      },
      {
        text: 'GitHub',
        link: 'https://github.com/Jzvd/JZVideo'
      }
    ],
    sidebar: {
      '/jzplayer/': [
        {
          title: 'JZPlayer',
          collapsable: false,
          children: [
            '',
            'quick-start',
            'primary-usage',
            'extends-usage',
            'list-usage',
            'advanced-usage',
          ]
        }
      ],
      '/jztoken/':[
        {
          title:'JZToken',
          collapsable: false,
          children: [
            '',
            'contract-parameters',
            'related-links',
          ]
        }
      ],
    }
  },

  /**
   * Apply plugins，ref：https://v1.vuepress.vuejs.org/zh/plugin/
   */
  plugins: [
    '@vuepress/plugin-back-to-top',
    '@vuepress/plugin-medium-zoom',
  ]
}
