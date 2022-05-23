from libcurl {.all.} import libname, PCurl, Code

type
  Mime* {.final, pure.} = object
  MimePart* {.final, pure.} = object
  PMime* = ptr Mime
  PMimePart* = ptr MimePart

proc mime_init*(easy: PCurl): PMime {.
    cdecl, dynlib: libname, importc: "curl_mime_init".}

proc mime_addpart*(mime: PMime): PMimePart {.
    cdecl, dynlib: libname, importc: "curl_mime_addpart".}

proc mime_name*(field: PMimePart, name: cstring): Code {.
    cdecl, dynlib: libname, importc: "curl_mime_name".}

proc mime_filedata*(part: PMimePart, filename: cstring): Code {.
    cdecl, dynlib: libname, importc: "curl_mime_filedata".}

proc mime_data*(part: PMimePart, data: cstring, dataSize: csize_t): Code {.
    cdecl, dynlib: libname, importc: "curl_mime_data".}