jetbrainsintellijidea)
    name="IntelliJ IDEA"
    type="dmg"
    jetbrainscode="II"
    if [[ $(arch) == i386 ]]; then
        jetbrainsdistribution="mac"
    elif [[ $(arch) == arm64 ]]; then
        jetbrainsdistribution="macM1"
    fi
    downloadURL="https://download.jetbrains.com/product?code=${jetbrainscode}&latest&distribution=${jetbrainsdistribution}"
    updateData=$(curl -fsL 'https://www.jetbrains.com/updates/updates.xml')
    appNewVersion=$( <<<"$updateData" xpath "string(//product[@name='IntelliJ IDEA']//channel[@id='IC-IU-RELEASE-licensing-RELEASE']//build[1]/@version)" )
    expectedTeamID="2ZEFAR8TH3"
    ;;
