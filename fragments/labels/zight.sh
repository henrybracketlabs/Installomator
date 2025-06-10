zight)
    name="Zight"
    type="zip"
    sparkleData=$(curl -fsL 'https://share.zight.com/api/v4/clients/mac/current-version')
    appNewVersion=$( <<<"$sparkleData" xpath 'string(//item[last()]/sparkle:shortVersionString)' )
    downloadURL=$( <<<"$sparkleData" xpath 'string(//item[last()]/enclosure/@url)' )
    expectedTeamID="DCMDDJEW9X"
    ;;
