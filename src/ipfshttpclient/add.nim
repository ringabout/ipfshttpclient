import internal/types
import internal/puppy/puppy
import std/json
import std/uri


proc add*(client: IpfsHttpClient, path: string): JsonNode =
  let website = client.uri / "add"
  let req = Request(
    url: website,
    verb: "post",
    filename: path
  )

  let res = fetch(req)
  if res.code == 200:
    try:
      result = parseJson(res.body)
    except JsonParsingError:
      discard
    # result = jsonData["Hash"].getStr
