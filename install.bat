:: Automatic installation for my personal apps on Windows systems
:: Created by Dan Koller 2021

echo "Installing essential software..."
:: Install basic programs
winget install --force Google.Chrome
winget install Google.Drive
winget install Microsoft.WindowsTerminal
winget install Adobe.AdobeAcrobatReaderDC
winget install -e --id geeksoftwareGmbH.PDF24Creator
winget install Notepad++.Notepad++
winget install Discord.Discord
winget install Spotify.Spotify
echo "...done!"

echo "Installing development tools..."
:: Install development programs
:: Runtimes
winget install --id AdoptOpenJDK.OpenJDK.11
winget install Python.Python.3
winget install OpenJS.Nodejs
:: IDEs & editors
winget install JetBrains.IntelliJIDEA.Community
winget install Microsoft.VisualStudioCode
winget install vim.vim
:: Data science
winget install -e --id Anaconda.Anaconda3
:: Other tools
winget install Git.Git
winget install GitHub.GitHubDesktop
winget install Postman.Postman
winget install wsl --install
echo "...done!"

:: Copy settings
xcopy .\settings.json C:\Users\Daniel\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState

:: Other tools
echo "Don't forget to install gradle (https://gradle.org/install/)"
echo "Install Fira Code font (available at https://fonts.google.com/?query=Nikita+Prokopov)"

:: Reminders
echo "Please restart your system now."
