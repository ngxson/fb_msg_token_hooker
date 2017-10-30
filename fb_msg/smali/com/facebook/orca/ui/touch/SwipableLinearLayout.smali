.class public Lcom/facebook/orca/ui/touch/SwipableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SwipableLinearLayout.java"

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
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ui/touch/DragMotionDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/facebook/orca/ui/touch/SwipableLinearLayout;->a:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    .line 24
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/ui/touch/SwipableLinearLayout;->a:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/facebook/orca/ui/touch/SwipableLinearLayout;->a:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/ui/touch/SwipableLinearLayout;->b:Z

    .line 37
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/ui/touch/SwipableLinearLayout;->b:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/orca/ui/touch/SwipableLinearLayout;->b:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/ui/touch/SwipableLinearLayout;->a:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/ui/touch/SwipableLinearLayout;->b:Z

    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/ui/touch/SwipableLinearLayout;->b:Z

    return v0
.end method
