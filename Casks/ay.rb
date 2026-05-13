cask "ay" do
  version "1.0.1"

  on_intel do
    sha256 "bdc62bdb0d821040ee18f32d9ee52f33bab3fef2a7b287114924f753614f20e9"
    url "https://github.com/Adishram/ay-messaging-app/releases/download/v#{version}/A.Y-#{version}.dmg"
  end
  on_arm do
    sha256 "cd311da671ae3fa20597be99c39629942d1fe275785e96571a95c65e712885d0"
    url "https://github.com/Adishram/ay-messaging-app/releases/download/v#{version}/A.Y-#{version}-arm64.dmg"
  end

  name "A&Y"
  desc "Serverless P2P Video Calling & Messaging App"
  homepage "https://github.com/Adishram/ay-messaging-app"

  app "A&Y.app"

  zap trash: [
    "~/Library/Application Support/ay-messaging-app",
    "~/Library/Preferences/com.adishram.aymessaging.plist",
    "~/Library/Saved Application State/com.adishram.aymessaging.savedState",
  ]
end
