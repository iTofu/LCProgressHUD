# LCProgressHUD

[![Travis](https://img.shields.io/travis/iTofu/LCProgressHUD.svg?style=flat)](https://travis-ci.org/iTofu/LCProgressHUD)
[![CocoaPods](https://img.shields.io/cocoapods/v/LCProgressHUD.svg)](http://cocoadocs.org/docsets/LCProgressHUD)
[![CocoaPods](https://img.shields.io/cocoapods/l/LCProgressHUD.svg)](https://raw.githubusercontent.com/iTofu/LCProgressHUD/master/LICENSE)
[![CocoaPods](https://img.shields.io/cocoapods/p/LCProgressHUD.svg)](http://cocoadocs.org/docsets/LCProgressHUD)
[![LeoDev](https://img.shields.io/badge/blog-LeoDev.me-brightgreen.svg)](http://leodev.me)

一个超简单的活动指示器。

![image](https://raw.githubusercontent.com/iTofu/LCProgressHUD/master/HUDemo.gif)

````
In me the tiger sniffs the rose.

心有猛虎，细嗅蔷薇。
````

## 前言 Foreword

好吧我只是觉得 MBProgressHUD 太麻烦了，所以再搞了一遍。

```
一行代码即可完成调用。
```

> 如果你不喜欢这么平淡的风格，ok！皮卡丘！~
>
> 传送门：[LCCoolHUD](https://github.com/iTofu/LCCoolHUD)



### 代码 Code

* 两种导入方法：
  - 方法一：[CocoaPods](https://cocoapods.org/) 导入：`pod 'LCProgressHUD'`
  - 方法二：导入`LCProgressHUD`文件夹到你的项目中 (文件夹在 Demo 中可以找到)

* 在你需要使用的 viewController 中，`#import "LCProgressHUD.h"`;

* 任敲一行代码:

  ```objc
  [LCProgressHUD showMessage:@"心有林夕"];   // 显示文本

  [LCProgressHUD showInfoMsg:@"请输入账号"]; // 显示提示

  [LCProgressHUD showFailure:@"加载失败"];   // 显示失败

  [LCProgressHUD showSuccess:@"加载成功"];   // 显示成功

  [LCProgressHUD showLoading:@"正在加载"];   // 显示等待

  [LCProgressHUD showLoading:nil];          // 显示等待 (无文本)
  ```

* 如果想手动隐藏 HUD (一般用来隐藏“等待”状态的 HUD)

  ```objc
  [LCProgressHUD hide];
  ```

怎么样，是不是超简单，哈哈~



## 更新日志 ChangeLog


### V 1.0.8 (2018.01.03)

* 修复 bundle 路径问题。


### V 1.0.7 (2017.02.13)

* Fix [Issue 2](https://github.com/iTofu/LCProgressHUD/issues/2).


### V 1.0.6 (2016.04.05)

* 修改 CocoaPods 源地址。


### V 1.0.5 (2016.03.XX)

* 添加 building test。


### V 1.0.2 (2015.11.10)

* 添加对 [CocoaPods](https://cocoapods.org/) 的支持：`pod 'LCProgressHUD'`。

* 增加默认停留时间，由 1.6s 增加到 2.0s，再持久一点！(可在`LCProgressHUD.m`中手动更改)

* 极限适配处女座，所有方法长度全部一样！

  ```objc
  - (void)showFailureText:(NSString *)text; // old
  ->
  - (void)showFailure:(NSString *)text;     // new

  - (void)showSuccessText:(NSString *)text; // old
  ->
  - (void)showSuccess:(NSString *)text;     // new

  - (void)showLoadingText:(NSString *)text; // old
  ->
  - (void)showLoading:(NSString *)text;     // new

  - (void)showInfoText:(NSString *)text;    // old
  ->
  - (void)showInfoMsg:(NSString *)text;     // new

  - (void)showText:(NSString *)text;        // old
  ->
  - (void)showMessage:(NSString *)text;     // new
  ```


### V 1.0.0 (2015.07.09)

* 加粗字体，修改默认字体为`[UIFont boldSystemFontOfSize:16.0f]`。因为我发现包括 QQ、支付宝等的 HUD 都采用加粗来提升显示效果，给用户更清晰的指示。（Demo 图我就不重新截了:)）

* 增加默认停留时间，由 1.2s 增加到 1.6s，更持久！


### V 1.0.0 (2015.06.10)

* 添加提示“信息”功能：

  ````objc
  [LCProgressHUD showMessage:@"请输入账号"];
  ````

* 更换“成功”、“失败”的图片，更加友好 :)


### V 0.0.1 (2015.05.05)

* 适配处女座开发者，统一以下方法的长度：

  ```objc
  - (void)showFailureText:(NSString *)text;

  - (void)showSuccessText:(NSString *)text;

  - (void)showLoadingText:(NSString *)text;
  ```

* 优化显示效果。Label 的字体大小现在是 15px，原来是 14px。


### V 0.0.1 (2015.04.16)

* 更简单了！

* 类方法！并且不再需要写 LCProgressHUDStatusError 这种东西！不要太爽！

* 保留了上个版本的 `+showStatus:text:` 方法，需要的自己调用，推荐调用更新后的方法！



## 提示 Tips

* HUD 是添加到当前的 window 上而不是当前的 view 上，若实在需要可以去 LCProgressHUD 中修改。

* 加载成功/失败的图片在“LCProgressHUD/HUDImage”文件夹下面，可自由更换，注意把名字改成我一样的即可。（当然你也可以去改代码，不嫌麻烦的话）

* “加载成功”这个Label的字体在 LCProgressHUD.m 文件中可以修改，默认 15px。

* 我提供了一个单例方法 `[LCProgressHUD sharedHUD]`，可以拿到当前的 HUD，以备更多操作。



## 联系 Support

* 发现问题请提 Issue，谢谢:-)

* Mail: `echo bGVvZGF4aWFAZ21haWwuY29tCg== | base64 -D`

* Blog: https://LeoDev.me


## 授权 License

本项目采用 [MIT license](http://opensource.org/licenses/MIT) 开源，你可以利用采用该协议的代码做任何事情，只需要继续继承 MIT 协议即可。
