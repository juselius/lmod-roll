-- -*- lua -*-
-- vim:ft=lua:et:ts=4
--
-- 
local pkg = {}

pkg.name = "foo"
pkg.version = "1.0"
pkg.id = pathJoin(pkg.name, pkg.version)
pkg.prefix = pathJoin(getAppRoot(), pkg.id)
pkg.display_name = "Foo"
pkg.help = readHelpFile("foo.rst") -- Read from /opt/modulefiles/help/foo.rst
-- pkg.help = [[ Foobar!  ]]          -- Inline (multiline) rst

help(pkg.help)
whatis("Name: " .. pkg.display_name)
whatis("Version: " .. pkg.version)
whatis("Category: Application")  -- Application, Development, Library
whatis("Keyword: ")              -- Compiler, Chemistry, ...
whatis("URL: http://hpc.uit.no/docs")
whatis("License: ")              -- GPL, proprietary, ...
whatis("Description: ")          -- max one line

checkRestrictedGroup(pkg, nil)

setenv("FOO_ROOT", pkg.prefix) 

prepend_path("PATH", pathJoin(pkg.prefix, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(pkg.prefix, "lib"))
append_path("MANPATH", pathJoin(pkg.prefix, "man"))

logUsage(pkg)

