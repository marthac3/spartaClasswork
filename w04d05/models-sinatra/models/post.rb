class Post
	attr_accessor :id, :title, :body

	def self.open_connection
		PG.connect(dbname: "sparta_blog")
	end

	def self.hydrate post_data
    post = Post.new

    post.id = post_data['id']
    post.title = post_data['title']
    post.body = post_data['body']

    post
	end

	def self.all
		conn = self.open_connection
		sql = "SELECT id,title,body FROM post ORDER BY id;"
		results = conn.exec(sql)
		results.map { |result| self.hydrate (result) }
	end

	def self.find(id)
		conn = self.open_connection
		sql = "SELECT id,title,body FROM post WHERE id = #{id} LIMIT 1;"
		results = conn.exec(sql)
		self.hydrate (results[0])
	end

	def save
  	conn = Post.open_connection
    if(!self.id) 
        # Insert a new record in to the database
        sql = "INSERT INTO post (title , body) VALUES ( '#{self.title}', '#{self.body}')"
      else 
        # Update an existing one
        sql = "UPDATE post SET title='#{self.title}', body='#{self.body}' WHERE id = #{self.id}"
      end
    conn.exec(sql)
  end

  def self.destroy id
        conn = self.open_connection
        sql = "DELETE FROM post WHERE id = #{id};"
        conn.exec(sql)
    end
end