ActiveRecord::Schema.define do
  unless ActiveRecord::Base.connection.tables.include? 'polls'
    create_table :polls do |table|
      table.column :title,     :string
      table.column :status,    :string
    end
  end

  unless ActiveRecord::Base.connection.tables.include? 'options'
    create_table :options do |table|
      table.column :poll_id,      :integer
      table.column :title,        :string
    end
  end

  unless ActiveRecord::Base.connection.tables.include? 'votes'
    create_table :votes do |table|
      table.column :option_id,    :integer
      table.column :user_id,      :integer
    end
  end

  unless ActiveRecord::Base.connection.tables.include? 'comments'
    create_table :comments do |table|
      table.column :poll_id,      :integer
      table.column :comment,      :string
    end
  end

  unless ActiveRecord::Base.connection.tables.include? 'users'
    create_table :users do |table|
      table.column :session_token,   :string
      table.column :email,        :string
      table.column :nick,         :string
      table.column :name,         :string
    end
  end

  unless ActiveRecord::Base.connection.tables.include? 'flowdock_integrations'
    create_table :flowdock_integrations do |table|
      table.column :token,        :string
      table.column :flowdock_id,  :integer
    end
  end
end
