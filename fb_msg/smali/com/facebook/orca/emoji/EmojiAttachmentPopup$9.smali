.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$9;
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
    .line 387
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$9;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$9;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->h(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$9;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->h(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/attachments/AudioRecorder;->a(Z)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$9;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$9;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->c(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/R$id;->audio_record_container:I

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 394
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$9;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$9;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->c(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/R$id;->emoji_front_container:I

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 397
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    return-void
.end method
