module FeedsHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'create'
         confirm_feeds_path
       elsif action_name == 'edit' #編集画面の場合は、確認画面が不要だから
          feed_path
        end
    end
end
