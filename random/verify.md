```
class Command::Verify < Executor::Command

Yaml yaml = new Yaml

String document = # However you get the document

HashMap<String, String> parsedYaml = yaml.load(document)

onCommand "verify" do |sender, cmd, label, *args|
  
  if sender is a Player
    let key of String
    let uuid of UUID
    
    key = args[0]
  
    player = new Player from sender
    uuid = player.uuid
    
    if parsedYaml.containsKey(uuid)
      if key == parsedYaml.get(uuid)
        player.
      else
      end
    else
    end
    
  else
    sender.msg "You must be a real player to use this command!"
  end
end
    
    
  
