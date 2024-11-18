adresaip=$(dig +short "$3" "$1")
ip="$2"
if [ "$ip" != "$adresaip" ]; then
echo "Adresele nu coincid"
else
echo "Adresele IP coincid"
fi
