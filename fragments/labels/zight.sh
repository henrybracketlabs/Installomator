zight)
    name="Zight"
    type="zip"
    sparkleFeed=$(curl -fsL 'https://share.zight.com/api/v4/clients/mac/current-version')
    appNewVersion="$(echo $sparkleFeed | xpath 'string(//rss/channel/item/enclosure/@sparkle:shortVersionString)' 2>/dev/null)"
    downloadURL="$(echo $sparkleFeed | xpath 'string(//rss/channel/item/enclosure/@url)' 2>/dev/null)"
    expectedTeamID="DCMDDJEW9X"
    ;;