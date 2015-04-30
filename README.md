## LCProgressHUD
一个超简单的活动指示器 <br><br>

![image](https://github.com/LeoiOS/LCProgressHUD/blob/master/HUDemo.gif)<br>

好吧我只是觉得MBProgressHUD太麻烦了，所以再搞了一遍，一行代码即可完成调用。<br><br>

##### 示例(已更新):
1> 导入"LCProgressHUD"文件夹到你的项目中(文件夹在Demo中可以找到);<br>
2> 在你需要使用的viewController中，`#import "LCProgressHUD.h"`;<br>
3> 敲下列任一行代码:<br>
  ```
  [LCProgressHUD showText:@"心有林夕"];
  [LCProgressHUD showErrorText:@"加载失败"];
  [LCProgressHUD showSuccessText:@"加载成功"];
  [LCProgressHUD showWaittingText:@"正在加载"];
  [LCProgressHUD showWaittingText:nil];
  ```

##### 手动隐藏HUD(已更新):
  ```
  [LCProgressHUD hide];
  ```

怎么样，是不是超简单，哈哈~<br><br><br>

##### 2015.04.16 更新日志:
* 更简单了!
* 类方法 + 不再需要写LCProgressHUDStatusError这种东西! 不要太爽!
* 保留了上个版本的+ showStatus:text:方法，需要的自己调用，推荐使用更新后的新方法！

##### Tips:
1> HUD是添加到当前的window上而不是当前的view上，若实在需要可以去LCProgressHUD中修改。<br>
1> 加载成功/失败的图片在"LCProgressHUD/HUDImage"文件夹下面，可自由更换，注意把名字改成我一样的即可(当然你也可以去改代码，不嫌麻烦的话)。<br>
2> "加载成功"这个Label的字体在LCProgressHUD.m文件中可以修改，默认14px。<br>
3> 我提供了一个单例方法`[LCProgressHUD sharedHUD]`，可以拿到当前的HUD，以备更多操作。<br><br><br>


* 发现问题请lssues我，谢谢!
* Email: leoios@sina.com
