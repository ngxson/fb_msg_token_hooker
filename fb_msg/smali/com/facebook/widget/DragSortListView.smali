.class public abstract Lcom/facebook/widget/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/view/WindowManager;

.field private g:Landroid/view/WindowManager$LayoutParams;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/facebook/widget/DragSortListView$DragListener;

.field private m:Lcom/facebook/widget/DragSortListView$DropListener;

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/view/GestureDetector;

.field private r:Landroid/graphics/Rect;

.field private s:Landroid/graphics/Bitmap;

.field private final t:I

.field private u:I

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/widget/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/DragSortListView;->r:Landroid/graphics/Rect;

    .line 75
    iput v4, p0, Lcom/facebook/widget/DragSortListView;->a:I

    .line 76
    iput v4, p0, Lcom/facebook/widget/DragSortListView;->b:I

    .line 77
    iput v4, p0, Lcom/facebook/widget/DragSortListView;->c:I

    .line 78
    iput v4, p0, Lcom/facebook/widget/DragSortListView;->u:I

    .line 80
    iput-object v3, p0, Lcom/facebook/widget/DragSortListView;->v:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object v3, p0, Lcom/facebook/widget/DragSortListView;->w:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/DragSortListView;->t:I

    .line 113
    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/facebook/R$styleable;->DragSortListView:[I

    invoke-virtual {v0, p2, v3, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/facebook/widget/DragSortListView;->a:I

    .line 120
    iget v3, p0, Lcom/facebook/widget/DragSortListView;->a:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/facebook/widget/DragSortListView;->b:I

    .line 121
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/facebook/widget/DragSortListView;->c:I

    .line 122
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/facebook/widget/DragSortListView;->u:I

    .line 124
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/widget/DragSortListView;->v:Landroid/graphics/drawable/Drawable;

    .line 126
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/widget/DragSortListView;->w:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    :cond_0
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->a:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Item height must be > 0"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 132
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->c:I

    if-lez v0, :cond_2

    :goto_1
    const-string v0, "Grabber id must be valid"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 133
    return-void

    :cond_1
    move v0, v2

    .line 131
    goto :goto_0

    :cond_2
    move v1, v2

    .line 132
    goto :goto_1
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 261
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->j:I

    sub-int v0, p1, v0

    iget v2, p0, Lcom/facebook/widget/DragSortListView;->a:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    .line 262
    invoke-direct {p0, v1, v2}, Lcom/facebook/widget/DragSortListView;->a(II)I

    move-result v0

    .line 263
    if-ltz v0, :cond_1

    .line 264
    iget v1, p0, Lcom/facebook/widget/DragSortListView;->i:I

    if-gt v0, v1, :cond_0

    .line 265
    add-int/lit8 v0, v0, 0x1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    if-gez v2, :cond_0

    move v0, v1

    .line 268
    goto :goto_0
.end method

.method private a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 248
    iget-object v1, p0, Lcom/facebook/widget/DragSortListView;->r:Landroid/graphics/Rect;

    .line 249
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getChildCount()I

    move-result v0

    .line 250
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 251
    invoke-virtual {p0, v0}, Lcom/facebook/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 252
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 253
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :goto_1
    return v0

    .line 250
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 288
    if-nez v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->layoutChildren()V

    .line 290
    invoke-virtual {p0, v0}, Lcom/facebook/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 291
    if-nez v1, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->e()V

    .line 298
    return-void

    .line 286
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 478
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->c()V

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/widget/DragSortListView;->x:J

    .line 482
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    .line 483
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 484
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 485
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/facebook/widget/DragSortListView;->j:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/facebook/widget/DragSortListView;->k:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 487
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 488
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 489
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x198

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 493
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 494
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 496
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/DragSortListView;->d:Landroid/widget/ImageView;

    .line 497
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/widget/DragSortListView;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 501
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 502
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    :cond_1
    iput-object p1, p0, Lcom/facebook/widget/DragSortListView;->s:Landroid/graphics/Bitmap;

    .line 508
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/facebook/widget/DragSortListView;->f:Landroid/view/WindowManager;

    .line 509
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->f:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    iput-object v1, p0, Lcom/facebook/widget/DragSortListView;->e:Landroid/widget/LinearLayout;

    .line 511
    return-void
.end method

.method private b()V
    .locals 12

    .prologue
    const/16 v1, 0x50

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/facebook/widget/DragSortListView;->x:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x32

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->getDragSortListAdapter()Lcom/facebook/widget/DragSortListView$DragSortListAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/widget/DragSortListView$DragSortListAdapter;->b()I

    move-result v2

    .line 317
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->getDragSortListAdapter()Lcom/facebook/widget/DragSortListView$DragSortListAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/widget/DragSortListView$DragSortListAdapter;->c()I

    move-result v8

    .line 320
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->getBoundedDragPosition()I

    move-result v0

    .line 322
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v0, v5

    .line 323
    iget v5, p0, Lcom/facebook/widget/DragSortListView;->h:I

    iget v6, p0, Lcom/facebook/widget/DragSortListView;->i:I

    if-lt v5, v6, :cond_1

    iget v5, p0, Lcom/facebook/widget/DragSortListView;->h:I

    if-ge v5, v8, :cond_1

    .line 324
    add-int/lit8 v0, v0, 0x1

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v9, v5, 0x1

    .line 328
    iget v5, p0, Lcom/facebook/widget/DragSortListView;->i:I

    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v10, v5, v6

    .line 330
    iget v5, p0, Lcom/facebook/widget/DragSortListView;->i:I

    if-ne v5, v8, :cond_2

    iget v5, p0, Lcom/facebook/widget/DragSortListView;->h:I

    if-lt v5, v8, :cond_2

    .line 332
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    .line 338
    :goto_1
    if-ne v2, v8, :cond_3

    .line 340
    invoke-virtual {p0, v10}, Lcom/facebook/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/facebook/widget/DragSortListView;->a:I

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/facebook/widget/DragSortListView;->a(Landroid/view/View;III)V

    goto :goto_0

    .line 333
    :cond_2
    iget v5, p0, Lcom/facebook/widget/DragSortListView;->i:I

    if-ne v5, v2, :cond_9

    iget v5, p0, Lcom/facebook/widget/DragSortListView;->h:I

    if-ge v5, v2, :cond_9

    .line 335
    add-int/lit8 v0, v0, 0x1

    move v7, v0

    goto :goto_1

    :cond_3
    move v6, v4

    .line 345
    :goto_2
    if-ge v6, v9, :cond_4

    .line 346
    invoke-virtual {p0, v6}, Lcom/facebook/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 347
    if-nez v11, :cond_5

    .line 370
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->layoutChildren()V

    goto :goto_0

    .line 350
    :cond_5
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->a:I

    .line 354
    if-ne v6, v10, :cond_6

    .line 355
    const/4 v0, 0x1

    move v2, v3

    move v5, v0

    move v0, v1

    .line 364
    :goto_3
    invoke-virtual {p0, v11, v5, v0, v2}, Lcom/facebook/widget/DragSortListView;->a(Landroid/view/View;III)V

    .line 345
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 357
    :cond_6
    if-ne v6, v7, :cond_8

    .line 358
    iget v2, p0, Lcom/facebook/widget/DragSortListView;->b:I

    .line 359
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->h:I

    if-lt v0, v8, :cond_7

    .line 360
    const/16 v0, 0x30

    move v5, v2

    move v2, v4

    goto :goto_3

    :cond_7
    move v0, v1

    move v5, v2

    move v2, v4

    goto :goto_3

    :cond_8
    move v2, v4

    move v5, v0

    move v0, v1

    goto :goto_3

    :cond_9
    move v7, v0

    goto :goto_1
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 274
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->p:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 275
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->p:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/facebook/widget/DragSortListView;->n:I

    .line 277
    :cond_0
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->p:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 278
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->p:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/facebook/widget/DragSortListView;->o:I

    .line 280
    :cond_1
    return-void
.end method

.method private b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/facebook/widget/DragSortListView;->j:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/facebook/widget/DragSortListView;->k:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 515
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/facebook/widget/DragSortListView;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/widget/DragSortListView;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    return-void
.end method

.method private c()V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->d()V

    .line 520
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 526
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 528
    iget-object v1, p0, Lcom/facebook/widget/DragSortListView;->e:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 529
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    iput-object v2, p0, Lcom/facebook/widget/DragSortListView;->d:Landroid/widget/ImageView;

    .line 531
    iput-object v2, p0, Lcom/facebook/widget/DragSortListView;->e:Landroid/widget/LinearLayout;

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 535
    iput-object v2, p0, Lcom/facebook/widget/DragSortListView;->s:Landroid/graphics/Bitmap;

    .line 537
    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 551
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 552
    invoke-virtual {p0, v0}, Lcom/facebook/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 554
    invoke-virtual {p0, v1}, Lcom/facebook/widget/DragSortListView;->a(Landroid/view/View;)V

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_0
    return-void
.end method

.method private getBoundedDragPosition()I
    .locals 3

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->getDragSortListAdapter()Lcom/facebook/widget/DragSortListView$DragSortListAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/widget/DragSortListView$DragSortListAdapter;->b()I

    move-result v1

    .line 387
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->getDragSortListAdapter()Lcom/facebook/widget/DragSortListView$DragSortListAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/widget/DragSortListView$DragSortListAdapter;->c()I

    move-result v0

    .line 389
    iget v2, p0, Lcom/facebook/widget/DragSortListView;->h:I

    .line 390
    if-le v2, v0, :cond_0

    .line 396
    :goto_0
    return v0

    .line 392
    :cond_0
    if-ge v2, v1, :cond_1

    move v0, v1

    .line 393
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private getDragSortListAdapter()Lcom/facebook/widget/DragSortListView$DragSortListAdapter;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/DragSortListView$DragSortListAdapter;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;)V
.end method

.method protected a(Landroid/view/View;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/view/View;III)V
.end method

.method public final addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Footers are not supported with DragSortListView in conjunction with remove_mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Footers are not supported with DragSortListView in conjunction with remove_mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Headers are not supported with DragSortListView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Headers are not supported with DragSortListView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract b(Landroid/view/View;)Z
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 541
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 542
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->d()V

    .line 543
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/facebook/widget/DragSortListView;->l:Lcom/facebook/widget/DragSortListView$DragListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/widget/DragSortListView;->m:Lcom/facebook/widget/DragSortListView$DropListener;

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 240
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 183
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 186
    invoke-virtual {p0, v1, v2}, Lcom/facebook/widget/DragSortListView;->pointToPosition(II)I

    move-result v3

    .line 187
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/facebook/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 193
    invoke-virtual {p0, v4}, Lcom/facebook/widget/DragSortListView;->b(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v2, v5

    iput v5, p0, Lcom/facebook/widget/DragSortListView;->j:I

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/facebook/widget/DragSortListView;->k:I

    .line 196
    iget v5, p0, Lcom/facebook/widget/DragSortListView;->c:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 197
    iget-object v6, p0, Lcom/facebook/widget/DragSortListView;->r:Landroid/graphics/Rect;

    .line 199
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 200
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 201
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 202
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v6, Landroid/graphics/Rect;->bottom:I

    .line 204
    iget v5, v6, Landroid/graphics/Rect;->left:I

    if-gt v5, v1, :cond_4

    iget v5, v6, Landroid/graphics/Rect;->right:I

    if-gt v1, v5, :cond_4

    .line 205
    iget v1, p0, Lcom/facebook/widget/DragSortListView;->u:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    .line 207
    if-nez v5, :cond_2

    .line 208
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 213
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 214
    invoke-virtual {v4, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 215
    if-nez v5, :cond_3

    .line 216
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 221
    invoke-virtual {p0, v1, v8}, Lcom/facebook/widget/DragSortListView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 223
    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v6, v1, v2}, Lcom/facebook/widget/DragSortListView;->a(Landroid/graphics/Bitmap;II)V

    .line 224
    iput v3, p0, Lcom/facebook/widget/DragSortListView;->h:I

    .line 225
    iget v1, p0, Lcom/facebook/widget/DragSortListView;->h:I

    iput v1, p0, Lcom/facebook/widget/DragSortListView;->i:I

    .line 226
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/DragSortListView;->p:I

    .line 228
    iget v1, p0, Lcom/facebook/widget/DragSortListView;->t:I

    .line 229
    sub-int v3, v2, v1

    iget v4, p0, Lcom/facebook/widget/DragSortListView;->p:I

    div-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/facebook/widget/DragSortListView;->n:I

    .line 230
    add-int/2addr v1, v2

    iget v2, p0, Lcom/facebook/widget/DragSortListView;->p:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/DragSortListView;->o:I

    goto/16 :goto_1

    .line 234
    :cond_4
    iput-object v8, p0, Lcom/facebook/widget/DragSortListView;->e:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->q:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->q:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->l:Lcom/facebook/widget/DragSortListView$DragListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->m:Lcom/facebook/widget/DragSortListView$DropListener;

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 406
    packed-switch v0, :pswitch_data_0

    .line 472
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 474
    :goto_1
    return v0

    .line 409
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->r:Landroid/graphics/Rect;

    .line 410
    iget-object v1, p0, Lcom/facebook/widget/DragSortListView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 411
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->c()V

    .line 412
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->m:Lcom/facebook/widget/DragSortListView$DropListener;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/facebook/widget/DragSortListView;->h:I

    iget v1, p0, Lcom/facebook/widget/DragSortListView;->i:I

    if-eq v0, v1, :cond_3

    .line 414
    iget-object v0, p0, Lcom/facebook/widget/DragSortListView;->m:Lcom/facebook/widget/DragSortListView$DropListener;

    iget v1, p0, Lcom/facebook/widget/DragSortListView;->i:I

    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->getBoundedDragPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/widget/DragSortListView$DropListener;->a(II)V

    .line 416
    :cond_3
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->a()V

    goto :goto_0

    .line 420
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 422
    invoke-direct {p0, v0, v2}, Lcom/facebook/widget/DragSortListView;->b(II)V

    .line 423
    invoke-direct {p0, v2}, Lcom/facebook/widget/DragSortListView;->a(I)I

    move-result v0

    .line 425
    if-ltz v0, :cond_2

    .line 426
    iget-object v3, p0, Lcom/facebook/widget/DragSortListView;->l:Lcom/facebook/widget/DragSortListView$DragListener;

    if-eqz v3, :cond_4

    .line 427
    iget-object v3, p0, Lcom/facebook/widget/DragSortListView;->l:Lcom/facebook/widget/DragSortListView$DragListener;

    iget v4, p0, Lcom/facebook/widget/DragSortListView;->h:I

    invoke-interface {v3, v4, v0}, Lcom/facebook/widget/DragSortListView$DragListener;->a(II)V

    .line 429
    :cond_4
    iput v0, p0, Lcom/facebook/widget/DragSortListView;->h:I

    .line 431
    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->b()V

    .line 434
    invoke-direct {p0, v2}, Lcom/facebook/widget/DragSortListView;->b(I)V

    .line 436
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->o:I

    if-le v2, v0, :cond_7

    .line 438
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->p:I

    iget v3, p0, Lcom/facebook/widget/DragSortListView;->o:I

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    if-le v2, v0, :cond_6

    const/16 v0, 0x10

    .line 442
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->getDragSortListAdapter()Lcom/facebook/widget/DragSortListView$DragSortListAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/widget/DragSortListView$DragSortListAdapter;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_b

    :goto_3
    move v2, v0

    .line 457
    :goto_4
    if-eqz v2, :cond_2

    .line 458
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->p:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/widget/DragSortListView;->pointToPosition(II)I

    move-result v0

    .line 459
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    .line 461
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->p:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getDividerHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {p0, v1, v0}, Lcom/facebook/widget/DragSortListView;->pointToPosition(II)I

    move-result v0

    .line 463
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 464
    if-eqz v1, :cond_2

    .line 465
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 466
    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/DragSortListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 438
    :cond_6
    const/4 v0, 0x4

    goto :goto_2

    .line 446
    :cond_7
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->n:I

    if-ge v2, v0, :cond_a

    .line 448
    iget v0, p0, Lcom/facebook/widget/DragSortListView;->n:I

    div-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_8

    const/16 v0, -0x10

    .line 451
    :goto_5
    invoke-virtual {p0}, Lcom/facebook/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-direct {p0}, Lcom/facebook/widget/DragSortListView;->getDragSortListAdapter()Lcom/facebook/widget/DragSortListView$DragSortListAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/widget/DragSortListView$DragSortListAdapter;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-le v2, v3, :cond_a

    move v2, v0

    .line 453
    goto :goto_4

    .line 448
    :cond_8
    const/4 v0, -0x4

    goto :goto_5

    .line 474
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    :cond_a
    move v2, v1

    goto :goto_4

    :cond_b
    move v0, v1

    goto :goto_3

    .line 406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/facebook/widget/DragSortListView$DragSortListAdapter;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DragSortListView expects a DragSortListAdapter based adapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    return-void
.end method

.method public setDragListener(Lcom/facebook/widget/DragSortListView$DragListener;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/facebook/widget/DragSortListView;->l:Lcom/facebook/widget/DragSortListView$DragListener;

    .line 137
    return-void
.end method

.method public setDropListener(Lcom/facebook/widget/DragSortListView$DropListener;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/widget/DragSortListView;->m:Lcom/facebook/widget/DragSortListView$DropListener;

    .line 141
    return-void
.end method
