https://forum.f-droid.org/t/how-to-backup-f-droid-apps-in-case-i-lose-my-phone/17568/3
```
# Write list of apps to file
adb shell "pm list packages" | sed 's/^package://' > installed_apps.txt
```
```
# Download and install each app in app list to device
while read -r app; do
    suggested_version_code="$(curl "https://f-droid.org/api/v1/packages/${app}" | jq -r ".suggestedVersionCode")"
    curl "https://f-droid.org/repo/${app}_${suggested_version_code}.apk" --output "${app}.apk"
    adb install "${app}.apk"
done < installed_apps.txt
```
|App||
|-|-|
|⭐RethinkDNS|[F-droid](https://f-droid.org/packages/com.celzero.bravedns/)|
|Aegis Authenticator | [F-droid](https://f-droid.org/packages/com.beemdevelopment.aegis/)
|Amaze File Manager|[IzzyOnDroid](https://apt.izzysoft.de/fdroid/index/apk/com.amaze.filemanager)|
|Arcticons Dark|[F-droid](https://f-droid.org/packages/com.donnnno.arcticons/)|
|Aurora Store|[F-droid](https://f-droid.org/en/packages/com.aurora.store/)|
|Binary Eye|[F-droid](https://f-droid.org/en/packages/de.markusfisch.android.binaryeye/)|
|ActicityWatch|[Releases](https://github.com/ActivityWatch/activitywatch/releases)
|Calculator-inator |[F-droid](https://f-droid.org/packages/com.inator.calculator/)|
|Coffee|[F-droid](https://f-droid.org/packages/com.github.muellerma.coffee/)|
|FakeStandby|[F-droid](https://f-droid.org/packages/android.jonas.fakestandby/)|
|AlwaysOn|[F-droid](https://f-droid.org/packages/io.github.domi04151309.alwayson/)|
|Collabora Office|Custom Repo|
|ConverterNOW|[F-droid](https://f-droid.org/packages/com.ferrarid.converterpro/)|
|Aria2App|[F-droid](https://f-droid.org/packages/com.gianlu.aria2app/)|
|Everest|[F-droid](https://f-droid.org/packages/io.github.mwageringel.everest/)|
|DetoxDroid|[Release](https://github.com/flxapps/DetoxDroid/releases)|
|⭐FlorisBoard|[F-droid](https://f-droid.org/en/packages/dev.patrickgold.florisboard/)|
|⭐Forkgram|[F-droid](https://f-droid.org/en/packages/org.forkgram.messenger/)|
|⭐Geometric Weather|[F-droid](https://f-droid.org/packages/wangdaye.com.geometricweather/)|
|⭐Infinity|[F-droid](https://f-droid.org/packages/ml.docilealligator.infinityforreddit/)|
|⭐K-9 Mail|[F-droid](https://f-droid.org/packages/com.fsck.k9/)|
|⭐Koler|[F-droid](https://f-droid.org/packages/com.chooloo.www.koler/)|
|⭐Lawnchair|Custom Repo|
|⭐Osmand+|[F-droid](https://f-droid.org/en/packages/net.osmand.plus/)|
|Open Note Scanner | [F-droid](https://f-droid.org/packages/com.todobom.opennotescanner/)|
|⭐Mull|[F-droid](https://f-droid.org/en/packages/us.spotco.fennec_dos/)|
|⭐MuPDF viewer|[F-droid](https://f-droid.org/en/packages/com.artifex.mupdf.viewer.app/)|
|⭐Newpipe X|[IzzyOnroid](https://apt.izzysoft.de/fdroid/index/apk/org.polymorphicshade.newpipe)|
|Doodle: Live Wallpapers|[F-droid](https://f-droid.org/en/packages/xyz.zedler.patrick.doodle/)|
|Vernet|[F-droid](https://f-droid.org/packages/org.fsociety.vernet/)|
|Dicio|[F-droid](https://f-droid.org/packages/org.dicio.dicio_android/)|
|Fritter|[F-droid](https://f-droid.org/packages/com.jonjomckay.fritter/)|
|PDF Converter|[F-droid](https://f-droid.org/en/packages/swati4star.createpdf/)|
|Smart AutoClicker|[F-droid](https://f-droid.org/packages/com.buzbuz.smartautoclicker/)|
|Randomix|[F-droid](https://f-droid.org/packages/com.minar.randomix/)|
|SimplyTranslate|[F-droid](https://f-droid.org/en/packages/com.simplytranslate_mobile/)|
|Imagepipe|[F-droid](https://f-droid.org/en/packages/de.kaffeemitkoffein.imagepipe/)|
|Simple Contacts|[F-droid](https://f-droid.org/en/packages/com.simplemobiletools.contacts.pro/)|
|Simple Gallery|[F-droid](https://f-droid.org/en/packages/com.simplemobiletools.gallery.pro/)|
|Simple SMS Messenger|[F-droid](https://f-droid.org/en/packages/com.simplemobiletools.smsmessenger/)|
|Sharik|[F-droid](https://f-droid.org/en/packages/dev.marchello.sharik/)|
|Spotube|[F-droid](https://f-droid.org/packages/oss.krtirtho.spotube/)|
|Syncthing|[F-droid](https://f-droid.org/packages/com.nutomic.syncthingandroid/)|
|Termux|[F-droid](https://f-droid.org/en/packages/com.termux/)|
|Vector Pinball|[F-droid](https://f-droid.org/packages/com.dozingcatsoftware.bouncy/)|
|Aurora|[F-droid](https://f-droid.org/en/packages/com.funkymuse.aurora/)|
|Vector Camera|[F-droid](https://f-droid.org/en/packages/com.dozingcatsoftware.vectorcamera/)|
|Vimusic|[F-droid](https://f-droid.org/en/packages/it.vfsfitvnm.vimusic/)|
|VLC|[F-droid](https://f-droid.org/en/packages/org.videolan.vlc/)
|BlackHole|[IzzyOnDroid](https://android.izzysoft.de/repo/apk/com.shadow.blackhole)
|Vigilante|[F-droid](https://f-droid.org/en/packages/com.crazylegend.vigilante/)|
|Voice Recorder|[F-droid](https://f-droid.org/en/packages/com.simplemobiletools.voicerecorder/)|
|Xtra| [F-droid](https://f-droid.org/packages/com.github.andreyasadchy.xtra/)|
|Memetastic|[F-droid](https://f-droid.org/packages/io.github.gsantner.memetastic/)|
|Spotiflyer|[F-droid](https://f-droid.org/packages/com.shabinder.spotiflyer/)|
|Birday|[F-droid](https://f-droid.org/packages/com.minar.birday/)|
|⭐AliuCord|[Releases](https://github.com/Aliucord/Aliucord/releases/latest/download/Installer-release.apk)| 
|Camera GO|https://t.me/GcamGo/10195|
```
AIMP
AIMP: Audio Cutter
Bitwarden
Vivaldi
Whatsapp
Clock
Proton Mail
Proton Calendar
Proton Drive
Proton VPN
```
