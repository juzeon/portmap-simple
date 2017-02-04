# portmap-simple
A very simple portmap client.

Usage:
./portmap -m method [-h1 host1] -p1 port1 [-h2 host2] -p2 port2 [-v] [-log filename]
-v: version
-h1: host1
-h2: host2
-p1: port1
-p2: port2
-log: log the data
-m: the action method for this tool
1: listen on PORT1 and connect to HOST2:PORT2
2: listen on PORT1 and PORT2
3: connect to HOST1:PORT1 and HOST2:PORT2

Example:
./portmap -m 2 -p1 6666 -h2 0.0.0.0 -p2 7777 #port 6666(input)->7777(output)
./portmap -m 3 -h1 127.0.0.1 -p1 22 -h2 1.1.1.1 -p2 6666 #port 22(local)->6666(another server which is running portmap)