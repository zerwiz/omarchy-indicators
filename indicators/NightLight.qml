import QtQuick
import qs.Ui

BarIndicator {
  id: root

  readonly property var nightlightService: bar?.shell?.firstPartyServiceFor("omarchy.nightlight")

  active: nightlightService ? nightlightService.enabled : false
  activeText: "󰔎"
  inactiveText: "󰔎"
  activeTooltipText: "Night Light on — right-click to change strength"
  inactiveTooltipText: "Night Light off — left-click on, right-click for strength"

  // Deliberately NOT nightlightService.setNightlight(): that service hardcodes
  // 4000K. nightlight-strength honours a saved temperature instead, then asks
  // the service to re-probe so this icon updates.
  function toggle() {
    if (bar) bar.run("nightlight-strength toggle")
  }

  onPressed: function(button) {
    // Diagnostic + behaviour. Qt.LeftButton = 1, Qt.RightButton = 2, Qt.MiddleButton = 4.
    console.log("[nightlight] pressed button=" + button
                + " (right=" + Qt.RightButton + ")")
    if (button === Qt.RightButton) {
      // Omarchy menu, opened straight at the strength list.
      if (bar) bar.run("omarchy menu summon light")
    } else {
      root.toggle()
    }
  }
}
