
#!/bin/sh


PLUGINS_DIR=/jenkins_hal/plugins
PLUGINS_REPO=https://updates.jenkins-ci.org/download/plugins/

# read each plug from plugins.txt
while read plug; do
    # split-format: sonar@2.12
    NAME="$(cut -d'@' -f1 <<<"$plug")"
    VERSION="$(cut -d'@' -f2 <<<"$plug")"
    DOWNLOAD_URL=$PLUGINS_REPO$NAME/$VERSION/$NAME.hpi
    echo "targetting URL: $DOWNLOAD_URL"
    sudo wget -P $PLUGINS_DIR $DOWNLOAD_URL
done <plugins.txt
