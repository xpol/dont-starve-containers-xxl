local fridge = GetModConfigData('fridge', false)
local SIZE_NAME = GetModConfigData('size', 'XL')

Assets = {
	Asset('ATLAS', 'images/ui_backpack_5x5.xml'),
	Asset('ATLAS', 'images/ui_backpack_5x10.xml')
}


local unpack, Vector3 = GLOBAL.unpack, GLOBAL.Vector3

local SIZES = {
	XL = {
		rows = 5,
		atlas = 'images/ui_backpack_5x5.xml',
		image = 'ui_backpack_5x5.tex',
	},
	XXL = {
		rows = 10,
		atlas = 'images/ui_backpack_5x10.xml',
		image = 'ui_backpack_5x10.tex',
	}
}

local conf = SIZES[SIZE_NAME] or SIZES.XL

local function expandContainer(inst, x, y)
	local slotpos = {}
	for iy = 1, conf.rows do
		for ix = 4,0,-1 do
			slotpos[#slotpos+1] = Vector3(-75*ix + 130, -75*iy + 320, 0)
		end
	end
	local container = inst.components.container
	container.numslots = #slotpos
	container.widgetslotpos = slotpos

	container.widgetanimbank = nil
	container.widgetanimbuild = nil
	container.widgetbgatlas = conf.atlas
	container.widgetbgimage = conf.image

	container.widgetpos = Vector3(x, y, 0)

	if fridge and not inst:HasTag('fridge') then
		inst:AddTag('fridge')
	end

	if inst:HasTag('fridge') then
		container.invslottint = {0.6, 0.95, 0.99, 1}
	end
end

AddPrefabPostInit('backpack', function(inst)
	expandContainer(inst, -115, -30)
end)

AddPrefabPostInit('treasurechest', function(inst)
	expandContainer(inst, -225, -30)
end)

AddPrefabPostInit('icebox', function(inst)
	expandContainer(inst, -225, -30)
end)

AddClassPostConstruct('widgets/invslot', function(self, num, atlas, bgim, owner, container)
	if container.invslottint then
		self.bgimage:SetTint(unpack(container.invslottint))
	end
end)
