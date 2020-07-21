# kibana01
ELK on standalone  docker containers with nginx to feed kibana


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	<title></title>
	<meta name="generator" content="LibreOffice 6.0.7.3 (Linux)"/>
	<meta name="created" content="2020-07-21T16:59:12.328058513"/>
	<meta name="changed" content="2020-07-21T17:22:27.849082040"/>
	<style type="text/css">
		@page { margin: 2cm }
		p { margin-bottom: 0.25cm; line-height: 115% }
		a:link { so-language: zxx }
	</style>
</head>
<body lang="fr-FR" dir="ltr">
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><b>Aims&nbsp;</b>: 
</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%">Wanna play with
kibana&nbsp;? Need some stuff for that&nbsp;?  Your stack is here,
safe, and isolated in dockers containers. Only the official image
Ubuntu is pulled from Dockerhub.  Ansible will then install all you
need</p>
<p style="margin-bottom: 0cm; line-height: 100%">- create an
elasticsearch server in a docker container 172.3.27.10</p>
<p style="margin-bottom: 0cm; line-height: 100%">- create an nginx
server  + logstash in a docker container 127.3.27.14</p>
<p style="margin-bottom: 0cm; line-height: 100%">- create a kibana
server in a docker container 127.3.27.19</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><b>What for&nbsp;?</b></p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%">You will be able to
use kibana, feeded by logs generate on nginx server</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><b>Prerequisites&nbsp;:
</b>
</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%">- docker installed</p>
<p style="margin-bottom: 0cm; line-height: 100%">- ansible installed</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><b>Used versions in
project&nbsp;: </b>
</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%">host&nbsp;:</p>
<p style="margin-bottom: 0cm; line-height: 100%">Ubuntu&nbsp;:
18.04.1-Ubuntu x86_64</p>
<p style="margin-bottom: 0cm; line-height: 100%">Linux&nbsp;: Linux
5.3.0-62-generic #56~</p>
<p style="margin-bottom: 0cm; line-height: 100%">Docker&nbsp;: Docker
version 19.03.12, build 48a66213fe</p>
<p style="margin-bottom: 0cm; line-height: 100%">Ansible&nbsp;:
ansible 2.9.10 with python version = 2.7.17</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%">Docker containers&nbsp;:
</p>
<p style="margin-bottom: 0cm; line-height: 100%">Elasticsearch&nbsp;: 7.8.0
</p>
<p style="margin-bottom: 0cm; line-height: 100%">Nginx&nbsp;: 
</p>
<p style="margin-bottom: 0cm; line-height: 100%">Logstash&nbsp;: 7.8.0
</p>
<p style="margin-bottom: 0cm; line-height: 100%">kibana&nbsp;: 7.8.0
</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><b>How to&nbsp;initialize
environments : </b>
</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%">- install
prerequisites</p>
<p style="margin-bottom: 0cm; line-height: 100%">- pull the project
from github</p>
<p style="margin-bottom: 0cm; line-height: 100%">- run command from
the root of the project&nbsp;:  kibana01$ ansible-playbook
playbook.yml -v</p>
<p style="margin-bottom: 0cm; line-height: 100%">- expected result&nbsp;
must be like :</p>
<p style="margin-bottom: 0cm; line-height: 100%"><font size="2" style="font-size: 10pt">PLAY
RECAP
********************************************************************************</font></p>
<p style="margin-bottom: 0cm; line-height: 100%"><font size="2" style="font-size: 10pt">elastic
                   : ok=12   changed=10   unreachable=0    failed=0  
 skipped=0    rescued=0    ignored=0   </font>
</p>
<p style="margin-bottom: 0cm; line-height: 100%"><font size="2" style="font-size: 10pt">kibana
                    : ok=9    changed=8    unreachable=0    failed=0 
  skipped=1    rescued=0    ignored=0   </font>
</p>
<p style="margin-bottom: 0cm; line-height: 100%"><font size="2" style="font-size: 10pt">localhost
                 : ok=9    changed=3    unreachable=0    failed=0   
skipped=0    rescued=0    ignored=0   </font>
</p>
<p style="margin-bottom: 0cm; line-height: 100%"><font size="2" style="font-size: 10pt">nginx
                     : ok=14   changed=12   unreachable=0    failed=0
   skipped=0    rescued=0    ignored=0  </font>
</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
</body>
</html>
