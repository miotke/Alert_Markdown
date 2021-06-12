# Alert Markdown

Feedback project submited to Apple.

Ticket number: FB9167304

I don't know if markdown/AttributedString not rendering inside an Alert View is expected behavior or not. As I think more about this it could be due to the fact that AttributedStrings can't be rendered at all in Alert Views and it's not just markdown.

## Feedback details sent to Apple

I was trying to render some markdown in an Alert view to give the user of my app the knowledge that they can use markdown and how to use it in a TextEditor view. I was planning on displaying this information in a SwiftUI Alert however, the alert does not render markdown. Instead it renders just a plain string. This appears to happen with both single line and multi-line strings. I passed this through a function that returns an AttributedString as well and received the same results, the Alert View does not render the markdown. 

Attached to this Feedback ticket is a sample project displaying the problem. 

1. Create a constant with a string containing markdown.
2. Pass that string into a function which returns an AttributedString
3. Pass the returned AttributedString constant into the Text View of the Alert View
4. Toggle Alert using a Button
5. Run project and tap button

Expected behavior would be to have the markdown render in the Alert's Text View

The string renders as a plain string.

