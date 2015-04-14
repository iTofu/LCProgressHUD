# LCProgressHUD
### 一个超简单的活动指示器 <br>


好吧我只是觉得MBProgressHUD太麻烦了，所以再搞了一遍，一行代码即可。<br><br>

##### 示例:
1> 导入"LCProgressHUD"文件夹到你的项目中(文件夹在Demo中可以找到);<br>
2> 在你需要使用的viewController中，`#import "LCProgressHUD.h"`;<br>
3> 敲下列任一行代码:<br>
`[LCProgressHUD showStatus:LCProgressHUDStatusError text:@"加载失败"];` <br>
`[LCProgressHUD showStatus:LCProgressHUDStatusSuccess text:@"加载成功"];`<br>
`[LCProgressHUD showStatus:LCProgressHUDStatusWaitting text:@"正在加载"];`<br>
`[LCProgressHUD showStatus:LCProgressHUDStatusWaitting text:nil];`<br><br>

###### 手动隐藏HUD:
`[LCProgressHUD hide:YES keep:NO];`<br><br>
怎么样，是不是超简单，哈哈~<br><br><br>

##### Tips:
1> HUD是添加到当前的window上而不是当前的view上，若实在需要可以去LCProgressHUD中修改。<br>
1> 加载成功/失败的图片在"LCProgressHUD/HUDImage"文件夹下面，可自由更换，注意把名字改成我一样的即可(当然你也可以去改代码，不嫌麻烦的话)。<br>
2> "加载成功"这个Label的字体在LCProgressHUD.m文件中可以修改，默认14px。<br>
3> 我提供了一个单例方法`[LCProgressHUD sharedHUD]`，可以拿到当前的HUD，以备更多操作。<br><br><br>

* Email: leoios@sina.com <请尽量不要在GitHub上联系我，谢谢>
