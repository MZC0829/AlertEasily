# AlertEasily
##### Easy to show UIAlertController, written in Swift.

---


## Cocoapods

### 1. Add the following line to your Podfile:

```
platform :ios, '8.0'

target 'YourIosApps' do

  use_frameworks!

  pod 'AlertEasily', '~> 0.0.2'

end
```

### 2. Then, run the following command:

```
$ pod install
```




## Requirements
>
- iOS 8.0+
- swift 3+ and swift 4



## Usage

### - just like


```
showAlert(title: "This is AlertEasily")
```

### - or
```
showAlert(title: "AlertEasily", message: "This is AlertEasily", preferredStyle: .alert, defaultHandler: {
            
            print("clicked default action")
            
        }, cancelHandler: nil)
```

### - or
```
showAlert(title: "AlertEasily", message: "This is AlertEasily", preferredStyle: .alert, defaultHandler: {

            print("clicked default action")

        }) {

            print("clicked cancel action")
        }
```