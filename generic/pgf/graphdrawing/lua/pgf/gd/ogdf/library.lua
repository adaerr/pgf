-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

--- @release $Header: /home/nmelzer/projects/TeX/pgf/generic/pgf/graphdrawing/lua/pgf/gd/ogdf/library.lua,v 1.6 2013/01/07 14:22:55 tantau Exp $


-- Imports
local declare = require "pgf.gd.interface.InterfaceToAlgorithms".declare

---
-- The Open Graph Drawing Framework (\textsc{ogdf}) is a large,
-- powerful graph drawing system written in C++. This library enables
-- its use inside \tikzname's graph drawing system by translating
-- back-and-forth between Lua and C++.
--
-- Since C++ code is compiled and not interpreted (like Lua), in order
-- to use the present library, you need a compiled version of the
-- \textsc{ogdf} library installed for your particular
-- architecture. 
--
-- @library

local ogdf


require "pgf.gd.ogdf.ModuleHandler"

-- Load sublibraries

require "pgf.gd.ogdf.layered.SugiyamaLayout"

require "pgf.gd.ogdf.misclayout.CircularLayout"
require "pgf.gd.ogdf.misclayout.BalloonLayout"

require "pgf.gd.ogdf.energybased.FMMMLayout"
require "pgf.gd.ogdf.energybased.DavidsonHarelLayout"

require "pgf.gd.ogdf.planarity.PlanarizationLayout"
