-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /home/nmelzer/projects/TeX/pgf/generic/pgf/graphdrawing/lua/pgf/gd/model/Attic/pgf-gd-model-Edge.lua,v 1.2 2012/04/18 15:28:18 tantau Exp $





--- The Edge class ...
--
--

local Edge = pgf.graphdrawing.Edge
Edge.__index = Edge


-- Namespace

local model   = require "pgf.gd.model"
model.Edge = Edge



-- Done

return Edge