Basically every messaging/chat service has a different api.

That's good for a multitude of reasons.

However, porting different projects to them can be a pain and time consuming.

A unified api for them.
It works through a middleware that runs filters over the messages
quick thing
```cr
middleware create chat_service_name
  config actions
    disable everything
    enable message
    with message enable message
    with message enable username
    
    enable typing
    with typing enable username
  end

  event message
    # Client is just from the chat services name api  
    client.on "message" do |message_event|
      
      input = message_event
      output.message   = input.text
      output.username  = input.username
      
      fire self yielding output
    end
  end
  
  event typing
    client.channel[current_channel].on "typing" do |event|
      output.username = event.username || "Someone.."
      fire self yielding output
    end
  end
end
```

and to use it in an application would be something like this.

```rb
using chat_service_name
  login

  on message do |message|
    print "#{message.username} says #{message.message}"
  end
  
  # disabled actions would like
  on image do |image|
    show image
  end
  # would simply not run, and display an error/warning
end
```

However there is a little more then just that.
It should provide filters.

For example, supposed a service allows for a form of markup in the message.
`*I'm italic!* I'm normal!`

You would need filters to 
