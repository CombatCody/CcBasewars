include('shared.lua')
function ENT:SetupDataTables()
	self:NetworkVar( "Float", 0, "Amount" );
	self:NetworkVar( "String", 1, "Buyer");
	self:NetworkVar( "Bool", 2, "Powered" );
end

function ENT:Draw()
	self.Entity:DrawModel()
	if LocalPlayer():GetEyeTrace().Entity == self then
		self:DrawEntityOutline()
	end
	self:DrawInfo()
end