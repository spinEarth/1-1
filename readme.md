# 1) 실행 환경
- OS: macOS 27.0.1(26A434)
- Shell: zsh 5.9 (arm64-apple-darwin26.0)
- Docker: 29.2.0, build 0b9d198
- Git: 2.50.1 (Apple Git-155)



# 2) 수행 체크리스트

- 1. 제출 저장소 및 기술 문서
- 2. 터미널 조작 로그 기록
- 3. 권한 실습 및 증거 기록
- 4. Docker 설치 및 기본 점검
- 5. Docker 기본 운영 명령 수행
- 6. 컨테이너 실행 실습
- 7. 커스텀 이미지 제작 (Dockerfile)
- 8. 포트 매핑 및 접속 증거
- 9. Docker 볼륨 영속성 검증
- 10. Git 설정 및 GitHub 연동
- 11. 보안 및 개인정보 보호






# 3) 수행 

 ## 2. 터미널 조작 로그 기록 & 3.권한 실습 및 증거 기록
```
kang@syn-172-100-101-045 ~ % cd codyssey
kang@syn-172-100-101-045 codyssey % ls
kang@syn-172-100-101-045 codyssey % ls      
kang@syn-172-100-101-045 codyssey % clear

kang@syn-172-100-101-045 codyssey % ls
kang@syn-172-100-101-045 codyssey % mkdir 1-1
kang@syn-172-100-101-045 codyssey % ls
1-1
kang@syn-172-100-101-045 codyssey % cd 1-1
kang@syn-172-100-101-045 1-1 % ls
kang@syn-172-100-101-045 1-1 % pwd
/Users/kang/codyssey/1-1
kang@syn-172-100-101-045 1-1 % ls -la
total 0
drwxr-xr-x  2 kang  staff  64 10월 30 16:23 .
drwxr-xr-x  3 kang  staff  96 10월 30 16:23 ..
kang@syn-172-100-101-045 1-1 % vim read.md
kang@syn-172-100-101-045 1-1 % ls
read.md
kang@syn-172-100-101-045 1-1 % cp read.md read1.md
kang@syn-172-100-101-045 1-1 % ls
read.md		read1.md
kang@syn-172-100-101-045 1-1 % rm read1.md
kang@syn-172-100-101-045 1-1 % ls
read.md
kang@syn-172-100-101-045 1-1 % mv read.md read1.md
kang@syn-172-100-101-045 1-1 % ls
read1.md
kang@syn-172-100-101-045 1-1 % ls -la
total 8
drwxr-xr-x  3 kang  staff  96 10월 30 16:25 .
drwxr-xr-x  3 kang  staff  96 10월 30 16:23 ..
-rw-r--r--  1 kang  staff   9 10월 30 16:24 read1.md
kang@syn-172-100-101-045 1-1 % chmod 777 read1.md
kang@syn-172-100-101-045 1-1 % ls
read1.md
kang@syn-172-100-101-045 1-1 % ls -al
total 8
drwxr-xr-x  3 kang  staff  96 10월 30 16:25 .
drwxr-xr-x  3 kang  staff  96 10월 30 16:23 ..
-rwxrwxrwx  1 kang  staff   9 10월 30 16:24 read1.md

kang@syn-172-100-101-045 1-1 % ls
readme.md
kang@syn-172-100-101-045 1-1 % pwd   
/Users/kang/codyssey/1-1
kang@syn-172-100-101-045 1-1 % mkdir tmp
kang@syn-172-100-101-045 1-1 % ls
readme.md	tmp
kang@syn-172-100-101-045 1-1 % ls -al
total 24
drwxr-xr-x@  5 kang  staff   160 10월 30 17:58 .
drwxr-xr-x   3 kang  staff    96 10월 30 16:23 ..
drwxr-xr-x  12 kang  staff   384 10월 30 16:29 .git
-rw-r--r--@  1 kang  staff  8478 10월 30 17:46 readme.md
drwxr-xr-x   2 kang  staff    64 10월 30 17:58 tmp
kang@syn-172-100-101-045 1-1 % chmod 777 tmp
kang@syn-172-100-101-045 1-1 % ls -al       
total 24
drwxr-xr-x@  5 kang  staff   160 10월 30 17:58 .
drwxr-xr-x   3 kang  staff    96 10월 30 16:23 ..
drwxr-xr-x  12 kang  staff   384 10월 30 16:29 .git
-rw-r--r--@  1 kang  staff  8478 10월 30 17:46 readme.md
drwxrwxrwx   2 kang  staff    64 10월 30 17:58 tmp
kang@syn-172-100-101-045 1-1 % ls -al
```




