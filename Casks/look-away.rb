cask "look-away" do
  version "1.1.1"
  sha256 "ccca9688afdfcd440d6a54133ddac1b41df6bc46d7e6043636b72e5a6b5cad28"

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
