cask "look-away" do
  version "1.1.3"
  sha256 "c42e525e6fd117129f2022f9703a10e889ca97c6a4f55159960f9114fb4dace4"

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
