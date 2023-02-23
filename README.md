# hexo-theme-mnh

修改自 [hexo-theme-polarbearsimple](https://github.com/henryhuang/hexo-theme-polarbearsimple)

看了很多主题，都没有满意的，所以选了一个比较好的底子，自己修改了

[在线预览 Demo](https://pua.al)

## 安装使用（Installation）

```bash
npm install hexo-renderer-scss --save
git clone https://github.com/meannoharm/hexo-theme-mnh themes/mnh
```

修改（Change） `yoursite/config.yml`

```yaml
# Extensions
## Plugins: http://hexo.io/plugins/
## Themes: http://hexo.io/themes/
theme: mnh

# 在归档页面显示所有文章 （Show all articles at archive page.）
# 需要安装(Need to install) hexo-generator-archive 插件支持
archive_generator:
    per_page: 0
    yearly: false
    monthly: false
    daily: false
```

## 添加 Algolia搜索

添加 hexo-algoliasearch 插件

```bash
npm install --save hexo-algoliasearch
```

在网站的 `yoursite/_config.yml` 里配置：

```yaml
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
