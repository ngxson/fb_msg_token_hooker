.class public Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;
.super Landroid/view/ViewGroup;
.source "RefreshableListViewContainer.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private c:Landroid/widget/Scroller;

.field private d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

.field private e:I

.field private f:I

.field private g:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Z

.field private u:Lcom/facebook/orca/common/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/common/util/ObjectPool",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a:Ljava/lang/Class;

    .line 34
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 73
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 48
    iput v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    .line 57
    iput v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:I

    .line 60
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    .line 61
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    .line 62
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->o:F

    .line 65
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->q:F

    .line 66
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->r:F

    .line 67
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->s:F

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 48
    iput v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    .line 57
    iput v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:I

    .line 60
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    .line 61
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    .line 62
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->o:F

    .line 65
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->q:F

    .line 66
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->r:F

    .line 67
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->s:F

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 48
    iput v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    .line 57
    iput v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:I

    .line 60
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    .line 61
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    .line 62
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->o:F

    .line 65
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->q:F

    .line 66
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->r:F

    .line 67
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->s:F

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method private a(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;
    .locals 3
    .parameter

    .prologue
    .line 630
    if-nez p1, :cond_0

    .line 631
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 633
    :goto_0
    return-object v0

    .line 632
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 633
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    goto :goto_0

    .line 635
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 88
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Landroid/widget/Scroller;

    .line 89
    sget-object v0, Lcom/facebook/R$styleable;->PullToRefreshListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x420c

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f:I

    .line 92
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/util/ObjectPoolManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/ObjectPoolManager;

    const-class v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/ObjectPoolManager;->b(Ljava/lang/Class;)Lcom/facebook/orca/common/util/ObjectPool;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->u:Lcom/facebook/orca/common/util/ObjectPool;

    .line 93
    sget-object v0, Lcom/facebook/R$styleable;->RefreshableListViewContainer:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:I

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:I

    .line 100
    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V
    .locals 1
    .parameter

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;Z)V

    .line 586
    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq p1, v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 591
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 592
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getHeaderView()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v0

    .line 593
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->setDirection(I)V

    .line 594
    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne p1, v1, :cond_1

    .line 595
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->setState(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 600
    :goto_0
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;->a(Z)V

    .line 604
    :cond_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->setState(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 607
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v2, :cond_1

    .line 608
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 609
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    div-float v0, v2, v0

    const/high16 v2, 0x457a

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 611
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    float-to-int v2, v0

    .line 612
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Landroid/widget/Scroller;

    neg-int v4, v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 613
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->invalidate()V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v2, :cond_0

    .line 615
    if-nez p1, :cond_2

    .line 616
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    float-to-int v2, v0

    .line 618
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    if-nez v0, :cond_3

    .line 619
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    sub-int v4, v0, v2

    .line 623
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Landroid/widget/Scroller;

    const/16 v5, 0x1f4

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 625
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->invalidate()V

    goto :goto_0

    .line 621
    :cond_3
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    neg-int v0, v0

    sub-int v4, v0, v2

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 330
    :cond_1
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    if-nez v2, :cond_3

    .line 331
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 333
    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->p:F

    sub-float/2addr v2, v3

    .line 334
    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 336
    goto :goto_0

    .line 338
    :cond_3
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    if-ne v2, v0, :cond_5

    .line 339
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 341
    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->p:F

    sub-float/2addr v2, v3

    .line 342
    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 344
    goto :goto_0

    .line 347
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 415
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 425
    :goto_0
    return v0

    .line 416
    :catch_0
    move-exception v0

    .line 419
    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/debug/WtfToken;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a:Ljava/lang/Class;

    const-string v3, "Caught and ignoring ArrayIndexOutOfBoundsException"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    .line 353
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 356
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    .line 357
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 358
    float-to-int v4, v3

    .line 359
    float-to-int v5, v2

    .line 360
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->u:Lcom/facebook/orca/common/util/ObjectPool;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/ObjectPool;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 361
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->getHitRect(Landroid/graphics/Rect;)V

    .line 362
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    .line 363
    iget-object v5, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->u:Lcom/facebook/orca/common/util/ObjectPool;

    invoke-virtual {v5, v0}, Lcom/facebook/orca/common/util/ObjectPool;->a(Ljava/lang/Object;)V

    .line 365
    if-eqz v4, :cond_0

    .line 367
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v3, v0

    .line 368
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 369
    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->r:F

    .line 370
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->s:F

    .line 371
    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 372
    invoke-direct {p0, v1, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    .line 432
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->invalidate()V

    .line 437
    :cond_0
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->o:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 441
    :cond_2
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->o:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 442
    if-eqz v0, :cond_1

    .line 446
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->o:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->o:F

    .line 448
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    .line 449
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getHeaderView()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->offsetTopAndBottom(I)V

    .line 450
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getOverScrollHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 451
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->invalidate()V

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 389
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->t:Z

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->q:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 393
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 400
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:I

    add-int/lit8 v0, v0, 0x1

    .line 401
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    if-ne v2, v5, :cond_2

    .line 402
    neg-int v0, v0

    .line 404
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 405
    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->r:F

    iget v4, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->s:F

    int-to-float v0, v0

    sub-float v0, v4, v0

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 406
    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Z

    .line 407
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->r:F

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->s:F

    invoke-virtual {v2, v0, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 408
    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Z

    .line 409
    iput-boolean v5, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->t:Z

    goto :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 517
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->p:F

    sub-float/2addr v0, v1

    .line 518
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    if-nez v1, :cond_1

    .line 519
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 520
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    .line 531
    :goto_0
    return-void

    .line 522
    :cond_0
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    goto :goto_0

    .line 525
    :cond_1
    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    .line 526
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    goto :goto_0

    .line 528
    :cond_2
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    goto :goto_0
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 473
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    .line 474
    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v0

    .line 478
    :cond_1
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 479
    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 482
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    .line 483
    goto :goto_0
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 535
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->p:F

    sub-float/2addr v0, v1

    .line 537
    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    .line 538
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    .line 540
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    if-nez v0, :cond_1

    .line 541
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_0

    .line 547
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    if-nez v0, :cond_2

    .line 548
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    .line 553
    :cond_0
    :goto_1
    return-void

    .line 543
    :cond_1
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    goto :goto_0

    .line 550
    :cond_2
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    goto :goto_1
.end method

.method private e()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 490
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getListView()Landroid/widget/AbsListView;

    move-result-object v4

    .line 491
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 511
    :goto_0
    return v2

    .line 495
    :cond_0
    invoke-virtual {v4}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    move v2, v3

    .line 496
    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {v4}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 499
    if-nez v5, :cond_2

    move v2, v3

    .line 500
    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->u:Lcom/facebook/orca/common/util/ObjectPool;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/ObjectPool;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 503
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->u:Lcom/facebook/orca/common/util/ObjectPool;

    invoke-virtual {v1}, Lcom/facebook/orca/common/util/ObjectPool;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 504
    invoke-virtual {v4, v1}, Landroid/widget/AbsListView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 505
    invoke-virtual {v5, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 507
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_3

    .line 509
    :goto_1
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->u:Lcom/facebook/orca/common/util/ObjectPool;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/common/util/ObjectPool;->a(Ljava/lang/Object;)V

    .line 510
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->u:Lcom/facebook/orca/common/util/ObjectPool;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/ObjectPool;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 507
    goto :goto_1
.end method

.method private getHeaderView()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    return-object v0
.end method

.method private getListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    return-object v0
.end method

.method private getOverScrollHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v0, v1, :cond_0

    .line 561
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 562
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    .line 564
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 455
    iput p2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    .line 456
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_0

    .line 579
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 580
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    .line 582
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 239
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c()V

    .line 240
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 146
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 151
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 161
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    return v0
.end method

.method public getHeaderHeightExposed()F
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    return v0
.end method

.method public getOnRefreshListener()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

    return-object v0
.end method

.method public getState()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/ScrollableView;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$1;-><init>(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;)V

    invoke-interface {v0, v1}, Lcom/facebook/widget/ScrollableView;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 115
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v0, "RefreshableListViewContainer.onLayout"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 196
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    if-nez v1, :cond_1

    .line 199
    sub-int v1, p5, p3

    .line 200
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    sub-int v3, p4, p2

    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/widget/AbsListView;->layout(IIII)V

    .line 203
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:I

    add-int/2addr v1, v5

    .line 204
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    sub-int v2, v1, v2

    .line 205
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getHeaderView()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v3

    sub-int v4, p4, p2

    invoke-virtual {v3, v5, v2, v4, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->layout(IIII)V

    .line 209
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:I

    sub-int v1, v2, v1

    .line 210
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getOverScrollHeaderView()Landroid/view/View;

    move-result-object v3

    sub-int v4, p4, p2

    invoke-virtual {v3, v5, v1, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 231
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->o:F

    .line 232
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c()V

    .line 233
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    goto :goto_0

    .line 211
    :cond_1
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 215
    sub-int v1, p5, p3

    .line 216
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    sub-int v3, p4, p2

    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/widget/AbsListView;->layout(IIII)V

    .line 220
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    add-int/2addr v2, v1

    .line 221
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getHeaderView()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v3

    sub-int v4, p4, p2

    invoke-virtual {v3, v5, v1, v4, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->layout(IIII)V

    .line 225
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:I

    add-int/2addr v1, v2

    .line 226
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getOverScrollHeaderView()Landroid/view/View;

    move-result-object v3

    sub-int v4, p4, p2

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 228
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 166
    const-string v1, "RefreshableListViewContainer.onMeasure"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v3

    .line 167
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildCount()I

    move-result v4

    move v1, v0

    move v2, v0

    .line 172
    :goto_0
    if-ge v0, v4, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 174
    invoke-virtual {p0, v5, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->measureChild(Landroid/view/View;II)V

    .line 175
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 176
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 181
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 183
    invoke-static {v1, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setMeasuredDimension(II)V

    .line 184
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getHeaderView()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    .line 185
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getOverScrollHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:I

    .line 186
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 187
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 251
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    if-ne v3, v0, :cond_0

    .line 253
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 260
    packed-switch v2, :pswitch_data_0

    .line 318
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 322
    :cond_1
    :goto_0
    iput v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->p:F

    .line 323
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c()V

    .line 324
    return v0

    .line 262
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->q:F

    .line 263
    iput-boolean v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->t:Z

    .line 264
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v2, v4, :cond_4

    .line 270
    :cond_2
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 271
    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    .line 276
    :cond_3
    :goto_1
    iput v5, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    .line 277
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 272
    :cond_4
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v2, v4, :cond_3

    .line 273
    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v2, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;Z)V

    .line 274
    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    goto :goto_1

    .line 281
    :pswitch_2
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v2, v4, :cond_7

    .line 282
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d(Landroid/view/MotionEvent;)V

    .line 283
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    iget v4, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    .line 284
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 309
    :cond_5
    :goto_2
    if-eqz v1, :cond_c

    .line 310
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 285
    :cond_6
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_5

    .line 286
    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_2

    .line 289
    :cond_7
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v2, v4, :cond_8

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v2, v4, :cond_8

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v2, v4, :cond_b

    .line 292
    :cond_8
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e(Landroid/view/MotionEvent;)V

    .line 293
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_9

    .line 294
    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    move v1, v0

    goto :goto_2

    .line 296
    :cond_9
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_a

    .line 297
    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_2

    .line 298
    :cond_a
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->n:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 299
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_2

    .line 303
    :cond_b
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v2, v4, :cond_d

    .line 304
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 305
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 311
    :cond_c
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v1, v2, :cond_1

    .line 312
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_d
    move v1, v0

    goto :goto_2

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDirection(I)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    .line 135
    return-void
.end method

.method public setLastLoadedTime(J)V
    .locals 1
    .parameter

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getHeaderView()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->setLastLoadedTime(J)V

    .line 557
    return-void
.end method

.method public setOnRefreshListener(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

    .line 123
    return-void
.end method

.method public setOverflowListOverlap(I)V
    .locals 1
    .parameter

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:I

    .line 142
    return-void
.end method
