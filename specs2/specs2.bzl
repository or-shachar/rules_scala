def specs2_version():
  return "3.7"
def specs2_repositories():

  native.maven_jar(
      name = "io_bazel_rules_scala_org_specs2_specs2_core",
      artifact = "org.specs2:specs2-core_2.11:" + specs2_version(),
      #sha1 = "495bed00c73483f4f5f43945fde63c615d03e637",
  )
  native.bind(name = 'io_bazel_rules_scala/dependency/specs2/specs2_core', actual = '@io_bazel_rules_scala_org_specs2_specs2_core//jar')
  
  native.maven_jar(
      name = "io_bazel_rules_scala_org_specs2_specs2_common",
      artifact = "org.specs2:specs2-common_2.11:" + specs2_version(),
      #sha1 = "15bc009eaae3a574796c0f558d8696b57ae903c3",
  )
  native.bind(name = 'io_bazel_rules_scala/dependency/specs2/specs2_common', actual = '@io_bazel_rules_scala_org_specs2_specs2_common//jar')
  
  native.maven_jar(
      name = "io_bazel_rules_scala_org_specs2_specs2_matcher",
      artifact = "org.specs2:specs2-matcher_2.11:" + specs2_version(),
      #sha1 = "d2e967737abef7421e47b8994a8c92784e624d62",
  )
  native.bind(name = 'io_bazel_rules_scala/dependency/specs2/specs2_matcher', actual = '@io_bazel_rules_scala_org_specs2_specs2_matcher//jar')
  
  native.maven_jar(
      name = "io_bazel_rules_scala_org_scalaz_scalaz_effect",
      artifact = "org.scalaz:scalaz-effect_2.11:7.2.7",
      sha1 = "824bbb83da12224b3537c354c51eb3da72c435b5",
  )
  native.bind(name = 'io_bazel_rules_scala/dependency/scalaz/scalaz_effect', actual = '@io_bazel_rules_scala_org_scalaz_scalaz_effect//jar')

  native.maven_jar(
      name = "io_bazel_rules_scala_org_scalaz_scalaz_core",
      artifact = "org.scalaz:scalaz-core_2.11:7.2.7",
      sha1 = "ebf85118d0bf4ce18acebf1d8475ee7deb7f19f1",
  )
  native.bind(name = 'io_bazel_rules_scala/dependency/scalaz/scalaz_core', actual = '@io_bazel_rules_scala_org_scalaz_scalaz_core//jar')

def specs2_dependencies():
  return [
  "//external:io_bazel_rules_scala/dependency/specs2/specs2_core",
  "//external:io_bazel_rules_scala/dependency/specs2/specs2_common",
  "//external:io_bazel_rules_scala/dependency/specs2/specs2_matcher",
  "//external:io_bazel_rules_scala/dependency/scalaz/scalaz_effect",
  "//external:io_bazel_rules_scala/dependency/scalaz/scalaz_core",
  "//external:io_bazel_rules_scala/dependency/scala/scala_xml",
  "//external:io_bazel_rules_scala/dependency/scala/parser_combinators",
  "//external:io_bazel_rules_scala/dependency/scala/scala_library",
  "//external:io_bazel_rules_scala/dependency/scala/scala_reflect"]  
