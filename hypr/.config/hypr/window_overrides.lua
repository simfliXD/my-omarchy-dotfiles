-- Personal window rules migrated from window-overrides.conf.
-- Uses Omarchy's o.window(match, rules) helper so rules stay in the Lua config flow.

-- Browser tags.
o.window("^([Ff]irefox|org.mozilla.firefox|[Ff]irefox-esr|[Ff]irefox-bin)$", { tag = "+browser" })
o.window("^([Gg]oogle-chrome(-beta|-dev|-unstable)?)$", { tag = "+browser" })
o.window("^(chrome-.+-Default)$", { tag = "+browser" }) -- Chrome PWAs
o.window("^([Mm]icrosoft-edge(-stable|-beta|-dev|-unstable))$", { tag = "+browser" })
o.window("^(Brave-browser(-beta|-dev|-unstable)?)$", { tag = "+browser" })
o.window("^([Tt]horium-browser|[Cc]achy-browser)$", { tag = "+browser" })
o.window("^(zen-alpha|zen)$", { tag = "+browser" })
o.window({ title = "^([Dd]iscord.*)$" }, { tag = "-browser" })

-- Notification tag.
o.window("^(swaync-control-center|swaync-notification-window|swaync-client|class)$", { tag = "+notif" })

-- Terminal tag.
o.window("^(Ghostty|Alacritty|kitty|kitty-dropterm)$", { tag = "+terminal" })

-- Email tag.
o.window("^([Tt]hunderbird|org.gnome.Evolution)$", { tag = "+email" })
o.window("^(eu.betterbird.Betterbird)$", { tag = "+email" })

-- Social media tag.
o.window({ title = "^([Dd]iscord.*)$" }, { tag = "+socialmedia" })
o.window("^(discord|vesktop|Vencord)$", { tag = "+socialmedia" })
o.window("^(Slack|Signal|TelegramDesktop|whatsapp-for-linux|Element|skypeforlinux|zoom|Microsoft Teams)$", { tag = "+socialmedia" })

-- Code editor tag.
o.window("^(codium|codium-url-handler|VSCodium)$", { tag = "+code_editor" })
o.window("^(VSCode|code|code-url-handler)$", { tag = "+code_editor" })
o.window("^(jetbrains-.+)$", { tag = "+code_editor" }) -- JetBrains IDEs
o.window("^(emacs|org.gnu.emacs)$", { tag = "+code_editor" })
o.window("^(sublime_text)$", { tag = "+code_editor" })
o.window("^(kate)$", { tag = "+code_editor" })
o.window("^(micro|micro-editor)$", { tag = "+code_editor" })
o.window("^(.*.[Zz]ed)$", { tag = "+code_editor" })

-- Development tag.
o.window("^(Unity|unityhub.*)$", { tag = "+development" })
o.window("^(Unreal Engine)$", { tag = "+development" })
o.window("^(Godot)$", { tag = "+development" })
o.window("^(blender)$", { tag = "+development" })

-- Photo/video editor tag.
o.window("^(gimp|.*Pinta)$", { tag = "+photo_video_editor" })
o.window("^(kdenlive|shotcut|openshot-qt|flowblade)$", { tag = "+photo_video_editor" })
o.window("^(davinci-resolve|davinci-resolve-studio)$", { tag = "+photo_video_editor" })
o.window("^(darktable|rawtherapee)$", { tag = "+photo_video_editor" })

-- Game and launcher tags.
o.window("^(gamescope)$", { tag = "+games" })
o.window("^([Mm]inecraft.*)$", { tag = "+games" })
o.window({ content = 3 }, { tag = "+games" }) -- Content type 3 = game

o.window("^(steam_app_\\d+|steam)$", { tag = "+gamelauncher" })
o.window({ title = "^(Epic Games Launcher)$" }, { tag = "+gamelauncher" })
o.window("^(Lutris|HeroicGamesLauncher|faugus-launcher)$", { tag = "+gamelauncher" })
o.window("^(.*atlauncher.*)$", { tag = "+gamelauncher" })

-- Multimedia tags.
o.window("^([Aa]udacious)$", { tag = "+multimedia" })
o.window("^([Mm]pv|vlc)$", { tag = "+multimedia_video" })

-- Music tags.
o.window("^(.*spotatui|spotify-qt|[Ss]potify|spotify-tui)$", { tag = "+music" })
o.window({ title = "^(.*spotatui|spotify-tui)$" }, { tag = "+music" })
o.window("^(cliamp)$", { tag = "+music" })

-- Dialog tags
o.window({ title = "^([Dd]iscord.*)$" }, { tag = "+dialog" })
o.window({ initial_title = "^(Authentication Required)$" }, { tag = "+dialog" })
o.window({ initial_title = "^(File Browser)$" }, { tag = "+dialog" })
o.window({ initial_title = "^(Select Folder|Open Folder)$" }, { tag = "+dialog" })
o.window({ initial_title = "^(Open File|Open Files)$" }, { tag = "+dialog" })
o.window({ initial_title = "^(Save As)$" }, { tag = "+dialog" })

-- Settings tag.
o.window("^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$", { tag = "+settings" })
o.window("^(qt5ct|qt6ct|Yad)$", { tag = "+settings" })

-- Settings dialogs.
o.window({ initial_title = "^(Settings)$" }, { tag = "+settings" })
o.window({ initial_title = "^(Volume Control)$" }, { tag = "+settings" })
o.window({ initial_title = "^(Audio Settings)$" }, { tag = "+settings" })

-- Window rules based on tags.
o.window({ tag = "email*" }, { workspace = "5" })
o.window({ tag = "gamelauncher*" }, { workspace = "2" })
o.window({ tag = "games*" }, { workspace = "2" })
o.window({ tag = "code_editor*" }, { workspace = "4" })
o.window({ tag = "development*" }, { workspace = "3" })
o.window({ tag = "multimedia_video*" }, { workspace = "2" })
o.window({ tag = "music*" }, { workspace = "6" })

-- Browser.
o.window({ fullscreen = false, tag = "browser*" }, { opacity = "1.0 1.0" })

-- Social media.
o.window({ tag = "socialmedia*" }, { workspace = "5" })

-- Code editor.
o.window({ tag = "code_editor*" }, { workspace = "4" })
o.window({ class = "(codium|codium-url-handler|VSCodium)", title = "(.*codium.*|.*VSCodium.*)" }, { float = true })
o.window({ float = false, workspace = "w[tv1]s[false]", tag = "code_editor*" }, { opacity = "1.0 1.0" })

-- Photo/video editors.
o.window({ tag = "photo_video_editor*" }, { workspace = "4" })
o.window({ tag = "photo_video_editor*" }, { opacity = "1.0 1.0" })
o.window({ float = false, workspace = "w[tv1]s[false]", tag = "photo_video_editor*" }, { border_size = 0 })
o.window({ float = false, workspace = "w[tv1]s[false]", tag = "photo_video_editor*" }, { rounding = 0 })

-- Game launchers.
o.window({ tag = "gamelauncher*" }, { float = true, center = true })

-- Games.
o.window({ tag = "games*" }, { no_blur = true })
o.window({ tag = "games*" }, { fullscreen = 1 })

-- Music.
o.window({ tag = "music*" }, { tile = true })

-- Dialogs.
o.window({ tag = "dialog*" }, { float = true, center = true, pin = true })
o.window({ tag = "dialog*" }, { size = "monitor_w*0.5 monitor_h*0.75" })
