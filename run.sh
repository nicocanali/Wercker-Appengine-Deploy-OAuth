sudo apt-get update
sudo apt-get install unzip

cd $WERCKER_ROOT

debug "Downloading appengine"
curl -O https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.18.zip

debug "Unzipping"
unzip -q google_appengine_1.9.18.zip
rm google_appengine_1.9.18.zip

google_appengine/appcfg.py update ./ --oauth2_refresh_token="$WERCKER_APPENGINE_DEPLOY_OAUTH_TOKEN"
success "Finished"