.class public Lcom/facebook/widget/PhotoButton;
.super Landroid/widget/ImageButton;
.source "PhotoButton.java"


# instance fields
.field private a:Z


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 67
    const v0, -0x777778

    invoke-virtual {p0, v0}, Lcom/facebook/widget/PhotoButton;->setColorFilter(I)V

    .line 68
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/facebook/widget/PhotoButton;->clearColorFilter()V

    .line 73
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x4348

    const/4 v3, 0x1

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/PhotoButton;->a:Z

    .line 42
    invoke-virtual {p0}, Lcom/facebook/widget/PhotoButton;->a()V

    .line 62
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/facebook/widget/PhotoButton;->a:Z

    if-nez v0, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/facebook/widget/PhotoButton;->b()V

    .line 45
    invoke-virtual {p0}, Lcom/facebook/widget/PhotoButton;->c()V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/facebook/widget/PhotoButton;->a:Z

    if-nez v0, :cond_4

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/PhotoButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/widget/PhotoButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 53
    cmpl-float v0, v0, v4

    if-gtz v0, :cond_3

    cmpl-float v0, v1, v4

    if-lez v0, :cond_0

    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/widget/PhotoButton;->b()V

    .line 55
    iput-boolean v3, p0, Lcom/facebook/widget/PhotoButton;->a:Z

    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/facebook/widget/PhotoButton;->b()V

    .line 59
    iput-boolean v3, p0, Lcom/facebook/widget/PhotoButton;->a:Z

    goto :goto_0
.end method
