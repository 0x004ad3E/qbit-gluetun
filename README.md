# qbittorrent-gluetun-protonvpn docker compose
qbittorrent and gluetun docker using proton vpn

to start  

docker compose up

* Use proton vpn, wireguard configuration
* forward port from proton vpn to qbittorrent, so that qbittorrent uses the fowarded port for torrenting. This is done by executing qbit.sh when a new port is forwarded
* update the volume path to point to the location of the config and qbit.sh
* http proxy server available on port 8888
* qbittorrent web ui available on port 6520
