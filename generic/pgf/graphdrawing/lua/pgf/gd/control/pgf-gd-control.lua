-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

--- @release $Header: /home/nmelzer/projects/TeX/pgf/generic/pgf/graphdrawing/lua/pgf/gd/control/Attic/pgf-gd-control.lua,v 1.1 2012/04/16 17:58:36 tantau Exp $



-- Imports

require "pgf"
require "pgf.gd"


-- Declare namespace
pgf.gd.control = {}


-- Preload namespace
package.loaded ["pgf.gd.control"] = pgf.gd.control

require "pgf.gd.control.TeXInterface"



-- Done

return pgf.gd.control