ab -c 1000 -n 2000000 -w demo-jvm.demo-jvm.svc.cluster.local:8080/ > "/var/www/html/$(date +'%m_%d_%Y_%T')_results.html"
