.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$8;
.super Ljava/lang/Object;
.source "EmojiAttachmentPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$8;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 376
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$8;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->h(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/AudioRecorder;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$8;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->h(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecorder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/AudioRecorder;->a(Z)V

    .line 384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
