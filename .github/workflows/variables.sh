export NE_VERSION=latest
export NE_URL
export NE_NAME=node_exporter
if [[ -z $SO ]]; then
  export SO=linux
fi;
if [[ -z $ARCHITECTURE ]]; then
  export ARCHITECTURE=amd64
fi;

echo "NE_VERSION=$NE_VERSION" >> $GITHUB_ENV
echo "NE_URL=$NE_URL" >> $GITHUB_ENV
echo "NE_NAME=$NE_NAME" >> $GITHUB_ENV
echo "SO=$SO" >> $GITHUB_ENV
echo "ARCHITECTURE=$ARCHITECTURE" >> $GITHUB_ENV