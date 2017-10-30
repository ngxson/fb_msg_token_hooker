.class public Lcom/facebook/widget/ViewTransform;
.super Ljava/lang/Object;
.source "ViewTransform.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/nineoldandroids/view/animation/AnimatorProxy;


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a:Z

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/facebook/widget/ViewTransform;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/ViewTransform;->b:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g()F

    move-result v0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 37
    sget-boolean v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/facebook/widget/ViewTransform;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/ViewTransform;->b:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g(F)V

    goto :goto_0
.end method

.method public b(F)V
    .locals 1
    .parameter

    .prologue
    .line 45
    sget-boolean v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/facebook/widget/ViewTransform;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/ViewTransform;->b:Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h(F)V

    goto :goto_0
.end method
