.class public Lcom/facebook/widget/CountBadge;
.super Lcom/facebook/widget/CustomFrameLayout;
.source "CountBadge.java"


# instance fields
.field private a:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:Lcom/facebook/widget/ViewTransform;


# direct methods
.method private a()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 113
    iget-object v0, p0, Lcom/facebook/widget/CountBadge;->d:Lcom/facebook/widget/ViewTransform;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/ViewTransform;->a(F)V

    .line 114
    iget-object v0, p0, Lcom/facebook/widget/CountBadge;->d:Lcom/facebook/widget/ViewTransform;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/ViewTransform;->b(F)V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/CountBadge;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/widget/CountBadge;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/facebook/widget/CountBadge;->d:Lcom/facebook/widget/ViewTransform;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/ViewTransform;->a(F)V

    .line 125
    iget-object v0, p0, Lcom/facebook/widget/CountBadge;->d:Lcom/facebook/widget/ViewTransform;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/ViewTransform;->b(F)V

    .line 126
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/widget/CountBadge;->d:Lcom/facebook/widget/ViewTransform;

    invoke-virtual {v0}, Lcom/facebook/widget/ViewTransform;->a()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/widget/CountBadge;->a:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->c()V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/facebook/widget/CountBadge;->c:I

    return v0
.end method

.method public setCount(I)V
    .locals 2
    .parameter

    .prologue
    .line 66
    if-gtz p1, :cond_0

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/widget/CountBadge;->c:I

    .line 68
    iget-object v0, p0, Lcom/facebook/widget/CountBadge;->b:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-direct {p0}, Lcom/facebook/widget/CountBadge;->b()V

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    iput p1, p0, Lcom/facebook/widget/CountBadge;->c:I

    .line 72
    iget-object v0, p0, Lcom/facebook/widget/CountBadge;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/widget/CountBadge;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/facebook/widget/CountBadge;->a()V

    goto :goto_0
.end method
