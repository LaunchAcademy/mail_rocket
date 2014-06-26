class CommentMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_comment(comment)
    @comment = comment
    @post = comment.post
    subject = 'Somebody posted a new comment on your post'

    mail(to: @post.user.email, subject: subject)
  end
end
