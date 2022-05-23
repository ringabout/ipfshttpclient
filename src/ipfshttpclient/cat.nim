import internal/types
import internal/puppy/puppy
import std/[json, uri, strformat]

proc cat*(client: IpfsHttpClient, cid: string): string =
  let website = client.uri / fmt"cat?arg={cid}"
  let req = Request(
    url: website,
    verb: "post"
  )

  let res = fetch(req)

  # todo it should be an iterator
  if res.code == 200:
    result = res.body
