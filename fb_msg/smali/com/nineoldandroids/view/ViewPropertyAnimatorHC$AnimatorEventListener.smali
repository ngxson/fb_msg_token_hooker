.class Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorHC.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;


# virtual methods
.method public a(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 660
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->a(Lcom/nineoldandroids/animation/Animator;)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->c(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->c(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 670
    :cond_1
    return-void
.end method

.method public a(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 7
    .parameter

    .prologue
    .line 689
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->n()F

    move-result v2

    .line 690
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->c(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    .line 691
    iget v1, v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->a:I

    .line 692
    and-int/lit16 v1, v1, 0x1ff

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->d(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 694
    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 698
    :cond_0
    iget-object v3, v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->b:Ljava/util/ArrayList;

    .line 699
    if-eqz v3, :cond_1

    .line 700
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 701
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 702
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;

    .line 703
    iget v5, v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->b:F

    iget v6, v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->c:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 707
    iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    iget v0, v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->a:I

    invoke-static {v6, v0, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;IF)V

    .line 701
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->d(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 718
    if-eqz v0, :cond_2

    .line 719
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 721
    :cond_2
    return-void
.end method

.method public b(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 639
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->b(Lcom/nineoldandroids/animation/Animator;)V

    .line 642
    :cond_0
    return-void
.end method

.method public c(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 646
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->c(Lcom/nineoldandroids/animation/Animator;)V

    .line 649
    :cond_0
    return-void
.end method

.method public d(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 653
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->d(Lcom/nineoldandroids/animation/Animator;)V

    .line 656
    :cond_0
    return-void
.end method
