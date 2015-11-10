## LCProgressHUD
一个超简单的活动指示器 

![image](https://github.com/LeoiOS/LCProgressHUD/blob/master/HUDemo.gif)


### 前言 Foreword
好吧我只是觉得 MBProgressHUD 太麻烦了，所以再搞了一遍。

  ```
  一行代码即可完成调用。
  ```


### 代码 Code
* 
  - 方法一：[CocoaPods](https://cocoapods.org/) 导入：`pod 'LCProgressHUD'`
  - 方法二：导入`LCProgressHUD`文件夹到你的项目中 (文件夹在 Demo 中可以找到)
* 在你需要使用的viewController中，`#import "LCProgressHUD.h"`;
* 敲下列任一行代码:

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


### 更新日志 2015.11.10 Update Logs (tag: 1.0.2)
* 添加对 [CocoaPods](https://cocoapods.org/) 的支持：`pod 'LCProgressHUD'`
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


### 更新日志 2015.07.09 Update Logs (tag: 1.0.0)
* 加粗字体，修改默认字体为`[UIFont boldSystemFontOfSize:16.0f]`。因为我发现包括 QQ、支付宝等的 HUD 都采用加粗来提升显示效果，给用户更清晰的指示。(Demo 图我就不重新截了:-))
* 增加默认停留时间，由 1.2s 增加到 1.6s，更持久！


### 更新日志 2015.06.10 Update Logs (tag: 1.0.0)
* 添加提示“信息”功能：
````objc
[LCProgressHUD showMessage:@"请输入账号"];
````
* 更换“成功”、“失败”的图片，更加友好:-)

### 更新日志 2015.05.05 Update Logs
* 适配处女座开发者，统一以下方法的长度：
  
  ```objc
  - (void)showFailureText:(NSString *)text;
  
  - (void)showSuccessText:(NSString *)text;
  
  - (void)showLoadingText:(NSString *)text;
  ```
  
* 优化显示效果。Label的字体大小现在是15px，原来是14px。

### 更新日志 2015.04.16 Update Logs
* 更简单了！
* 类方法！并且不再需要写LCProgressHUDStatusError这种东西！不要太爽！
* 保留了上个版本的`+showStatus:text:`方法，需要的自己调用，推荐调用更新后的方法！

### 提示 Tips 
* HUD是添加到当前的window上而不是当前的view上，若实在需要可以去LCProgressHUD中修改。
* 加载成功/失败的图片在"LCProgressHUD/HUDImage"文件夹下面，可自由更换，注意把名字改成我一样的即可(当然你也可以去改代码，不嫌麻烦的话)。
* "加载成功"这个Label的字体在LCProgressHUD.m文件中可以修改，默认15px。
* 我提供了一个单例方法`[LCProgressHUD sharedHUD]`，可以拿到当前的HUD，以备更多操作。


### 联系 Support
* 发现问题请Issues我，谢谢:-)
* Email:leoios@sina.com
* Blog: http://www.leodong.com


### 授权 License
本项目采用 [MIT license](http://opensource.org/licenses/MIT) 开源，你可以利用采用该协议的代码做任何事情，只需要继续继承 MIT 协议即可。