## 4. Docker 설치 및 기본 점검
```
kang@syn-172-100-101-045 ~ % docker --version
Docker version 29.2.0, build 0b9d198
kang@syn-172-100-101-045 ~ % docker info
Client:
 Version:    29.2.0
 Context:    desktop-linux
 Debug Mode: false
 Plugins:
  ai: Docker AI Agent - Ask Gordon (Docker Inc.)
    Version:  v1.17.2
    Path:     /Users/kang/.docker/cli-plugins/docker-ai
  buildx: Docker Buildx (Docker Inc.)
    Version:  v0.31.1-desktop.1
    Path:     /Users/kang/.docker/cli-plugins/docker-buildx
  compose: Docker Compose (Docker Inc.)
    Version:  v5.0.2
    Path:     /Users/kang/.docker/cli-plugins/docker-compose
  debug: Get a shell into any image or container (Docker Inc.)
    Version:  0.0.47
    Path:     /Users/kang/.docker/cli-plugins/docker-debug
  desktop: Docker Desktop commands (Docker Inc.)
    Version:  v0.3.0
    Path:     /Users/kang/.docker/cli-plugins/docker-desktop
  extension: Manages Docker extensions (Docker Inc.)
    Version:  v0.2.31
    Path:     /Users/kang/.docker/cli-plugins/docker-extension
  init: Creates Docker-related starter files for your project (Docker Inc.)
    Version:  v1.4.0
    Path:     /Users/kang/.docker/cli-plugins/docker-init
  mcp: Docker MCP Plugin (Docker Inc.)
    Version:  v0.38.0
    Path:     /Users/kang/.docker/cli-plugins/docker-mcp
  model: Docker Model Runner (Docker Inc.)
    Version:  v1.0.8
    Path:     /Users/kang/.docker/cli-plugins/docker-model
  offload: Docker Offload (Docker Inc.)
    Version:  v0.5.42
    Path:     /Users/kang/.docker/cli-plugins/docker-offload
  pass: Docker Pass Secrets Manager Plugin (beta) (Docker Inc.)
    Version:  v0.0.24
    Path:     /Users/kang/.docker/cli-plugins/docker-pass
  sandbox: Docker Sandbox (Docker Inc.)
    Version:  v0.11.0
    Path:     /Users/kang/.docker/cli-plugins/docker-sandbox
  sbom: View the packaged-based Software Bill Of Materials (SBOM) for an image (Anchore Inc.)
    Version:  0.6.0
    Path:     /Users/kang/.docker/cli-plugins/docker-sbom
  scout: Docker Scout (Docker Inc.)
    Version:  v1.19.0
    Path:     /Users/kang/.docker/cli-plugins/docker-scout

Server:
 Containers: 4
  Running: 0
  Paused: 0
  Stopped: 4
 Images: 17
 Server Version: 29.2.0
 Storage Driver: overlayfs
  driver-type: io.containerd.snapshotter.v1
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Cgroup Version: 2
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local splunk syslog
 CDI spec directories:
  /etc/cdi
  /var/run/cdi
 Swarm: inactive
 Runtimes: io.containerd.runc.v2 runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: dea7da592f5d1d2b7755e3a161be07f43fad8f75
 runc version: v1.3.4-0-gd6d73eb8
 init version: de40ad0
 Security Options:
  seccomp
   Profile: builtin
  cgroupns
 Kernel Version: 6.12.67-linuxkit
 Operating System: Docker Desktop
 OSType: linux
 Architecture: aarch64
 CPUs: 10
 Total Memory: 7.653GiB
 Name: docker-desktop
 ID: 73bf645d-e37e-4f7b-824e-f363cad03091
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 HTTP Proxy: http.docker.internal:3128
 HTTPS Proxy: http.docker.internal:3128
 No Proxy: hubproxy.docker.internal
 Labels:
  com.docker.desktop.address=unix:///Users/kang/Library/Containers/com.docker.docker/Data/docker-cli.sock
 Experimental: false
 Insecure Registries:
  hubproxy.docker.internal:5555
  ::1/128
  127.0.0.0/8
 Live Restore Enabled: false

kang@syn-172-100-101-045 ~ % 
```







