# mtasa-residence-api
A resource that allows you to get the player's country, city, region, and provider.

**Documentation**

Getting information (Server side only and the player must be logged in):
```lua
  -- Export:
  exports['mtasa-residence-api']:GetPlayerCountry( player ) -- country
  exports['mtasa-residence-api']:GetPlayerCity( player ) -- city
  exports['mtasa-residence-api']:GetPlayerProvider( player ) -- provider
  exports['mtasa-residence-api']:GetPlayerRegion( player ) -- region
```
