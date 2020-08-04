ActiveRecord::Schema.define(version: 2020_08_04_194311) do
  enable_extension 'plpgsql'

  create_table 'expenses', force: :cascade do |t|
    t.bigint 'author_id', null: false
    t.string 'name'
    t.decimal 'amount'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[author_id], name: 'index_expenses_on_author_id'
  end

  create_table 'groups', force: :cascade do |t|
    t.string 'name'
    t.string 'icon'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.index %w[email], name: 'index_users_on_email', unique: true
    t.index %w[reset_password_token],
            name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'expenses', 'users', column: 'author_id'
end
