function [ best_val, best_pos ] = minimax_alpha_beta( Board, depth, player, alpha, beta )
%     Minimax helper function: Return the minimax value of a particular board,
%     given a particular depth to estimate to
%   alpha é o valor mais alto
%		beta é o valor mais baixo
	best_val = 0;
	best_pos = randi(7);
	val = VALOR_MAX(Board,-Inf,Inf);
			for i=1:7,
					[new_board, valid] = do_move( Board, i, player);
					if valid == 1,
							val = -1*minimax(new_board, depth-1, opposite_player(player));
							if isnan(best_val) || val > best_val,
									best_val = val;
									best_pos = i;
							end
					end
			end


end
