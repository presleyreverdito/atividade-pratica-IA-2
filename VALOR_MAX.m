function [best_val,best_pos] = VALOR_MAX(Board, depth, player, alpha, betaa)
%
%
%
%
best_val = nan;

    if is_terminal(Board,depth),
      best_val = eval_game(Board,depth,player);
    else
      val = -Inf;
      i=1;
      while i<=7
        [new_board, valid] = do_move( Board, i, player);
        if valid == 1,
            val= max(val,VALOR_MIN(new_board, depth-1, opposite_player(player), alpha, betaa));
            if val > betaa,
              best_val=val;
              best_pos = i;
              i=8;
            else
              alpha = max(alpha,val);

              if isnan(best_val) || val > best_val,
                best_val = val;
                best_pos = i;
             end
            end
          end
                      i=i+1;

        end
    end
end
