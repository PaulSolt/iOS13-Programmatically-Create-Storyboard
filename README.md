# iOS13-Programmatically-Create-Storyboard
iOS13 Programmatically Create Storyboards using Dependency Injection

Around lines ~40 you can switch (uncomment/comment) between either an entirely programmatic View Controller or a Storyboard instantiated View Controller.

```swift
// TODO: Switch between the two view controllers by uncommenting/commenting
window.rootViewController = customVC
//window.rootViewController = storyboardVC
```

## Thoughts

1. Programmatic means you'll do all UI and Auto Layout in the code
2. Storyboard means you'll design it mostly in the Storyboard file, but may tweak settings and display it programmatically

For more complex layouts, it's easier to do it programmatically (especially if you need to layout views on top of each other) or space out a variable number of buttons.

I use a mixture of programmatic and storyboard/xib layouts.

