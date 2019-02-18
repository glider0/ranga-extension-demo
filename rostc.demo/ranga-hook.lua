local hook = os.getenv("NSWA_HOOK")

ranga.openlog("extension demo")
ranga.syslog("hook '" .. hook .. "' catched.")
