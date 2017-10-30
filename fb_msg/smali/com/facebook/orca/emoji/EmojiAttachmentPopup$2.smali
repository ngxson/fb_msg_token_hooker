.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$2;
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
    .line 255
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$2;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$2;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$2;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->c(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/R$id;->emoji_back_container:I

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 259
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$2;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$2;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->c(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/R$id;->emoji_front_container:I

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 262
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    return-void
.end method
