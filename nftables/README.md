# nftables

**References**

* [Nftables/Examples - Gentoo Wiki](https://wiki.gentoo.org/wiki/Nftables/Examples)
* [Country IP ranges](https://www.iwik.org/ipcountry/)

**Tools**

* [grelleum/supernets: Aggregates a list of subnets into contiguous supernets.](https://github.com/grelleum/supernets)


**Get and Generate GeoIP List**

```sh
outfile=nftables.conf.geoip4.tw

printf "define GEOIP4_TW = {\n\t" > $outfile \
&& curl -s https://www.iwik.org/ipcountry/TW.cidr | \
sed '/^#/d' | \
python3 supernets.py | \
perl -pe 'chomp if eof' | \
perl -pe 's/\n/,\n\t/g' >> $outfile \
&& printf "\n}" >> $outfile
```
