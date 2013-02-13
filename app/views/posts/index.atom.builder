atom_feed do |feed|
  feed.title("Sarah's Desk")
  feed.updated(@posts.first ? @posts.first.created_at : Time.now.utc)

  for post in @posts
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.content(post.content, :type => 'html')

      entry.author do |author|
        author.name(post.user.name)
        author.email(post.user.email)
      end
    end
  end
end