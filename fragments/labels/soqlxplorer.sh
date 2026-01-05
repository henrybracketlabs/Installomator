soqlxplorer)
    name="SoqlXplorer"
    type="zip"
    sparkleData=$(curl -fsL 'https://www.pocketsoap.com/osx/soqlx/appcast.xml')
    appNewVersion=$( <<<"$sparkleData" xpath 'string(//item[last()]/sparkle:shortVersionString)' )
    downloadURL=$( <<<"$sparkleData" xpath 'string(//item[last()]/enclosure/@url)' )
    expectedTeamID="LW4LAY84H7"
    ;;