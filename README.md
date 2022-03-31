# MistServer

MistServer is a streaming media server that works well in any streaming environment even on a Raspberry Pi! It bridges the gap between dedicated media servers and web servers, performing the best of both worlds when it comes to media streaming delivery.

### Mistserver is now fully open source!! 
Mistserver 3.0 has all now all Pro features, more info [here](https://news.mistserver.org/news/108/Release+notes+summary+3.0) and [changelog](https://releases.mistserver.org/changelog).

**What makes this docker build better as the official one from DDTECH/MistServer?**   
It's more secure and because on `docker stop` it will gracefully shutdown your processes. It prevents data corruption and all config-files will be saved before shutting down.

Usage 
-----------
```
docker run -d --restart always --name=mistserver \   
--net=host \    
-v <path to config>:/config \   
-v <path to video>:/media \     
r0gger/mistserver   
```   
  
**Parameters**    
* `--net=host` - Recommended! You can change ports within Mistserver Protocols.
* `-v <path to config>:/config` - config and log files  
* `-v <path to video>:/media` - video and audio files  

*Special note* - If you'd like to run Mistserver without requiring `--net=host` (`NOT recommended`) then you will need the following ports in your `docker create` command:

* `-p 4242` - Web UI  
* `-p 1935` - RTMP  
* `-p 554` - RTSP   
* `-p 8080` - HTTP / HLS 
* `-v /etc/localhost:ro` - for timesync (read-only)   

Webinterface
-----------
1. Webui: http://mydomain.tld:4242 and enter a username/password.   
2. Click on "Enable protocols" and change ports if necessary.
3. Enter a "Human readable name" and thick "Force JSON file save".   


Links
-----------
Website: http://mistserver.org   
Github: https://github.com/DDVTECH/mistserver   

