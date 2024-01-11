# backstage_kind



```
 kubectl -n backstage port-forward backstage-5dfdcd4c4b-tntf9 7007:7007
```

http://localhost:7007

kind delete clusters backstage


Troubleshooting:

bind: address already in use unable to create listener: Error

lsof -ti:7007 | xargs kill -9
