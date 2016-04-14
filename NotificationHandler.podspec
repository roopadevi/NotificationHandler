Pod::Spec.new do |spec|

spec.name         = "NotificationHandler"
spec.author       = { "Roopadevi.Boopathi" => "roopadevi.boopathi@pwc.com" }
spec.version      = "0.1.1"
spec.summary      = "Centralised component to handle Notification."
spec.homepage     = "https://github.com/roopadevi/NotificationHandler"
spec.license      = { :type => "MIT", :file => "LICENSE" }
spec.platform     = :ios, "8.0"

spec.source       = { :git => "https://github.com/roopadevi/NotificationHandler.git", :tag => "#{spec.version}"}
spec.source_files  = "NotificationHandler/NotificationCenter/*.{swift}"

end