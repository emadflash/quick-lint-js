# Copyright (C) 2020  Matthew Glazar
# See end of file for extended copyright information.

include(QuickLintJSCompiler)

add_library(md4c STATIC md4c/src/entity.c md4c/src/md4c.c md4c/src/md4c-html.c)
target_compile_definitions(md4c PRIVATE MD4C_USE_ASCII)
target_include_directories(md4c PUBLIC md4c/src)
quick_lint_js_add_warning_options_if_supported(
  md4c
  PRIVATE
  -Wno-unused-parameter
)

# quick-lint-js finds bugs in JavaScript programs.
# Copyright (C) 2020  Matthew Glazar
#
# This file is part of quick-lint-js.
#
# quick-lint-js is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# quick-lint-js is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with quick-lint-js.  If not, see <https://www.gnu.org/licenses/>.
