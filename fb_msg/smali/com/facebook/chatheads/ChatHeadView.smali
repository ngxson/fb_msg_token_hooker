.class public Lcom/facebook/chatheads/ChatHeadView;
.super Lcom/facebook/widget/CustomFrameLayout;
.source "ChatHeadView.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private c:Lcom/nineoldandroids/animation/Animator;

.field private d:Lcom/nineoldandroids/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/chatheads/ChatHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/chatheads/ChatHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 52
    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 54
    sget v1, Lcom/facebook/R$layout;->chat_head_window_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    sget v0, Lcom/facebook/R$id;->porthole_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadView;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->a:Landroid/view/View;

    .line 59
    sget v0, Lcom/facebook/R$id;->image_profile_pic_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->b:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 60
    return-void
.end method

.method private a(FJ)Lcom/nineoldandroids/animation/Animator;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->c:Lcom/nineoldandroids/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->c:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->c:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->d()V

    .line 84
    :cond_0
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 85
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/nineoldandroids/animation/Animator;

    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadView;->a:Landroid/view/View;

    const-string v3, "scaleX"

    new-array v4, v6, [F

    aput p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadView;->a:Landroid/view/View;

    const-string v3, "scaleY"

    new-array v4, v6, [F

    aput p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->a([Lcom/nineoldandroids/animation/Animator;)V

    .line 89
    invoke-virtual {v0, p2, p3}, Lcom/nineoldandroids/animation/AnimatorSet;->b(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 90
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->c()V

    .line 92
    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->c:Lcom/nineoldandroids/animation/Animator;

    .line 94
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->c:Lcom/nineoldandroids/animation/Animator;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/nineoldandroids/animation/Animator;
    .locals 3

    .prologue
    .line 72
    const/high16 v0, 0x3f80

    const-wide/16 v1, 0x78

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/chatheads/ChatHeadView;->a(FJ)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->d()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->a:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    .line 108
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/Animator;->a(J)Lcom/nineoldandroids/animation/Animator;

    .line 109
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->c()V

    .line 110
    return-void
.end method

.method public b()Lcom/nineoldandroids/animation/Animator;
    .locals 3

    .prologue
    .line 76
    const v0, 0x3f68f5c3

    const-wide/16 v1, 0x21

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/chatheads/ChatHeadView;->a(FJ)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 5
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->d()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->a:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    .line 118
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/Animator;->a(J)Lcom/nineoldandroids/animation/Animator;

    .line 119
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->d:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->c()V

    .line 120
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/R$anim;->chat_head_show:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    return-void
.end method

.method public setUserKey(Lcom/facebook/orca/users/UserKey;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->b:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->getUserKey()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadView;->b:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 68
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadView;->invalidate()V

    goto :goto_0
.end method