## 5. Docker 기본 운영 명령 수행
```
kang@syn-172-100-101-045 ~ % docker images               
                                                                                                                                                           i Info →   U  In Use
IMAGE                                                   ID             DISK USAGE   CONTENT SIZE   EXTRA
hello-world:latest                                      c567b231f656       22.6kB         10.3kB    U   
public.ecr.aws/supabase/edge-runtime:v1.74.2            a82676277615       1.08GB          378MB        
public.ecr.aws/supabase/gotrue:v2.192.0                 b252efb680be       85.8MB         27.1MB        
public.ecr.aws/supabase/imgproxy:v3.8.0                 0facd355d50f        235MB         58.3MB        
public.ecr.aws/supabase/kong:2.8.1                      1b53405d8680        212MB         48.5MB        
public.ecr.aws/supabase/logflare:1.46.0                 f3c7a387ab7b        930MB          271MB        
public.ecr.aws/supabase/mailpit:v1.30.2                 37a38e48e933       48.4MB         13.7MB        
public.ecr.aws/supabase/postgres-meta:v0.96.6           a84cc713585e        526MB         98.9MB        
public.ecr.aws/supabase/postgres:17.6.1.143             80d7b27c3e8d       1.76GB          367MB        
public.ecr.aws/supabase/postgrest:v14.14                d2009b5c9def        659MB          152MB        
public.ecr.aws/supabase/realtime:v2.112.6               7b56da34216f        563MB          120MB        
public.ecr.aws/supabase/storage-api:v1.62.5             1dbe962d9862       1.36GB          234MB        
public.ecr.aws/supabase/studio:2026.07.06-sha-66cf431   4a5163e33578       1.63GB          318MB        
public.ecr.aws/supabase/vector:0.53.0-alpine            ca92d617e905        196MB         56.2MB        
pwn-backup:latest                                       b3977a0ff06b       2.72GB          754MB    U   
ubuntu:22.04                                            ce4a593b4e32        228MB         60.9MB        
ubuntu:latest                                           6a06111c3b0a        181MB         44.9MB    U   
kang@syn-172-100-101-045 ~ % docker ps -a
CONTAINER ID   IMAGE         COMMAND       CREATED          STATUS                      PORTS     NAMES
997a49c8e40f   ubuntu        "bash"        27 minutes ago   Up 53 seconds                         ubuntu1
e7917886544d   hello-world   "/hello"      35 minutes ago   Exited (0) 35 minutes ago             keen_poitras
c3b1fe02c96f   hello-world   "/hello"      39 minutes ago   Exited (0) 39 minutes ago             compassionate_keller
705695c5f884   pwn-backup    "/bin/bash"   7 months ago     Exited (137) 6 months ago             ubuntu22
kang@syn-172-100-101-045 ~ % docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED          STATUS          PORTS     NAMES
997a49c8e40f   ubuntu    "bash"    27 minutes ago   Up 58 seconds             ubuntu1
kang@syn-172-100-101-045 ~ % 
kang@syn-172-100-101-045 ~ % docker logs -t 997a49c8e40f 
2026-10-30T08:47:47.080098005Z root@997a49c8e40f:/# ls
bin  boot  dev  etc  home  lib  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
2026-10-30T08:48:16.709785255Z root@997a49c8e40f:/# ^C
2026-10-30T08:48:16.907596838Z root@997a49c8e40f:/# ^C
2026-10-30T08:48:17.985131214Z root@997a49c8e40f:/# ^C
2026-10-30T08:48:19.601488173Z root@997a49c8e40f:/# quit
bash: quit: command not foundZ 
2026-10-30T08:48:24.043872383Z root@997a49c8e40f:/# quit
bash: quit: command not foundZ 
2026-10-30T08:48:26.055009718Z root@997a49c8e40f:/# quit
bash: quit: command not foundZ 
2026-10-30T08:48:28.274711802Z root@997a49c8e40f:/# q!
bash: q!: command not found69Z 
2026-10-30T08:48:30.265802136Z root@997a49c8e40f:/# ^C
2026-10-30T08:48:30.478256553Z root@997a49c8e40f:/# ^C
2026-10-30T08:48:30.641139845Z root@997a49c8e40f:/# ^C
2026-10-30T08:48:30.804522136Z root@997a49c8e40f:/# ^C
2026-10-30T08:48:30.968838678Z root@997a49c8e40f:/# ^C
2026-10-30T08:48:35.566836055Z root@997a49c8e40f:/# 

kang@syn-172-100-101-045 ~ % docker stats
CONTAINER ID   NAME      CPU %     MEM USAGE / LIMIT    MEM %     NET I/O        BLOCK I/O     PIDS 
997a49c8e40f   ubuntu1   0.00%     13.6MiB / 7.653GiB   0.17%     1.7kB / 126B   12.1MB / 0B   1 
 
```

