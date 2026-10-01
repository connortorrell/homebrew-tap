cask "look-away" do
  version "1.1.0"
  sha256 "646a481fb730847678bf2913137e1ac278305d7eb631effae87f887729807065"

  url "https://github.com/connortorrell/look-away/releases/download/v#{version}/LookAway.dmg"
  name "Look Away"
  desc "Menu bar reminder for the 20/20/20 eye-strain rule"
  homepage "https://github.com/connortorrell/look-away"

  # Look Away updates itself from the menu.
  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Look Away.app"

  uninstall quit: "com.connortorrell.LookAway"

  zap trash: [
    "~/Library/Logs/Look Away",
    "~/Library/Preferences/com.connortorrell.LookAway.plist",
  ]
end
