static:
  var
    a: ref string
    b: ref string
  new a

  a[] = "Hello world"
  b = a

  b[5] = 'c'
  doAssert a[] == "Hellocworld"
  doAssert b[] == "Hellocworld"

type Ref = ref object
    field: int

static: # bug 6081
    var r = Ref(field: 1)
    var rr = r
    r = nil
    doAssert rr != nil
