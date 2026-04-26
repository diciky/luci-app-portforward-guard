module("luci.controller.portforward", package.seeall)

function index()
    entry({"admin", "services", "portforward"}, template("portforward/status"), _("PortForward Guard"), 60).dependent = true
    entry({"admin", "services", "portforward", "status"}, template("portforward/status"), _("Connections"), 1).leaf = true
    entry({"admin", "services", "portforward", "blacklist"}, template("portforward/blacklist"), _("Blacklist"), 2).leaf = true
    entry({"admin", "services", "portforward", "whitelist"}, template("portforward/whitelist"), _("Whitelist"), 3).leaf = true
    entry({"admin", "services", "portforward", "logs"}, template("portforward/logs"), _("Logs"), 4).leaf = true
    entry({"admin", "services", "portforward", "settings"}, template("portforward/settings"), _("Settings"), 5).leaf = true
end
