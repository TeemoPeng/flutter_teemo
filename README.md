# Teemo

Teemo

## 启动

flutter run

## 修改应用图标

#### Android

    1. 在 \android\app\src\main\res 下对应的文件夹（mipmap-hdpi、mipmap-mdpi。。。）添加图片
    2. \android\app\src\main\AndroidManifest.xml 修改引用的图片路径

#### iOS

    1. 在 \ios\Runner\Assets.xcassets\AppIcon.appiconset 修改图片文件
    2. 在 \ios\Runner\Assets.xcassets\AppIcon.appiconset\Contents.json 修改引用文件

## Iconfont 使用方法

    1. 下载iconfont 到本地，解压，iconfont.tff 文件放到 assets/fonts目录下
    2. 将iconfont.css 转成dart文件 ：https://xwrite.gitee.io/blog/
    3. 在lib下新建文件夹fonts，将转化后的iconfont.dart 放到该目录下
    4. 修改pubspec.yarml
        fonts:
            - family: IconFont
            fonts:
                - asset: assets/fonts/iconfont.ttf
    5. 使用： Icon(Iconfont.icon_arrow)

## 网络请求 Dio

## 文件上传

## 本地数据存储 shared_preferences

## 打包、升级

## 微信支付、支付宝支付
