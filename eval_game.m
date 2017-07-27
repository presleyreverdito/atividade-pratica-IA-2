% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que implementa
%
% author: raonifst at gmail dot com


function [ score ] = eval_game_a( Board, depth,  player)
        score=0;

       if (find_streak(Board, 1,4)>0)
         score = 9999;
       endif
       for i=2:3
        score = score+find_streak(Board,1,i);
       end
       score =0;
      if(find_streak(Board,opposite_player(1),4)>0)
        score = -9999;
      endif
      for i=2:3
        score =score -find_streak(Board,opposite_player(1),i);
      end



%
end
