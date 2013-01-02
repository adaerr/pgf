-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /home/nmelzer/projects/TeX/pgf/generic/pgf/graphdrawing/lua/pgf/gd/ogdf/energybased/Attic/FMMMLayout.lua,v 1.2 2013/01/02 20:43:05 tantau Exp $


---
-- @section subsubsection {The FMMM Method}

local section


local declare = require "pgf.gd.interface.InterfaceToAlgorithms".declare
    
---
declare {
  key = "FMMMLayout",
  algorithm_written_in_c = "pgf.gd.ogdf.c.CLibrary.fmmm_layout",
  includes = {
    "#include <ogdf/energybased/FMMMLayout.h>"
  },
  code = [[
      FMMMLayout fmmm;
      fmmm.unitEdgeLength(number_option("node distance")); 
      fmmm.randSeed(number_option("random seed"));
      fmmm.newInitialPlacement(false);
      fmmm.qualityVersusSpeed(FMMMLayout::qvsGorgeousAndEfficient);
      fmmm.call(graph_attributes);
  ]],
  summary = "The OGDF implementation of the FMMM algorithm.",
  documentation = [["  
      Not yet fully implemented interface...
  "]],
}

