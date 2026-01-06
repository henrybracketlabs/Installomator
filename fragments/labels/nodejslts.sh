nodejslts)
    name="nodejs"
    type="pkg"
    # Get latest version from index.json - first entry is always the latest
    appNewVersion=$(curl -fsL "https://nodejs.org/dist/index.json" | grep -o '"version":"[^"]*"' | head -1 | sed -E 's/"version":"v([^"]+)"/\1/')
    appCustomVersion(){ /usr/local/bin/node -v | sed 's/^v//' ; }
    downloadURL="https://nodejs.org/dist/v${appNewVersion}/node-v${appNewVersion}.pkg"
    expectedTeamID="HX7739G8FX"
    ;;
