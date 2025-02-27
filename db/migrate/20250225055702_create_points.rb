class CreatePoints < ActiveRecord::Migration[7.2]
  def change
    create_table :points do |t|
      t.references :user, foreign_key: true  # user_idを外部キーとして設定
      t.integer :add  # ポイント数を加算するカラム

      t.timestamps
    end
  end
end
