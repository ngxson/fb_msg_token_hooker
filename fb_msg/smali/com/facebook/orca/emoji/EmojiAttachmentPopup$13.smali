.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;
.super Ljava/lang/Object;
.source "EmojiAttachmentPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/facebook/orca/emoji/EmojiSet;

.field final synthetic d:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/widget/FrameLayout;Ljava/util/List;Lcom/facebook/orca/emoji/EmojiSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->d:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iput-object p2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->c:Lcom/facebook/orca/emoji/EmojiSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 613
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 617
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->a:Landroid/widget/FrameLayout;

    if-eq v0, v2, :cond_1

    .line 618
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    goto :goto_1

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 622
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->d:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->a:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 623
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->d:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->c:Lcom/facebook/orca/emoji/EmojiSet;

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/widget/FrameLayout;Lcom/facebook/orca/emoji/EmojiSet;)V

    .line 625
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->d:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->d:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->a:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;->c:Lcom/facebook/orca/emoji/EmojiSet;

    invoke-static {v1, v0, v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Ljava/util/List;Lcom/facebook/orca/emoji/EmojiSet;)V

    goto :goto_0
.end method
