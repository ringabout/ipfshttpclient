# ipfshttpclient

ipfs http client implemented in Nim (in progress)


```nim
import src/ipfshttpclient
import std/json

var ipfs = newIpfsHttpClient()
let added = ipfs.add("test.js")
if added != nil:
  echo added.pretty
  var name = added["Hash"].getStr
  let res = ipfs.cat(name)
  echo res
```
