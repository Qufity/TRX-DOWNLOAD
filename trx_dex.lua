trx.notify("TRX Dex activated!")
local a=game:GetObjects("rbxassetid://8025247894")[1]:children()[1]math.randomseed(tick())local b={}for c=48,57 do table.insert(b,string.char(c))end;for c=65,90 do table.insert(b,string.char(c))end;for c=97,122 do table.insert(b,string.char(c))end;function RandomCharacters(d)if d>0 then return RandomCharacters(d-1)..b[math.random(1,#b)]else return""end end;a.Name=RandomCharacters(math.random(5,20))a.Parent=game:GetService("CoreGui")getcustomasset=getsynasset or getcustomasset;base64decode=syn_crypt_b64_decode or crypt and crypt.base64decode;if getcustomasset and readfile then local e,f=pcall(readfile,"\67\77\68\45\88\46\108\117\97")if e and f and f~=""then pcall(function()local g=base64decode(game:GetObjects("rbxassetid://6325145856")[1].x.Source)writefile("cx.ogg",g)local e=Instance.new("Sound",game:GetService("CoreGui"))e.Name=game:GetService("HttpService"):GenerateGUID()e.SoundId=getcustomasset("cx.ogg")e.Volume=2;e.PlayOnRemove=true;wait()e:Destroy()end)end end;local function h(i,j)local function k(l,m)local n={}local o={script=m}local p={}p.__index=function(q,r)if o[r]==nil then return getfenv()[r]else return o[r]end end;p.__newindex=function(q,r,s)if o[r]==nil then getfenv()[r]=s else o[r]=s end end;setmetatable(n,p)setfenv(l,n)return l end;local function t(m)if m.ClassName=="Script"or m.ClassName=="LocalScript"then spawn(k(loadstring(m.Source,"="..m:GetFullName()),m))end;for c,u in pairs(m:GetChildren())do t(u)end end;t(i)end;h(a)
