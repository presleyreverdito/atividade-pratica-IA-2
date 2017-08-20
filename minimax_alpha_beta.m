function [ best_val, best_pos ] = minimax_alpha_beta( Board, depth, player, alpha, betaa)
%     Minimax helper function: Return the minimax value of a particular board,
%     given a particular depth to estimate to
%   alpha é o valor mais alto
%		beta é o valor mais baixo
 debug = 1;
	[best_val,best_pos] = VALOR_MAX(Board,depth,player,-Inf,Inf);
	if debug == 1,
			fprintf('******************************************\n');
			fprintf('Profundidade: %d\nJogador: %d\nMelhor valor: %f\nMelhor Posicao: %d\n', depth, player, best_val, best_pos);

			%player
			%best_val
			%best_pos

		 fprintf('******************************************\n');
	end
end
