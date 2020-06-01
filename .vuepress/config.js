
module.exports = {
    base: "/Job_TASK/",
    description: "Job_TASK",
    title: "Job_TASK",
    theme: 'reco',
    head: [
        ['meta', { name: 'viewport', content: 'width=device-width,initial-scale=1,user-scalable=no' }]
    ],

    plugins: [['@vuepress-reco/comments', {
        solution: 'valine',
        options: {
            appId: 'gs4V842zmGCChJhtULPTAS8W-gzGzoHsz',// your appId
            appKey: '9GSbImmH3E33WYI6wp26087c', // your appKey
            placeholder: "来说点什么吧！",
            enableQQ: true,
            recordIP: true,
        }
    }],
    ['@vuepress-reco/vuepress-plugin-kan-ban-niang', {
        theme: ['blackCat', 'whiteCat', 'haru1', 'haru2', 'haruto', 'koharu', 'izumi', 'shizuku', 'wanko', 'miku', 'z16'],
        clean: false
        // messages: { welcome: '欢迎来到 ' + $site.title, home: '心里的花，我想要带你回家。', theme: '好吧，希望你能喜欢我的其他小伙伴。', close: '你知道我喜欢吃什么吗？痴痴地望着你。' },
    }],
    // 音乐播放器 todo
    ['@vuepress-reco/vuepress-plugin-bgm-player', {
        audios: [
            // 本地文件示例
            {
                name: '起风了',
                artist: '买辣椒也用券',
                url: 'https://cdn.jsdelivr.net/gh/Zeng-qh/CDN@master/Job_Task/music/%E4%B9%B0%E8%BE%A3%E6%A4%92%E4%B9%9F%E7%94%A8%E5%88%B8%20-%20%E8%B5%B7%E9%A3%8E%E4%BA%86.mp3',
                cover: 'https://cdn.jsdelivr.net/gh/Zeng-qh/CDN@master/Job_Task/music/qfl.jpg'
            },
            {
                name: '往后余生',
                artist: '马良',
                url: 'https://cdn.jsdelivr.net/gh/Zeng-qh/CDN@master/Job_Task/music/%E9%A9%AC%E8%89%AF%20-%20%E5%BE%80%E5%90%8E%E4%BD%99%E7%94%9F.mp3',
                cover: 'https://cdn.jsdelivr.net/gh/Zeng-qh/CDN@master/Job_Task/music/whys.jpg'
            },
            {
                name: '刚刚好',
                artist: '薛之谦',
                url: 'https://cdn.jsdelivr.net/gh/Zeng-qh/CDN@master/Job_Task/music/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E5%88%9A%E5%88%9A%E5%A5%BD.mp3',
                cover: 'https://cdn.jsdelivr.net/gh/Zeng-qh/CDN@master/Job_Task/music/ggh.jpg'
            },

            // // 网络文件示例
            // {
            //     name: '강남역 4번 출구',
            //     artist: 'Plastic / Fallin` Dild',
            //     url: 'https://assets.smallsunnyfox.com/music/2.mp3',
            //     cover: 'https://assets.smallsunnyfox.com/music/2.jpg'
            // },
            // {
            //     name: '用胳膊当枕头',
            //     artist: '최낙타',
            //     url: 'https://assets.smallsunnyfox.com/music/3.mp3',
            //     cover: 'https://assets.smallsunnyfox.com/music/3.jpg'
            // }
        ],
        position: {
            left: '10px',
            bottom: '10px',
            'z-index': '999999'
        },
        floatStyle: { bottom: '200px', 'z-index': '999999' }
    }]

    ],
    themeConfig: {
        type: 'blog',
        sidebar: 'auto',//在所有页面中启用自动生成侧栏
        author: 'hayes',
        // 博客配置
        // blogConfig: {
        //     category: {
        //         location: 2,     // 在导航栏菜单中所占的位置，默认2
        //         text: 'Category' // 默认文案 “分类”
        //     },
        //     tag: {
        //         location: 3,     // 在导航栏菜单中所占的位置，默认3
        //         text: 'Tag'      // 默认文案 “标签”
        //     }
        // },
        lastUpdated: '上次更新',
        // 密钥
        keyPage: {
            keys: ['c4ca4238a0b923820dcc509a6f75849b'], // 1.3.0 版本后需要设置为密文
            color: '#42b983', // 登录页动画球的颜色
            lineColor: '#42b983' // 登录页动画线的颜色
        }
    }
}