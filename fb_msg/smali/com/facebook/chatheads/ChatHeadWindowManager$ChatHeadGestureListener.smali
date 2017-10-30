.class Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChatHeadWindowManager.java"


# instance fields
.field a:F

.field b:F

.field c:Lcom/facebook/chatheads/ChatHeadView;

.field final synthetic d:Lcom/facebook/chatheads/ChatHeadWindowManager;


# direct methods
.method public constructor <init>(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->d:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 557
    iput-object p2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->c:Lcom/facebook/chatheads/ChatHeadView;

    .line 558
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->c:Lcom/facebook/chatheads/ChatHeadView;

    invoke-virtual {v0}, Lcom/facebook/chatheads/ChatHeadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->a:F

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->b:F

    .line 568
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->c:Lcom/facebook/chatheads/ChatHeadView;

    invoke-virtual {v0}, Lcom/facebook/chatheads/ChatHeadView;->b()Lcom/nineoldandroids/animation/Animator;

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 599
    mul-float v0, p3, p3

    mul-float v1, p4, p4

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 602
    const/high16 v1, 0x44c8

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 603
    const/4 v0, 0x0

    .line 613
    :goto_0
    return v0

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->d:Lcom/facebook/chatheads/ChatHeadWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->c(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)Lcom/facebook/chatheads/ChatHeadView;

    .line 610
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->c:Lcom/facebook/chatheads/ChatHeadView;

    invoke-virtual {v0}, Lcom/facebook/chatheads/ChatHeadView;->a()Lcom/nineoldandroids/animation/Animator;

    .line 611
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->d:Lcom/facebook/chatheads/ChatHeadWindowManager;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->c:Lcom/facebook/chatheads/ChatHeadView;

    invoke-static {v0, v1, p3, p4}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;FF)V

    .line 613
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 575
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->d:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->e(Lcom/facebook/chatheads/ChatHeadWindowManager;)Lcom/facebook/chatheads/ChatHeadView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->d:Lcom/facebook/chatheads/ChatHeadWindowManager;

    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->c:Lcom/facebook/chatheads/ChatHeadView;

    invoke-static {v1, v2}, Lcom/facebook/chatheads/ChatHeadWindowManager;->c(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)Lcom/facebook/chatheads/ChatHeadView;

    .line 578
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->c:Lcom/facebook/chatheads/ChatHeadView;

    invoke-virtual {v1}, Lcom/facebook/chatheads/ChatHeadView;->a()Lcom/nineoldandroids/animation/Animator;

    .line 582
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->d:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v1, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadWindowManager;Z)Z

    .line 583
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->d:Lcom/facebook/chatheads/ChatHeadWindowManager;

    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->c:Lcom/facebook/chatheads/ChatHeadView;

    invoke-static {v1, v2}, Lcom/facebook/chatheads/ChatHeadWindowManager;->d(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)V

    .line 590
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->a:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 591
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->b:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 592
    iget-object v3, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->d:Lcom/facebook/chatheads/ChatHeadWindowManager;

    iget-object v4, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->c:Lcom/facebook/chatheads/ChatHeadView;

    invoke-static {v3, v4, v1, v2}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Lcom/facebook/chatheads/ChatHeadWindowManager;Landroid/view/View;II)V

    .line 594
    :goto_0
    return v0

    .line 585
    :cond_1
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->d:Lcom/facebook/chatheads/ChatHeadWindowManager;

    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->d:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v2}, Lcom/facebook/chatheads/ChatHeadWindowManager;->e(Lcom/facebook/chatheads/ChatHeadWindowManager;)Lcom/facebook/chatheads/ChatHeadView;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;->c:Lcom/facebook/chatheads/ChatHeadView;

    invoke-static {v1, v2, v3}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;Lcom/facebook/chatheads/ChatHeadView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    const/4 v0, 0x0

    goto :goto_0
.end method
