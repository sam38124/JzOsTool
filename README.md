[![Platform](https://img.shields.io/badge/平台-%20IOS%20-brightgreen.svg)](https://github.com/sam38124)
[![characteristic](https://img.shields.io/badge/特點-%20輕量級%20%7C%20簡單易用%20%20%7C%20穩定%20-brightgreen.svg)](https://github.com/sam38124)
# JzOsTool
#### 一些IOS的小元件
## 目錄
* [如何導入到專案](#Import)
* [簡易碼表](#clock)
* [Http工具類](#Http)
* [自定義TextField](#TextField)
* [關於我](#About)

<a name="Import"></a>
## 如何導入到項目
> 支持framework導入。 <br/>

#### 1.首先將framework拉入要導入的Project當中
<img src="https://github.com/sam38124/JzOsFrameWork/blob/master/i2.png" width = "800"  alt="i1" /><a name="Use"></a>
#### 2.將三個選項打勾
<img src="https://github.com/sam38124/JzOsFrameWork/blob/master/i1.png" width = "800"  alt="i1" /><a name="Use"></a>
#### 3.選擇Embed and signed
<img src="https://github.com/sam38124/JzOsFrameWork/blob/master/i3.png" width = "800"  alt="i1" /><a name="Use"></a>
<a name="clock"></a>
## 簡易碼表

#### 1.取得timer
```swift
var a=JzOSTool.timer()
```
#### 2.碼表暫停並返回秒數
```swift
var second=a.stop()
```
#### 3.碼表歸零
```swift
a.zeroing()
```
<a name="Http"></a>
## HTTP工具
#### 1.取得網頁原始碼
```swift
JzOSTool.http().getFileText("smpleurl.com", { text in })
```
#### 2.列出資料夾中的所有檔案
```swift
 JzOSTool.http().listHttpFile("網域","路徑",{
     files in
        })
```
<a name="TextField"></a>
## 自定義TextField
#### 建立宣告
```swift
  @IBOutlet var textfield: JzTextField!
```
#### 設定過濾字元
```swift
  textfield.digits="abcdefABCDEF0123456789"
```
#### 設定字數限制
```swift
  textfield.textCount=8
```
#### 自動轉換大寫
```swift
 textfield.upcase=true
```
#### 監聽字元變化
```swift
 textfield.textWillChange = { a in}
```
#### 監聽字元結束編輯
```swift
 textfield.textDidEdit = {}
```

<a name="About"></a>
### 關於我
橙的電子android and ios developer

*line:sam38124

*gmail:sam38124@gmail.com