## 6. 컨테이너 실행 실습

### hello-world
```
Last login: Fri Oct 30 18:13:25 on ttys002
kang@kangs-MacBook-Air ~ % docker run hello-world                   

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (arm64v8)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

kang@kangs-MacBook-Air ~ % 
```



### ubuntu container
```
kang@syn-172-100-101-045 ~ % docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED          STATUS         PORTS     NAMES
997a49c8e40f   ubuntu    "bash"    32 minutes ago   Up 6 minutes             ubuntu1
kang@syn-172-100-101-045 ~ % docker exec -it 997a49c8e40f bash
root@997a49c8e40f:/# ls
bin  boot  dev  etc  home  lib  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
root@997a49c8e40f:/# cd home
root@997a49c8e40f:/home# ls
ubuntu
root@997a49c8e40f:/home# cd ubuntu
root@997a49c8e40f:/home/ubuntu# ls
root@997a49c8e40f:/home/ubuntu# echo "linux docker"
linux docker
root@997a49c8e40f:/home/ubuntu# 


kang@kangs-MacBook-Air ~ % docker exec -it ubuntu1 bash    
root@997a49c8e40f:/# exit
exit
kang@kangs-MacBook-Air ~ % docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED          STATUS          PORTS     NAMES
997a49c8e40f   ubuntu    "bash"    39 minutes ago   Up 42 seconds             ubuntu1
kang@kangs-MacBook-Air ~ % docker attach  ubuntu1      
root@997a49c8e40f:/# exit
exit
kang@kangs-MacBook-Air ~ % docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
kang@kangs-MacBook-Air ~ % 


```

### attach/exec 관찰
```
docker exec 로 접속 후 exit 했을 때는 docker ps 에서 컨테이너가 Up 상태를 유지했으나, docker attach 로 접속 후 exit 했을 때는 메인 프로세스(PID 1)가 종료 신호를 받아 Exited (0) 상태로 중지됨을 확인했습니다.
```




