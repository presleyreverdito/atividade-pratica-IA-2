% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que implementa o custo gerado por cada estado 
%
% author: raonifst at gmail dot com


function [ score ] = eval_game( Board, depth,  player)
        peso = [0 1 10 1000000000000];
        v= ones(1,4);
        m= ones(1,4);
        score = 0;
       for i=1:4
         v(1,i)= find_streak(Board,player,i);
         m(1,i)= find_streak(Board,opposite_player(player),i);
       end
       score1 = dot(peso,v);
       score2 = dot(peso,m);
       score= score1 - score2;






end
