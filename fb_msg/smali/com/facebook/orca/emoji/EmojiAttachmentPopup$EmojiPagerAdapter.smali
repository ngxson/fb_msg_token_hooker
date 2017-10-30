.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmojiAttachmentPopup.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/orca/emoji/EmojiSet;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V
    .locals 1
    .parameter

    .prologue
    .line 831
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 832
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->b:Ljava/util/List;

    .line 833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->c:Lcom/facebook/orca/emoji/EmojiSet;

    .line 834
    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Ljava/util/List;Lcom/facebook/orca/emoji/EmojiSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Lcom/facebook/orca/emoji/EmojiSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 836
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 837
    iput-object p2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->b:Ljava/util/List;

    .line 838
    iput-object p3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->c:Lcom/facebook/orca/emoji/EmojiSet;

    .line 839
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 848
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 849
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->c:Lcom/facebook/orca/emoji/EmojiSet;

    iget-object v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v3, p2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->b(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Lcom/facebook/orca/emoji/EmojiSet;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 854
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 856
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 857
    return-object v0
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 863
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 867
    check-cast p2, Landroid/widget/FrameLayout;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 871
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->b:Ljava/util/List;

    return-object v0
.end method