## 기존 Dockerfile 기반 커스텀 이미지 제작 (A안)
```
kang@kangs-MacBook-Air 1-1 % mkdir site
kang@kangs-MacBook-Air 1-1 % cd site
kang@kangs-MacBook-Air site % vim index.html
kang@kangs-MacBook-Air site % cat index.html
cat: index.html: No such file or directory
kang@kangs-MacBook-Air site % vim index.html
kang@kangs-MacBook-Air site % cat index.html
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Workstation Web Server</title>
</head>
<body>
  <h1>개발 워크스테이션 웹 서버 구동 성공</h1>
  <p>Custom Nginx Containerized by Kang Hyeonsoo</p>
</body>
</html>
kang@kangs-MacBook-Air 1-1 % vim Dockerfile
kang@kangs-MacBook-Air 1-1 % cat Dockerfile
FROM nginx:alpine
LABEL maintainer="kang"
ENV APP_ENV=production
COPY site/ /usr/share/nginx/html/
EXPOSE 80

kang@kangs-MacBook-Air 1-1 % docker build -t my-web:1.0 .
[+] Building 2.8s (7/7) FINISHED                                                                   docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 146B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:alpine                                                    0.9s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 2B                                                                                    0.0s
 => [internal] load build context                                                                                  0.0s
 => => transferring context: 313B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:alpine@sha256:785835ea65db4bba6f021acc0f3be91b0fef76a53fe41f8588c6698d2aed  1.7s
 => => resolve docker.io/library/nginx:alpine@sha256:785835ea65db4bba6f021acc0f3be91b0fef76a53fe41f8588c6698d2aed  0.0s
 => => sha256:567a969e02211a0b0f51a1ac9b901e1bf88b7c79dbb994979df79b328fb64ab6 1.21kB / 1.21kB                     0.7s
 => => sha256:cbe54b031f3e1a4ce4471c96573084c6454f1c5f91e03bbd51c5bb5d90af7864 20.11MB / 20.11MB                   0.8s
 => => sha256:dbb1ef19121a83d4810308cc89451dd32a5fafdf8d17da3f7c3a88a3edd70573 404B / 404B                         0.8s
 => => sha256:c2fefbef531492feca04133b10436cc9783fce87888d03b115887db02b4f0610 1.40kB / 1.40kB                     0.8s
 => => sha256:f523b340a6c003e3b253f885115ab55af1d1f6a12a3fed8203adbe67173d805f 964B / 964B                         0.2s
 => => sha256:1408044c7403b2c319cdbb2cb2d18025d7997a703c1c1115dec6ae21fff824d3 1.96MB / 1.96MB                     0.6s
 => => sha256:7b9d02243238d0f039c78eac1c532b5cc281e680fedbb27aec087a6e8c85e0a1 629B / 629B                         0.2s
 => => sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0 4.19MB / 4.19MB                     0.6s
 => => extracting sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0                          0.0s
 => => extracting sha256:1408044c7403b2c319cdbb2cb2d18025d7997a703c1c1115dec6ae21fff824d3                          0.0s
 => => extracting sha256:7b9d02243238d0f039c78eac1c532b5cc281e680fedbb27aec087a6e8c85e0a1                          0.0s
 => => extracting sha256:f523b340a6c003e3b253f885115ab55af1d1f6a12a3fed8203adbe67173d805f                          0.0s
 => => extracting sha256:dbb1ef19121a83d4810308cc89451dd32a5fafdf8d17da3f7c3a88a3edd70573                          0.0s
 => => extracting sha256:567a969e02211a0b0f51a1ac9b901e1bf88b7c79dbb994979df79b328fb64ab6                          0.0s
 => => extracting sha256:c2fefbef531492feca04133b10436cc9783fce87888d03b115887db02b4f0610                          0.0s
 => => extracting sha256:cbe54b031f3e1a4ce4471c96573084c6454f1c5f91e03bbd51c5bb5d90af7864                          0.2s
 => [2/2] COPY site/ /usr/share/nginx/html/                                                                        0.0s
 => exporting to image                                                                                             0.0s
 => => exporting layers                                                                                            0.0s
 => => exporting manifest sha256:e88d2fd0a378d4a82509734e5d801a393cce199bd63204d1b0280c29dbd19633                  0.0s
 => => exporting config sha256:bc20680b241bd0e01b67978b98bbeebc0ffda022d350a6abd25dc57f4ab8de5a                    0.0s
 => => exporting attestation manifest sha256:b2c044c304c1e490321a6a5c95a525f3692f8b1bac8cfad578cc88f3bacd8d8c      0.0s
 => => exporting manifest list sha256:59a1c25e0231aa36d122b06963855eedf1e079313b3ab3b69ec676a17182d2b8             0.0s
 => => naming to docker.io/library/my-web:1.0                                                                      0.0s
 => => unpacking to docker.io/library/my-web:1.0                                                                   0.0s
kang@kangs-MacBook-Air 1-1 % docker images | grep my-web
WARNING: This output is designed for human readability. For machine-readable output, please use --format.
my-web:1.0                                              59a1c25e0231       93.2MB         26.3MB        
kang@kangs-MacBook-Air 1-1 % docker run -d -p 8080:80 --name my-web-8080 my-web:1.0
a6ad40df8301c744514539bd35e6b9cad0a66b25ec3e269d6cca57e850140d08
kang@kangs-MacBook-Air 1-1 % curl http://localhost:8080
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Workstation Web Server</title>
</head>
<body>
  <h1>개발 워크스테이션 웹 서버 구동 성공</h1>
  <p>Custom Nginx Containerized by Kang Hyeonsoo</p>
</body>
</html>
kang@kangs-MacBook-Air 1-1 % 

```


