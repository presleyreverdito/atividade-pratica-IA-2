function [best_val,best_pos] = VALOR_MIN(Board, depth, player, alpha, betaa)
%
%
%

best_val = nan;

    if is_terminal(Board,depth)
      best_val = eval_game(Board,depth,opposite_player(player));

    else
      val = Inf;
      for i=1:7
        [new_board, valid] = do_move( Board, i, player);
        if valid == 1,
            val = min(val,VALOR_MAX(new_board, depth-1, opposite_player(player), alpha, betaa));

            if val <= alpha,
              best_val=val;
              best_pos = i;
              break;
            end
            betaa = min(betaa,val);
            if isnan(best_val) || val < best_val,
                best_val = val;
                best_pos = i;
            end
        end
      end
    end
end
