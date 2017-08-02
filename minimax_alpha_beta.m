function [ best_val, best_pos ] = minimax_alpha_beta( Board, depth, player, alpha, betaa)
%     Minimax helper function: Return the minimax value of a particular board,
%     given a particular depth to estimate to
%   alpha é o valor mais alto
%		beta é o valor mais baixo

	[best_val,best_pos] = VALOR_MAX(Board,depth,player,-Inf,Inf);
end
