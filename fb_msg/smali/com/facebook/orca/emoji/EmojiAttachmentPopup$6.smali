.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;
.super Ljava/lang/Object;
.source "EmojiAttachmentPopup.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iput-object p2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->h(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecorder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioRecorder;->a(Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;)V

    .line 361
    const/4 v0, 0x0

    return v0
.end method
