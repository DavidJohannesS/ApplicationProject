Auto generated vpn peers, 1-3 already in use:
for i in {4..7}
do
  PRIVATE_KEY=$(wg genkey)
  PUBLIC_KEY=$(echo $PRIVATE_KEY | wg pubkey)
  echo "[Interface]
PrivateKey = $PRIVATE_KEY
Address = 10.0.0.$i/24

[Peer]
PublicKey = bjz7nUQpI3REDACTEDh6JfmAAraksaB69f2mClw=
AllowedIPs = 192.168.0.22/32
Endpoint = 80.10REDACTED820" > wg0-peer$i.conf
done
