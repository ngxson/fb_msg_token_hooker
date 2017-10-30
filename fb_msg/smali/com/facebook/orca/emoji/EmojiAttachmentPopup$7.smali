.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$7;
.super Ljava/lang/Object;
.source "EmojiAttachmentPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$7;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$7;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->h(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$7;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->h(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecorder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioRecorder;->a(Z)V

    .line 371
    :cond_0
    return-void
.end method
