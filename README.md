# Energy Flux
[Don't forget to join the Discord if you are a User or a Creator of Datapacks : https://discord.gg/a2yX6GD4J7]

This Datapack is an Energy Manager to use if you want to create Industrial Datapacks.
It will create the energy system and will do the transferts for you.

Here is a tutorial to "how to implement" :
- 1 Machine = 1 Glow Item Frame, 1 Wire = 1 Item Frame
  They can have multiples tags :
  - "EF_Use" (Always Required) to know what entities use Energy Flux
  - "EF_CanReceive", if this machine can receive Energy
  - "EF_CanSend", if this machine can send Energy
  - "EF_Wire", if this is a wire
 
  For example, if I want to create a generator, I will summon it with "Tags:["EF_Use","EF_CanSend"]"
 
  For a energy consumer like an Electric Furnace : "Tags:["EF_Use","EF_CanReceive"]"
 
  For a battery : "Tags:["EF_Use","EF_CanReceive","EF_CanSend"]"
 
  For a wire : "Tags:["EF_Use","EF_Wire"]"
- Machines need also scores, there are 3 :
  - "EF_kW", transfert speed for wires BUT generation or energy consumption.
  - "EF_kJmax", max amount of energy
  - "EF_kJ", current energy stored (Need to be 0 by default, not null)
 
  For example, a generator can have EF_kW=10, EF_kJ=0, EF_kJmax=800
 
  For an energy consummer : EF_kW=10, EF_kJ=0, EF_kJmax=800
 
  For a battery : EF_kJ=0, EF_kJmax=20000
 
  For a wire : EF_kW=20


Also, there is an example of Datapack that use Energy Flux : https://github.com/Stoupy51/SimplEnergy
You can copy it to get a good start if you want to add your customs items using energy.
I recommend you to download SimplEnergy and work with Energy Flux too.

Datapack rules :
Always name your scores and tags with a unique prefix to avoid Datapacks compabilities,
for Energy Flux I use "EF_", and "SE_" for SimplEnergy.
