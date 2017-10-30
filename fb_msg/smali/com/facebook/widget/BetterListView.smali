.class public Lcom/facebook/widget/BetterListView;
.super Landroid/widget/ListView;
.source "BetterListView.java"

# interfaces
.implements Lcom/facebook/widget/ScrollableView;


# instance fields
.field private a:Lcom/facebook/widget/listeners/BetterViewListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/listeners/BetterViewListener",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/facebook/orca/common/ui/util/MultitouchResampler;

.field private c:Landroid/view/MotionEvent;

.field private d:Z

.field private e:Z

.field private f:Lcom/facebook/orca/app/UserInteractionController;

.field private g:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/widget/BetterListView;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/widget/BetterListView;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/widget/BetterListView;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/facebook/widget/listeners/BetterViewListener;

    const-class v1, Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {v0, v1}, Lcom/facebook/widget/listeners/BetterViewListener;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/facebook/widget/BetterListView;->a:Lcom/facebook/widget/listeners/BetterViewListener;

    .line 53
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->a:Lcom/facebook/widget/listeners/BetterViewListener;

    invoke-virtual {v0}, Lcom/facebook/widget/listeners/BetterViewListener;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 55
    iput-object v2, p0, Lcom/facebook/widget/BetterListView;->c:Landroid/view/MotionEvent;

    .line 56
    iput-boolean v3, p0, Lcom/facebook/widget/BetterListView;->d:Z

    .line 57
    iput-object v2, p0, Lcom/facebook/widget/BetterListView;->b:Lcom/facebook/orca/common/ui/util/MultitouchResampler;

    .line 58
    iput-boolean v3, p0, Lcom/facebook/widget/BetterListView;->e:Z

    .line 59
    iput-object v2, p0, Lcom/facebook/widget/BetterListView;->f:Lcom/facebook/orca/app/UserInteractionController;

    .line 60
    new-instance v0, Lcom/facebook/widget/BetterListView$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/BetterListView$1;-><init>(Lcom/facebook/widget/BetterListView;)V

    iput-object v0, p0, Lcom/facebook/widget/BetterListView;->g:Landroid/widget/AbsListView$OnScrollListener;

    .line 72
    invoke-virtual {p0}, Lcom/facebook/widget/BetterListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 73
    const-class v1, Lcom/facebook/orca/app/UserInteractionController;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/UserInteractionController;

    iput-object v0, p0, Lcom/facebook/widget/BetterListView;->f:Lcom/facebook/orca/app/UserInteractionController;

    .line 74
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1
    .parameter

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->f:Lcom/facebook/orca/app/UserInteractionController;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/UserInteractionController;->b(Landroid/view/View;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->f:Lcom/facebook/orca/app/UserInteractionController;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/UserInteractionController;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->a:Lcom/facebook/widget/listeners/BetterViewListener;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/listeners/BetterViewListener;->b(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public b(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->a:Lcom/facebook/widget/listeners/BetterViewListener;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/listeners/BetterViewListener;->c(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 174
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->c:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->b:Lcom/facebook/orca/common/ui/util/MultitouchResampler;

    iget-object v1, p0, Lcom/facebook/widget/BetterListView;->c:Landroid/view/MotionEvent;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/facebook/widget/BetterListView;->getNextEstimatedDrawTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->a(Landroid/view/MotionEvent;IJ)Landroid/view/MotionEvent;

    move-result-object v0

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/widget/BetterListView;->d:Z

    .line 181
    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/widget/BetterListView;->d:Z

    .line 184
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 185
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/BetterListView;->c:Landroid/view/MotionEvent;

    .line 190
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 191
    return-void
.end method

.method protected getNextEstimatedDrawTime()J
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/facebook/widget/BetterListView;->d:Z

    if-nez v0, :cond_0

    .line 196
    invoke-super {p0}, Landroid/widget/ListView;->invalidate()V

    .line 198
    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/facebook/widget/BetterListView;->d:Z

    if-nez v0, :cond_0

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->invalidate(IIII)V

    .line 205
    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/facebook/widget/BetterListView;->d:Z

    if-nez v0, :cond_0

    .line 210
    invoke-super {p0, p1}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    .line 212
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 114
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->f:Lcom/facebook/orca/app/UserInteractionController;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/UserInteractionController;->b(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBroadcastInteractionChanges(Z)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/facebook/widget/BetterListView;->e:Z

    .line 93
    iget-boolean v0, p0, Lcom/facebook/widget/BetterListView;->e:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->g:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/BetterListView;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->g:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/BetterListView;->b(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/widget/BetterListView;->a:Lcom/facebook/widget/listeners/BetterViewListener;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/listeners/BetterViewListener;->a(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
