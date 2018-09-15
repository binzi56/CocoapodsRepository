# CocoapodsRepository
cocoapods的本地和远程仓库实践

其中LocalRepository为本地仓库;


```
# platform :ios, '9.0'

source 'https://gitee.com/binzi56/ZBGiteeSpec.git'

target 'CocoapodsRepository' do

#本地私有库
#  pod 'LocalRepository', :path => '../LocalRepository'

#远程私有库
pod 'LocalRepository', '~> 0.1.0'

end
```
👇记录一下操作:
### 终端操作
```
pod lib create LocalRepository
cd /.............../CocoapodsRepository/LocalRepository 
git add .
git commit -m '创建远程库'
git remote add origin https://gitee.com/binzi56/CocoapodsRemoteRepository.git
git push origin master -f
//添加tag
git tag 0.1.0
git push --tags

//查看远程库spec
pod repo
//这里缺少gitee远程spec索引库,创建ZBGiteeSpec库后
pod repo add ZBGiteeSpec https://gitee.com/binzi56/ZBGiteeSpec.git
pod repo push ZBGiteeSpec LocalRepository.podspec
//最终
pod install
```
