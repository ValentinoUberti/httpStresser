### Internal service

#ab -s 99 -r -c 100 -n 10000 -w demo-jvm.demo-jvm.svc.cluster.local:8080/ > "/var/www/html/$(date +'%m_%d_%Y_%T')_results.html"
#ab -s 99 -r -c 100 -n 10000 -w quarkus-jvm.demo-quarkus.svc.cluster.local:8080/demo > "/var/www/html/$(date +'%m_%d_%Y_%T')_results.html"
#ab -s 99 -r -c 100 -n 10000 -w quarkus-native.demo-quarkus-native.svc.cluster.local:8080/demo > "/var/www/html/$(date +'%m_%d_%Y_%T')_results.html"

### Istio
#seq 1 1000 | xargs -n1 -P10 curl istio-ingressgateway-istio-system.apps.ocp.example.net/jvm
#seq 1 1000 | xargs -n1 -P10 curl istio-ingressgateway-istio-system.apps.ocp.example.net/quarkus-jvm-istio
#seq 1 1000 | xargs -n1 -P10 curl istio-ingressgateway-istio-system.apps.ocp.example.net//quarkus-native-istio

