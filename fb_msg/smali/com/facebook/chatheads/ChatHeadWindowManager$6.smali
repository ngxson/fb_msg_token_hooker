.class Lcom/facebook/chatheads/ChatHeadWindowManager$6;
.super Ljava/lang/Object;
.source "ChatHeadWindowManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadWindowManager;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$6;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 498
    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$6;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v2}, Lcom/facebook/chatheads/ChatHeadWindowManager;->c(Lcom/facebook/chatheads/ChatHeadWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 511
    iget-object v3, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$6;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v3}, Lcom/facebook/chatheads/ChatHeadWindowManager;->d(Lcom/facebook/chatheads/ChatHeadWindowManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 512
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 514
    check-cast p1, Lcom/facebook/chatheads/ChatHeadView;

    .line 517
    iget-object v3, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$6;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v3, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)Landroid/view/GestureDetector;

    move-result-object v3

    .line 518
    invoke-virtual {v3, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$6;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v2}, Lcom/facebook/chatheads/ChatHeadWindowManager;->e(Lcom/facebook/chatheads/ChatHeadWindowManager;)Lcom/facebook/chatheads/ChatHeadView;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$6;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v2, p1, v1, v1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadWindowManager;Landroid/view/View;II)V

    .line 529
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$6;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/chatheads/ChatHeadWindowManager;->c(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)Lcom/facebook/chatheads/ChatHeadView;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 536
    goto :goto_0
.end method
