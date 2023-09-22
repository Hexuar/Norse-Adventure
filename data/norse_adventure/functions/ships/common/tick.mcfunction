function norse_adventure:ships/common/assemble


execute if block ~ ~-2 ~ #norse_adventure:passable run tp ~ ~-1 ~
execute unless block ~ ~-2 ~ #norse_adventure:passable if block ~ ~-1 ~ #norse_adventure:passable run tp ~ ~-0.5 ~
execute unless block ~ ~-1 ~ #norse_adventure:passable if block ~ ~ ~ #norse_adventure:passable run tp ~ ~-0.1 ~