.class Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;
.super Lcom/nineoldandroids/view/ViewPropertyAnimator;
.source "ViewPropertyAnimatorHC.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z

.field private e:J

.field private f:Z

.field private g:Landroid/view/animation/Interpolator;

.field private h:Z

.field private i:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

.field private j:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nineoldandroids/animation/Animator;",
            "Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a(I)F
    .locals 1
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 592
    if-eqz v0, :cond_0

    .line 593
    sparse-switch p1, :sswitch_data_0

    .line 626
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 596
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0

    .line 599
    :sswitch_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0

    .line 602
    :sswitch_2
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    goto :goto_0

    .line 605
    :sswitch_3
    invoke-virtual {v0}, Landroid/view/View;->getRotationX()F

    move-result v0

    goto :goto_0

    .line 608
    :sswitch_4
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result v0

    goto :goto_0

    .line 611
    :sswitch_5
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    goto :goto_0

    .line 614
    :sswitch_6
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    goto :goto_0

    .line 617
    :sswitch_7
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_0

    .line 620
    :sswitch_8
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    goto :goto_0

    .line 623
    :sswitch_9
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0

    .line 593
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method static synthetic a(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->i:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    return-object p1
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 429
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->b([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v4

    .line 430
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 432
    iget-object v2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 434
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    move v3, v1

    .line 435
    :goto_0
    if-ge v2, v5, :cond_0

    .line 436
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;

    .line 437
    iget v1, v1, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->a:I

    or-int/2addr v3, v1

    .line 435
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->l:Ljava/util/HashMap;

    new-instance v2, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    invoke-direct {v2, v3, v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->j:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-virtual {v4, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->a(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 441
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->j:Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-virtual {v4, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 442
    iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->f:Z

    if-eqz v0, :cond_1

    .line 443
    iget-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->e:J

    invoke-virtual {v4, v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->e(J)V

    .line 445
    :cond_1
    iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->d:Z

    if-eqz v0, :cond_2

    .line 446
    iget-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->c:J

    invoke-virtual {v4, v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->c(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 448
    :cond_2
    iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->h:Z

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->a(Landroid/view/animation/Interpolator;)V

    .line 451
    :cond_3
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->c()V

    .line 452
    return-void
.end method

.method private a(IF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(I)F

    move-result v0

    .line 468
    sub-float v1, p2, v0

    .line 469
    invoke-direct {p0, p1, v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IFF)V

    .line 470
    return-void
.end method

.method private a(IFF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 496
    const/4 v2, 0x0

    .line 497
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator;

    .line 499
    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    .line 500
    invoke-virtual {v1, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 505
    iget v1, v1, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->a:I

    if-nez v1, :cond_0

    .line 512
    :goto_0
    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->d()V

    .line 517
    :cond_1
    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;

    invoke-direct {v0, p1, p2, p3}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;-><init>(IFF)V

    .line 518
    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 520
    if-eqz v0, :cond_2

    .line 521
    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 522
    iget-object v1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 524
    :cond_2
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a()V

    return-void
.end method

.method static synthetic a(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b(IF)V

    return-void
.end method

.method static synthetic b(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->i:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private b(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 536
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 537
    if-eqz v0, :cond_0

    .line 538
    sparse-switch p1, :sswitch_data_0

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 541
    :sswitch_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 545
    :sswitch_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 549
    :sswitch_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 553
    :sswitch_3
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    .line 557
    :sswitch_4
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 561
    :sswitch_5
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    .line 565
    :sswitch_6
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 569
    :sswitch_7
    invoke-virtual {v0, p2}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 573
    :sswitch_8
    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 577
    :sswitch_9
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 538
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method static synthetic c(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public a(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .parameter

    .prologue
    .line 389
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    .line 390
    return-object p0
.end method

.method public a(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 3
    .parameter

    .prologue
    .line 219
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->d:Z

    .line 224
    iput-wide p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->c:J

    .line 225
    return-object p0
.end method

.method public a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->i:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 278
    return-object p0
.end method

.method public b(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1
    .parameter

    .prologue
    .line 401
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;->a(IF)V

    .line 402
    return-object p0
.end method
