
Basically every messaging/chat service has a different api.
That's good for a multitude of reasons.
However, porting different projects to them can be a pain and time consuming.

A unified api for them.
It works through a middleware that runs filters over the messages
Like this example for skype
```cr
skype
  on message
    filter message using skypedown # Skypes version of formatting
    filter message using links
    filter message using images
  end
end
```
