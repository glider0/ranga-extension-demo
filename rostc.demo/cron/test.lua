local args = os.getenv("RANGA_CRON_ARGS")

ranga.openlog("extension demo")
ranga.syslog("cron test waken up with args '" .. args .. "'.")
