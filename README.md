# backstage_kind


## Connect
```
 kubectl -n backstage port-forward backstage-5dfdcd4c4b-tntf9 7007:7007
```

http://localhost:7007


## Exec
```
k -n backstage exec -it backstage-7b66fc56dd-v4gpb -- sh
```





## Clean up:

kind delete clusters backstage

bind: address already in use unable to create listener: Error

lsof -ti:7007 | xargs kill -9
