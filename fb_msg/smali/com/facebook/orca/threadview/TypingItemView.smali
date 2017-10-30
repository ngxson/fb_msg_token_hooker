.class public Lcom/facebook/orca/threadview/TypingItemView;
.super Lcom/facebook/widget/CustomFrameLayout;
.source "TypingItemView.java"


# instance fields
.field private a:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private b:Lcom/facebook/widget/BetterTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomFrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/TypingItemView;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    sget v0, Lcom/facebook/R$layout;->orca_typing_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/TypingItemView;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/TypingItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4140

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v2, v2, v2, v0}, Lcom/facebook/orca/threadview/TypingItemView;->setPadding(IIII)V

    .line 41
    sget v0, Lcom/facebook/R$id;->message_user_tile:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/TypingItemView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/TypingItemView;->a:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 42
    sget v0, Lcom/facebook/R$id;->message_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/TypingItemView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/BetterTextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/TypingItemView;->b:Lcom/facebook/widget/BetterTextView;

    .line 43
    return-void
.end method


# virtual methods
.method public setTypingItem(Lcom/facebook/orca/threadview/RowTypingItem;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/threadview/TypingItemView;->a:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowTypingItem;->b()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/threadview/TypingItemView;->b:Lcom/facebook/widget/BetterTextView;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/TypingItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->presence_typing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
