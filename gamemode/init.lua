AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "HUD.lua" )
AddCSLuaFile( "cl_buymenu.lua" )

include( "shared.lua" )
include("money.lua")
include("concommand.lua")
include( "database.lua")
include("chat.lua")
include( "player.lua" )

function GM:PlayerConnect( ply, ip, steamID)
print (say "player: " .. ply .. ", has joined the game.")
end

function GM:PlayerSpawn( ply )
      ply:SetGravity( .75 )
      ply:SetMaxHealth( 100 )
      ply:SetRunSpeed( 400 )
      ply:SetWalkSpeed( 350 )
	  ply:Give( "weapon_physcannon" )
      ply:Give( "weapon_physgun" )
      ply:Give( "gmod_tool" )
	  ply:Give("weapon_crowbar")
	  ply:Give("gmod_camera")
	  ply:SetModel("models/player/Group01/male_03.mdl")
	  ply:AllowFlashlight( true )
end