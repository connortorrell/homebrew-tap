cask "look-away" do
  version "1.1.2"
  sha256 "40bb728af483d4b49a3e1c2f7818d1db4f87eb588bfd6d593351ea571014dbc1"

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
