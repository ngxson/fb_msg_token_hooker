.class Lcom/facebook/orca/common/ui/titlebar/DivebarController$5;
.super Ljava/lang/Object;
.source "DivebarController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/titlebar/DivebarController;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$5;->a:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$5;->a:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->i(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarOverlayClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$5;->a:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$5;->a:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-static {v1}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->j(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 548
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 549
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$5;->a:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-static {v1}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->i(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarOverlayClickListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarOverlayClickListener;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    const/4 v0, 0x1

    .line 555
    :goto_0
    return v0

    .line 552
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 555
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
