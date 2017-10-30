.class public Lcom/facebook/orca/common/ui/overlay/SwipableOverlayLayout;
.super Lcom/facebook/orca/common/ui/overlay/OverlayLayout;
.source "SwipableOverlayLayout.java"

# interfaces
.implements Lcom/facebook/orca/ui/touch/SwipeableLayout;


# instance fields
.field private a:Lcom/facebook/orca/ui/touch/DragMotionDetector;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ui/touch/DragMotionDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/orca/common/ui/overlay/SwipableOverlayLayout;->a:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    .line 26
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/common/ui/overlay/SwipableOverlayLayout;->a:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/common/ui/overlay/SwipableOverlayLayout;->a:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/overlay/SwipableOverlayLayout;->b:Z

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/overlay/SwipableOverlayLayout;->b:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/overlay/SwipableOverlayLayout;->b:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/facebook/orca/common/ui/overlay/SwipableOverlayLayout;->a:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/overlay/SwipableOverlayLayout;->b:Z

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/overlay/SwipableOverlayLayout;->b:Z

    return v0
.end method