## 8. 포트 매핑 및 접속 증거

```
kang@kangs-MacBook-Air 1-1 % docker run -d -p 8080:80 --name my-web-8080 my-web:1.0
a6ad40df8301c744514539bd35e6b9cad0a66b25ec3e269d6cca57e850140d08
kang@kangs-MacBook-Air 1-1 % curl http://localhost:8080
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Workstation Web Server</title>
</head>
<body>
  <h1>개발 워크스테이션 웹 서버 구동 성공</h1>
  <p>Custom Nginx Containerized by Kang Hyeonsoo</p>
</body>
</html>
kang@kangs-MacBook-Air 1-1 % ls
:		Dockerfile	readme.md	site
kang@kangs-MacBook-Air 1-1 % docker run -d -p 8081:80 --name my-web-8081 my-web:1.0
46ee9a2fb3b63851538acdf09b5e4ca98fa188b8953c6851ceb1df1b3a9d9c66
kang@kangs-MacBook-Air 1-1 % curl http://localhost:8080
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Workstation Web Server</title>
</head>
<body>
  <h1>개발 워크스테이션 웹 서버 구동 성공</h1>
  <p>Custom Nginx Containerized by Kang Hyeonsoo</p>
</body>
</html>
kang@kangs-MacBook-Air 1-1 % curl http://localhost:8081
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Workstation Web Server</title>
</head>
<body>
  <h1>개발 워크스테이션 웹 서버 구동 성공</h1>
  <p>Custom Nginx Containerized by Kang Hyeonsoo</p>
</body>
</html>
kang@kangs-MacBook-Air 1-1 % docker ps
CONTAINER ID   IMAGE        COMMAND                   CREATED          STATUS          PORTS                                     NAMES
46ee9a2fb3b6   my-web:1.0   "/docker-entrypoint.…"   14 seconds ago   Up 14 seconds   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   my-web-8081
a6ad40df8301   my-web:1.0   "/docker-entrypoint.…"   2 minutes ago    Up 2 minutes    0.0.0.0:8080->80/tcp, [::]:8080->80/tcp   my-web-8080
kang@kangs-MacBook-Air 1-1 % 
```


 ## 9. Docker 볼륨 영속성 검증
