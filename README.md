## LCProgressHUD
一个超简单的活动指示器 

![image](https://github.com/LeoiOS/LCProgressHUD/blob/master/HUDemo.gif)


### 前言 Foreword
好吧我只是觉得MBProgressHUD太麻烦了，所以再搞了一遍，一行代码即可完成调用。


### 代码(已更新) Code
* 导入`LCProgressHUD`文件夹到你的项目中(文件夹在Demo中可以找到);
* 在你需要使用的viewController中，`#import "LCProgressHUD.h"`;
* 敲下列任一行代码:

  ```objc
  [LCProgressHUD showText:@"心有林夕"];
  
  [LCProgressHUD showFailureText:@"加载失败"];
  
  [LCProgressHUD showSuccessText:@"加载成功"];
  
  [LCProgressHUD showLoadingText:@"正在加载"];
  
  [LCProgressHUD showLoadingText:nil];
  ```

* 如果想手动隐藏HUD(一般用来隐藏“等待”状态的HUD)
  
  ```objc
  [LCProgressHUD hide];
  ```


怎么样，是不是超简单，哈哈~


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
* 发现问题请lssues我，谢谢:)
* Email:leoios@sina.com
* Blog: http://www.leodong.com


### 授权 License
本项目采用 [MIT license](http://opensource.org/licenses/MIT) 开源，你可以利用采用该协议的代码做任何事情，只需要继续继承 MIT 协议即可。
