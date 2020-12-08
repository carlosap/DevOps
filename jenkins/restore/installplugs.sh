
#!/bin/sh

JENKINS_HOME=/jenkins_hal
PLUGINS_DIR=$JENKINS_HOME/plugins
PLUGINS_REPO=https://updates.jenkins-ci.org/download/plugins/
PLUGINS_TOKEN='@'

if [ -d $PLUGINS_DIR ]; then
        sudo rm -rf $PLUGINS_DIR/*
        #read each plug from plugins.txt
        while read plug; do
            # split-format: sonar@2.12 lets make sure the '@' found
            if [[ "$plug" == *"$PLUGINS_TOKEN"* ]]; then
                NAME="$(cut -d'@' -f1 <<<"$plug")"
                VERSION="$(cut -d'@' -f2 <<<"$plug")"
                if [[ ! -z "$NAME""$VERSION" ]]; then
                    DOWNLOAD_URL=$PLUGINS_REPO$NAME/$VERSION/$NAME.hpi
                    echo "targetting URL: $DOWNLOAD_URL"
                    sudo wget -P $PLUGINS_DIR $DOWNLOAD_URL
                fi
            fi
        done <plugins.txt
    else
        echo "the jenkins home directory does not exist - $PLUGINS_DIR"
fi


