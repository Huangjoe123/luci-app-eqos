module("luci.controller.eqos", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/eqos") then
		return
	end
	
	local page

	page = entry({"admin", "network", "eqos"},firstchild(), _("EQoS"),8).dependent = true
	page = entry({"admin", "network", "eqos"},cbi("eqos"), _("EQoS"))
end