```
kang@kangs-MacBook-Air 1-1 % docker volume ls
DRIVER    VOLUME NAME
local     my-vol
local     supabase_db_tqgzymlbkjgwlfksvafw
local     supabase_edge_runtime_tqgzymlbkjgwlfksvafw
local     supabase_storage_tqgzymlbkjgwlfksvafw
kang@kangs-MacBook-Air 1-1 % docker run -d --name vol-test1 -v my-vol:/data ubuntu sleep infinity
f7dada5ec1b2ba1697d228a6f0a3a4c685ddeaa0da20bf26f5e9f93022ee5dde
kang@kangs-MacBook-Air 1-1 % docker exec -it vol-test1 bash -c "echo 'Volume Persistence 2026' > /data/persist.txt && cat /data/persist.txt"
Volume Persistence 2026
kang@kangs-MacBook-Air 1-1 % docker rm -f vol-test1
vol-test1
kang@kangs-MacBook-Air 1-1 % docker run -d --name vol-test2 -v my-vol:/data ubuntu sleep infinity
732e81153cbf31b0567f19852499eeb50fb1db265d3d81c194bd69c7a7abfac0
kang@kangs-MacBook-Air 1-1 % docker exec -it vol-test2 cat /data/persist.txt
Volume Persistence 2026
kang@kangs-MacBook-Air 1-1 % docker rm -f vol-test2
vol-test2
```


 ## 10. Git 설정 + VSCode GitHub 연동
```
kang@syn-172-100-101-045 1-1 % git init
Initialized empty Git repository in /Users/kang/codyssey/1-1/.git/
kang@syn-172-100-101-045 1-1 % ls -al
total 8
drwxr-xr-x@ 4 kang  staff  128 10월 30 16:27 .
drwxr-xr-x  3 kang  staff   96 10월 30 16:23 ..
drwxr-xr-x  9 kang  staff  288 10월 30 16:27 .git
-rwxrwxrwx  1 kang  staff    9 10월 30 16:24 read1.md
kang@syn-172-100-101-045 1-1 % cat .git
cat: .git: Is a directory
kang@syn-172-100-101-045 1-1 % ls -al
total 8
drwxr-xr-x@ 5 kang  staff  160 10월 30 16:28 .
drwxr-xr-x  3 kang  staff   96 10월 30 16:23 ..
drwxr-xr-x  9 kang  staff  288 10월 30 16:27 .git
-rwxrwxrwx  1 kang  staff    9 10월 30 16:24 read1.md
-rw-r--r--@ 1 kang  staff    0 10월 30 16:28 readme.md
kang@syn-172-100-101-045 1-1 % rm read1.md
kang@syn-172-100-101-045 1-1 % ls
readme.md
kang@syn-172-100-101-045 1-1 % git commit -am "first codyssey"
On branch main

Initial commit

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	readme.md

nothing added to commit but untracked files present (use "git add" to track)
kang@syn-172-100-101-045 1-1 % ls
readme.md
kang@syn-172-100-101-045 1-1 % git add readme.md
kang@syn-172-100-101-045 1-1 % ls
readme.md
kang@syn-172-100-101-045 1-1 % git commit -am "first codyssey"
[main (root-commit) 45241b2] first codyssey
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 readme.md
kang@syn-172-100-101-045 1-1 % git config --list
credential.helper=osxkeychain
init.defaultbranch=main
user.name=kang
user.email=********@*****.com
credential.https://github.com.helper=
credential.https://github.com.helper=!/opt/homebrew/bin/gh auth git-credential
credential.https://gist.github.com.helper=
credential.https://gist.github.com.helper=!/opt/homebrew/bin/gh auth git-credential
core.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
core.ignorecase=true
core.precomposeunicode=true
kang@syn-172-100-101-045 1-1 % 
```

 ## 11. 보안 및 개인정보 보호

```
git config --list 개인정보 (이메일) 마스킹
```