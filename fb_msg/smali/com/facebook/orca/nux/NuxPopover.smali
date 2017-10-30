.class public abstract Lcom/facebook/orca/nux/NuxPopover;
.super Lcom/facebook/widget/CustomViewGroup;
.source "NuxPopover.java"


# instance fields
.field a:Z

.field b:Z

.field final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 19
    const/16 v0, 0xfa

    iput v0, p0, Lcom/facebook/orca/nux/NuxPopover;->c:I

    .line 33
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NuxPopover;->b()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0xfa

    iput v0, p0, Lcom/facebook/orca/nux/NuxPopover;->c:I

    .line 28
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NuxPopover;->b()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/16 v0, 0xfa

    iput v0, p0, Lcom/facebook/orca/nux/NuxPopover;->c:I

    .line 23
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NuxPopover;->b()V

    .line 24
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NuxPopover;->setVisibility(I)V

    .line 91
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 92
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 93
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 94
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 95
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NuxPopover;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 101
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 102
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NuxPopover;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NuxPopover;->setVisibility(I)V

    .line 106
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/nux/NuxPopover;->a:Z

    .line 39
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NuxPopover;->setVisibility(I)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NuxPopover;->setClickable(Z)V

    .line 43
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/facebook/orca/nux/NuxPopover;->b:Z

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NuxPopover;->a()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/nux/NuxPopover;->b:Z

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NuxPopover;->c()V

    .line 60
    iget-boolean v0, p0, Lcom/facebook/orca/nux/NuxPopover;->a:Z

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/nux/NuxPopover;->a:Z

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NuxPopover;->setVisibility(I)V

    .line 64
    :cond_0
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NuxPopover;->c()V

    .line 75
    iget-boolean v0, p0, Lcom/facebook/orca/nux/NuxPopover;->a:Z

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/nux/NuxPopover;->a:Z

    .line 77
    invoke-direct {p0}, Lcom/facebook/orca/nux/NuxPopover;->g()V

    .line 79
    :cond_0
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/facebook/orca/nux/NuxPopover;->a:Z

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/nux/NuxPopover;->a:Z

    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/nux/NuxPopover;->h()V

    .line 86
    :cond_0
    return-void
.end method
