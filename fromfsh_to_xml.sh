
sushi .
rm -rf fsh-generated/xml
mkdir -p fsh-generated/xml

for filename in fsh-generated/resources/$1*.json; do
echo "Converting $filename ...."
echo ". . . . . "
    f="$(basename -- $filename)"
    b=${f%.*}
    java -jar validator_cli.jar  fsh-generated/resources/"$b".json -version 4.0.1  -convert -output $2"$b".xml
done
