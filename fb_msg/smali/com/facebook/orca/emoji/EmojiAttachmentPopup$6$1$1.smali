.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$1;
.super Ljava/lang/Object;
.source "EmojiAttachmentPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/media/MediaRecorder;

.field final synthetic b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;Landroid/media/MediaRecorder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$1;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;

    iput-object p2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$1;->a:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$1;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$1;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->f(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$1;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$1;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;

    iget-object v2, v2, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v2, v2, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->f(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->getMax()I

    move-result v2

    mul-int/2addr v1, v2

    const v2, 0x8000

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->setProgress(I)V

    .line 330
    return-void
.end method
