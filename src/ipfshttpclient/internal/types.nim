import std/uri


type
  IpfsHttpClient* = ref object
    uri*: Uri

const defaults = parseUri("http://localhost:5001/api/v0")

proc newIpfsHttpClient*(url: Uri = defaults): IpfsHttpClient =
  result = IpfsHttpClient(uri: url)
