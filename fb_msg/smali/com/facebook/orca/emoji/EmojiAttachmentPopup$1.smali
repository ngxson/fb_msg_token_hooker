.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;
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
    .line 236
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/EmojiSet;

    .line 242
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->b(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/widget/FrameLayout;Lcom/facebook/orca/emoji/EmojiSet;)V

    .line 243
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v3}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->b(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1, v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Ljava/util/List;Lcom/facebook/orca/emoji/EmojiSet;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->c(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/R$id;->emoji_front_container:I

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 249
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->c(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/R$id;->emoji_back_container:I

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 252
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    return-void
.end method
