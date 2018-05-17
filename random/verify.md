```cr
class Command::Verify < Executor::Command

Yaml yaml = new Yaml

String document = # However you get the document

HashMap<String, String> parsedYaml = yaml.load(document)

onCommand "verify" do |sender, cmd, label, *args|
  
  let player of Player
  
  try
    player = (Player) sender
  catch (Exception e)
    player = null
    sender.msg "This command must be issued by a player"
    return true
  end

  if player != null
    let key of String
    let uuid of UUID

    key = args[0]
    uuid = player.uuid

    if parsedYaml.containsKey(uuid)
      if key == parsedYaml.get(uuid)
        player.permissions["frostcraft"]["verify"] = true
      else
        sender.send "Wrong Key..."
        return true
      end
    else
      # Send nothing, the user knows nothing.
      return true
    end
  end
end
```
Then any command with the permissions "verify" or something would work because the player has it.


  
