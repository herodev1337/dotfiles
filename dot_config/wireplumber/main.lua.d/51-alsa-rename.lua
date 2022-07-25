rule = {
    matches = {
      {
        { "device.name", "equals", "alsa_card.usb-DisplayLink_LAPDOCK*" },
      },
    },
    apply_properties = {
      ["device.description"] = "Dock",
      ["device.disabled"] = true
    },
  }
  
  table.insert(alsa_monitor.rules,rule)