# hexo-theme-mnh

修改自 [hexo-theme-polarbearsimple](https://github.com/henryhuang/hexo-theme-polarbearsimple)

看了很多主题，都没有满意的，所以选了一个比较好的底子，自己修改了

[在线预览 Demo](https://mnh.gao.tn)

## 安装

1.安装 Hexo 插件 `hexo-renderer-sass` `hexo-renderer-swig` `hexo-generator-archive` and `hexo-algoliasearch`

  ```bash
  npm install hexo-renderer-scss@github:meannoharm/hexo-renderer-sass hexo-renderer-swig hexo-generator-archive hexo-algoliasearch --save
  ```

  如果使用的 `nodejs` 版本大于 12, `hexo-renderer-sass` 包可能会安装错误, 可以查看 [Issue](https://github.com/knksmith57/hexo-renderer-sass/issues/43) 和 [Pull request](https://github.com/knksmith57/hexo-renderer-sass/pull/46).

  可以运行下面的命令，安装 [@kmuncie](https://github.com/kmuncie) 版本的 `hexo-renderer-sass` 

  ```bash
  npm install --save https://github.com/kmuncie/hexo-renderer-sass
  ```

2.将主题下载到 Hexo 主题文件夹

  ```bash
  git clone https://github.com/meannoharm/hexo-theme-mnh themes/mnh
  ```

3.修改 `your_site/_config.yml` 文件

```yaml
# Extensions
## Plugins: http://hexo.io/plugins/
## Themes: http://hexo.io/themes/
theme: mnh

# Show all articles at archive page.
# Need to install hexo-generator-archive
archive_generator:
    per_page: 0
    yearly: false
    monthly: false
    daily: false

# Global search based on Algolia https://www.algolia.com/
# Need to install and config hexo-algoliasearch
algolia:
  applicationID: "<APP_ID>"
  apiKey: "<API_KEY>"
  adminApiKey: "<ADMIN_API_KEY>"
  chunkSize: 5000
  indexName: "<INDEX_NAME>"
  fields:
  - content:strip:truncate,0,500
  - excerpt:strip
  - permalink
  - cover
  - slug
  - tags
  - categories
  - title
```

## 主题配置

修改 `your_site/themes/mnh/_config.yml`

### 配置主题组件功能

```yaml
# widget function
# false: disable
# widget_custom: custom your widget
#   title: your widget title
#   content: Add your html code in here. Example: <p>testing...</p>
widget:
  Tags: true
  Categories: false
  Custom: false

widget_custom:
    title: Test
    content: <p>testing...</p>
```

### 网站分析

```yaml
# Baidu Analytics
baidu_analytics:
  enable: true
  key: "[BAIDU ANALYTICS KEY]"
# Google Analytics
# use google analytics 4
google_analytics:
  enable: true
  gtag: "[GOOGLE ANALYTICS GTAG]"
```

### 评论功能

```yaml
# Duoshuo
duoshuo_shortname:
# Disqus
disqus_shortname:
# utterances
utterances:
  enable: true
  repo: "[ENTER REPO HERE]"
  issueTerm: pathname
  theme: github-light
```

### 许可证配置

```yaml
license:
  name: CC-BY-NC-SA 4.0
  link: https://creativecommons.org/licenses/by-nc-sa/4.0/
```
