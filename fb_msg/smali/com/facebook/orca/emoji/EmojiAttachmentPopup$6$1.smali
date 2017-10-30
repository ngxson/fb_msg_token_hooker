.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;
.super Ljava/lang/Object;
.source "EmojiAttachmentPopup.java"

# interfaces
.implements Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;


# instance fields
.field final synthetic a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

.field private b:Ljava/lang/Runnable;

.field private c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaRecorder;)V
    .locals 2
    .parameter

    .prologue
    .line 323
    new-instance v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$1;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;Landroid/media/MediaRecorder;)V

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->b:Ljava/lang/Runnable;

    .line 332
    new-instance v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$2;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;)V

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->c:Ljava/lang/Runnable;

    .line 343
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public a(Landroid/net/Uri;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    if-eqz p2, :cond_0

    .line 352
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->i(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v1, v1, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->h(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecorder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/orca/attachments/AudioRecorder;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;->a(Lcom/facebook/orca/attachments/MediaAttachment;)V

    .line 354
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->e(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->i(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;->c()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a()V

    .line 359
    return-void
.end method
