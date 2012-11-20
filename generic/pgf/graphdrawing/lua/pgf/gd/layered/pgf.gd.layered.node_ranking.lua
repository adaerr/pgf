-- Copyright 2012 by Till Tantau
--
-- This file may be distributed and/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /home/nmelzer/projects/TeX/pgf/generic/pgf/graphdrawing/lua/pgf/gd/layered/Attic/pgf.gd.layered.node_ranking.lua,v 1.1 2012/11/20 23:32:02 tantau Exp $


local declare = require("pgf.gd.interface.InterfaceToAlgorithms").declare


---
-- @section subsection {Layer Assignment (Node Ranking)}
--
-- Algorithms for producing layered drawings place nodes on discrete
-- layers from top to bottom. Layer assignment is the problem of
-- finding a partition so that for all edges $e = (u,v) \in E(G)$ the 
-- equation $\mathit{layer}(u) < \mathit{layer}(v)$ holds. Such a
-- partition is called a \emph{layering}. This definition can be extended by
-- introducing edge weights or priorities and minimum length
-- constraints which has practical applications and allows users to
-- fine-tune the results.
--
-- For more details, please see Section 4.1.2 of Pohlmann's Diploma
-- thesis. 

local _



---

declare {
  key = "linear optimization layer assignment",
  algorithm = require "pgf.gd.layered.NodeRankingGansnerKNV1993",
  phase = "node ranking",
  default = true,

  documentation = [["  
       This layer assigment method, due to Gasner et al., is based on a
       linear optimization problem.
      
       For more details, please see Section 4.1.2 of Pohlmann's Diploma
       thesis. 
      
       This is the default algorithm for layer assignments.
   "]]
 }



---

declare {
  key = "minimum height layer assignment",
  algorithm = "pgf.gd.layered.NodeRankingMinimumHeight",
  phase = "node ranking",

  documentation = [["  
       This layer assigment method minimizes the height of the resulting
       graph. 
      
       For more details, please see Section 4.1.3 of Pohlmann's Diploma
       thesis. 
   "]]
 }


