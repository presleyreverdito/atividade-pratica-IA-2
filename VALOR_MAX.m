function [best_val] = VALOR_MAX(Board, depth, player, alpha, beta)
%
%
%
%
    if is_terminal(Board,depth)
      best_val = eval_game(Board,depth,opposite_player(player))

    else
      val = -Inf;
      for i=1:alpha
        pos = 
        val= minimax_alpha_beta(val,VALOR_MIN(),alpha,beta);
        if val >= beta,
          best_val=val;
        end
          alpha = minimax_alpha_beta(alpha,v)
      end
      best_val;
    end
end
