-- Copyright 2013 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /home/nmelzer/projects/TeX/pgf/generic/pgf/graphdrawing/lua/pgf/gd/doc/ogdf/layered/DfsAcyclicSubgraph.lua,v 1.1 2013/03/05 23:44:30 tantau Exp $


local key           = require 'pgf.gd.doc'.key
local documentation = require 'pgf.gd.doc'.documentation
local summary       = require 'pgf.gd.doc'.summary
local example       = require 'pgf.gd.doc'.example



--------------------------------------------------------------------
key           "DfsAcyclicSubgraph"
summary       "DFS-based algorithm for computing a maximal acyclic subgraph."
documentation
[[
The algorithm simply removes all DFS-backedges and works in linear-time.
]]
--------------------------------------------------------------------
