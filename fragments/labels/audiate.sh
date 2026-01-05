audiate)
    name="Audiate"
    type="dmg"
    downloadURL="https://cdn.cloud.techsmith.com/audiate/latest/Audiate.dmg"
    appNewVersion=$(curl -fs https://support.techsmith.com/hc/en-us/articles/360042615411-Audiate-Version-History | grep -o '<h2[^>]*>.*</h2>' | grep -E '[0-9]{4}\.[0-9]+\.[0-9]+' | grep -oE '[0-9]{4}\.[0-9]+\.[0-9]+' | head -1)
    expectedTeamID="7TQL462TU8"
    ;;