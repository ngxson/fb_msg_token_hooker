.class public Lcom/facebook/widget/UrlImage;
.super Lcom/facebook/widget/CustomViewGroup;
.source "UrlImage.java"


# static fields
.field public static final a:Lcom/facebook/orca/images/FetchImageParams;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final c:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private A:Z

.field private B:Landroid/graphics/Bitmap;

.field private d:Lcom/facebook/orca/images/FetchImageExecutor;

.field private e:Lcom/facebook/orca/images/FetchImageCoordinator;

.field private f:Landroid/view/LayoutInflater;

.field private g:Lcom/facebook/orca/app/UserInteractionListener;

.field private h:Lcom/facebook/orca/images/ImageCache;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/ImageView$ScaleType;

.field private m:Landroid/widget/ImageView$ScaleType;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Lcom/facebook/orca/images/FetchImageParams;

.field private q:Lcom/facebook/orca/images/MultiFetchImageParams;

.field private r:Lcom/facebook/orca/images/FetchImageParams;

.field private s:Z

.field private t:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private u:Lcom/facebook/widget/UrlImage$OnImageDownloadListener;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/facebook/widget/UrlImage;

    sput-object v0, Lcom/facebook/widget/UrlImage;->b:Ljava/lang/Class;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/widget/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/widget/UrlImage;->c:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 82
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->l:Landroid/widget/ImageView$ScaleType;

    .line 83
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->m:Landroid/widget/ImageView$ScaleType;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/UrlImage;->w:Z

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/widget/UrlImage;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->l:Landroid/widget/ImageView$ScaleType;

    .line 83
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->m:Landroid/widget/ImageView$ScaleType;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/UrlImage;->w:Z

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/UrlImage;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->l:Landroid/widget/ImageView$ScaleType;

    .line 83
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->m:Landroid/widget/ImageView$ScaleType;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/UrlImage;->w:Z

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/UrlImage;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 402
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->t:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->t:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 404
    iput-object v6, p0, Lcom/facebook/widget/UrlImage;->t:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->r:Lcom/facebook/orca/images/FetchImageParams;

    if-eqz v0, :cond_c

    .line 410
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->r:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->c()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_c

    .line 412
    iget-object v3, p0, Lcom/facebook/widget/UrlImage;->h:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 413
    if-eqz v0, :cond_c

    .line 415
    iget-object v3, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/widget/UrlImage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v2

    .line 421
    :goto_0
    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/facebook/widget/UrlImage;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/facebook/widget/UrlImage;->getImagesToDownload()Ljava/util/List;

    move-result-object v3

    .line 430
    iput-object v6, p0, Lcom/facebook/widget/UrlImage;->B:Landroid/graphics/Bitmap;

    .line 431
    if-eqz v3, :cond_5

    .line 433
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 434
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageParams;

    .line 435
    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->c()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_2

    .line 437
    iget-object v6, p0, Lcom/facebook/widget/UrlImage;->h:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v6, v0}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 438
    if-eqz v0, :cond_4

    .line 439
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->A:Z

    if-eqz v0, :cond_2

    .line 441
    invoke-direct {p0}, Lcom/facebook/widget/UrlImage;->b()V

    goto :goto_2

    .line 424
    :cond_3
    iget v0, p0, Lcom/facebook/widget/UrlImage;->n:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 425
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    iget v3, p0, Lcom/facebook/widget/UrlImage;->n:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 449
    :goto_3
    if-eqz v0, :cond_5

    .line 450
    invoke-direct {p0, v4}, Lcom/facebook/widget/UrlImage;->a(Ljava/util/List;)V

    .line 488
    :goto_4
    return-void

    .line 455
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->v:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->w:Z

    if-nez v0, :cond_7

    .line 456
    iput-boolean v2, p0, Lcom/facebook/widget/UrlImage;->x:Z

    .line 457
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->s:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->k:Landroid/widget/ProgressBar;

    :goto_5
    invoke-direct {p0, v0}, Lcom/facebook/widget/UrlImage;->setChildToShow(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    goto :goto_5

    .line 461
    :cond_7
    iput-boolean v1, p0, Lcom/facebook/widget/UrlImage;->x:Z

    .line 462
    if-eqz v3, :cond_a

    .line 463
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 465
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageParams;

    .line 466
    iget-object v3, p0, Lcom/facebook/widget/UrlImage;->d:Lcom/facebook/orca/images/FetchImageExecutor;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/images/FetchImageExecutor;->b(Lcom/facebook/orca/images/FetchImageParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 467
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 470
    :cond_8
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->s:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->k:Landroid/widget/ProgressBar;

    :goto_7
    invoke-direct {p0, v0}, Lcom/facebook/widget/UrlImage;->setChildToShow(Landroid/view/View;)V

    .line 473
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->a(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->t:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 474
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->t:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/widget/UrlImage$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/UrlImage$2;-><init>(Lcom/facebook/widget/UrlImage;)V

    iget-object v2, p0, Lcom/facebook/widget/UrlImage;->e:Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_4

    .line 470
    :cond_9
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    goto :goto_7

    .line 486
    :cond_a
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/facebook/widget/UrlImage;->setChildToShow(Landroid/view/View;)V

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/facebook/widget/UrlImage;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 119
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->f:Landroid/view/LayoutInflater;

    .line 120
    const-class v0, Lcom/facebook/orca/images/FetchImageExecutor;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageExecutor;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->d:Lcom/facebook/orca/images/FetchImageExecutor;

    .line 121
    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->h:Lcom/facebook/orca/images/ImageCache;

    .line 122
    const-class v0, Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageCoordinator;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->e:Lcom/facebook/orca/images/FetchImageCoordinator;

    .line 124
    sget-object v0, Lcom/facebook/R$styleable;->UrlImage:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 125
    const/4 v0, 0x6

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/UrlImage;->w:Z

    .line 126
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/UrlImage;->A:Z

    .line 129
    const/4 v0, 0x3

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/UrlImage;->y:Z

    .line 130
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->y:Z

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->f:Landroid/view/LayoutInflater;

    sget v3, Lcom/facebook/R$layout;->orca_url_image_gallery:I

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 135
    :goto_0
    sget v0, Lcom/facebook/R$id;->url_image_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/UrlImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    .line 136
    sget v0, Lcom/facebook/R$id;->url_image_placeholder_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/UrlImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    .line 137
    sget v0, Lcom/facebook/R$id;->url_image_progress:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/UrlImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->k:Landroid/widget/ProgressBar;

    .line 139
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    new-instance v3, Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/facebook/widget/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    .line 144
    :cond_0
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 145
    if-ltz v0, :cond_1

    .line 146
    sget-object v3, Lcom/facebook/widget/UrlImage;->c:[Landroid/widget/ImageView$ScaleType;

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->l:Landroid/widget/ImageView$ScaleType;

    .line 149
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 151
    if-ltz v0, :cond_2

    .line 152
    sget-object v3, Lcom/facebook/widget/UrlImage;->c:[Landroid/widget/ImageView$ScaleType;

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->m:Landroid/widget/ImageView$ScaleType;

    .line 154
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/UrlImage;->s:Z

    .line 155
    const/4 v0, 0x1

    sget v3, Lcom/facebook/R$drawable;->orca_photo_downloading:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/UrlImage;->n:I

    .line 157
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    iget v3, p0, Lcom/facebook/widget/UrlImage;->n:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/facebook/widget/UrlImage;->m:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 159
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/facebook/widget/UrlImage;->l:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 161
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->y:Z

    if-nez v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/UrlImage;->bringChildToFront(Landroid/view/View;)V

    .line 169
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/UrlImage;->z:Z

    .line 172
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    const-class v0, Lcom/facebook/orca/app/UserInteractionController;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/UserInteractionController;

    .line 176
    new-instance v1, Lcom/facebook/widget/UrlImage$1;

    invoke-direct {v1, p0}, Lcom/facebook/widget/UrlImage$1;-><init>(Lcom/facebook/widget/UrlImage;)V

    iput-object v1, p0, Lcom/facebook/widget/UrlImage;->g:Lcom/facebook/orca/app/UserInteractionListener;

    .line 182
    iget-object v1, p0, Lcom/facebook/widget/UrlImage;->g:Lcom/facebook/orca/app/UserInteractionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/UserInteractionController;->a(Lcom/facebook/orca/app/UserInteractionListener;)V

    .line 183
    return-void

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->f:Landroid/view/LayoutInflater;

    sget v3, Lcom/facebook/R$layout;->orca_url_image:I

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/facebook/widget/UrlImage;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/widget/UrlImage;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/UrlImage;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/widget/UrlImage;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 529
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->t:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 535
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/facebook/widget/UrlImage;->setChildToShow(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 503
    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->t:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 505
    iget-object v1, p0, Lcom/facebook/widget/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    if-eqz v1, :cond_3

    .line 506
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/widget/UrlImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 510
    :goto_0
    if-eqz v1, :cond_2

    .line 511
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/facebook/orca/images/ImageViewTouchBase;

    if-eqz v0, :cond_4

    .line 512
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    check-cast v0, Lcom/facebook/orca/images/ImageViewTouchBase;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/ImageViewTouchBase;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->A:Z

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/facebook/widget/UrlImage;->b()V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->u:Lcom/facebook/widget/UrlImage$OnImageDownloadListener;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->u:Lcom/facebook/widget/UrlImage$OnImageDownloadListener;

    invoke-interface {v0, v1}, Lcom/facebook/widget/UrlImage$OnImageDownloadListener;->a(Landroid/graphics/drawable/Drawable;)V

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/facebook/widget/UrlImage;->setChildToShow(Landroid/view/View;)V

    .line 526
    :cond_2
    return-void

    .line 507
    :cond_3
    iget-object v1, p0, Lcom/facebook/widget/UrlImage;->q:Lcom/facebook/orca/images/MultiFetchImageParams;

    if-eqz v1, :cond_5

    .line 508
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->q:Lcom/facebook/orca/images/MultiFetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/MultiFetchImageParams;->b()Lcom/facebook/orca/images/UrlImageCompositor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/orca/images/UrlImageCompositor;->a(Ljava/util/List;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->q:Lcom/facebook/orca/images/MultiFetchImageParams;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->d()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/facebook/widget/UrlImage;->h:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 496
    if-eqz v0, :cond_0

    .line 497
    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->B:Landroid/graphics/Bitmap;

    .line 500
    :cond_0
    return-void
.end method

.method private getImagesToDownload()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/images/FetchImageParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 544
    :goto_0
    return-object v0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->q:Lcom/facebook/orca/images/MultiFetchImageParams;

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->q:Lcom/facebook/orca/images/MultiFetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/MultiFetchImageParams;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setChildToShow(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 549
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->y:Z

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 563
    :cond_3
    iget-object v3, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    iget-object v3, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->k:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/facebook/widget/UrlImage;->k:Landroid/widget/ProgressBar;

    if-ne v3, p1, :cond_6

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/facebook/widget/UrlImage;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 563
    goto :goto_1

    :cond_5
    move v0, v2

    .line 564
    goto :goto_2

    :cond_6
    move v1, v2

    .line 565
    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    invoke-direct {v0, p1, p2}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    invoke-virtual {p0, v0}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/facebook/widget/UrlImage;->v:Z

    .line 392
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->x:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/facebook/widget/UrlImage;->a()V

    .line 395
    :cond_0
    return-void
.end method

.method public getImageParams()Lcom/facebook/orca/images/FetchImageParams;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMultiFetchImageParams()Lcom/facebook/orca/images/MultiFetchImageParams;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->q:Lcom/facebook/orca/images/MultiFetchImageParams;

    return-object v0
.end method

.method public getPlaceHolderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPlaceHolderResourceId()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/facebook/widget/UrlImage;->n:I

    return v0
.end method

.method public getPlaceHolderScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->m:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getPlaceholderImageParams()Lcom/facebook/orca/images/FetchImageParams;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->r:Lcom/facebook/orca/images/FetchImageParams;

    return-object v0
.end method

.method public getRetainImageDuringUpdate()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->z:Z

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->l:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getShowProgressBar()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->s:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/facebook/widget/CustomViewGroup;->onAttachedToWindow()V

    .line 188
    iget-boolean v0, p0, Lcom/facebook/widget/UrlImage;->y:Z

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/facebook/widget/UrlImage;->a()V

    .line 191
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 315
    return-void
.end method

.method public setImageParams(Landroid/net/Uri;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 214
    if-nez p1, :cond_0

    .line 215
    check-cast v0, Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/widget/UrlImage;->a(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    goto :goto_0
.end method

.method public setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->q:Lcom/facebook/orca/images/MultiFetchImageParams;

    .line 244
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {p1, v0}, Lcom/facebook/orca/images/FetchImageParams;->a(Lcom/facebook/orca/images/FetchImageParams;Lcom/facebook/orca/images/FetchImageParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iput-object p1, p0, Lcom/facebook/widget/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    .line 246
    invoke-direct {p0}, Lcom/facebook/widget/UrlImage;->a()V

    .line 248
    :cond_0
    return-void
.end method

.method public setLoadDuringScroll(Z)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/facebook/widget/UrlImage;->w:Z

    .line 195
    return-void
.end method

.method public setMultiFetchImageParams(Lcom/facebook/orca/images/MultiFetchImageParams;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    .line 268
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->q:Lcom/facebook/orca/images/MultiFetchImageParams;

    invoke-static {p1, v0}, Lcom/facebook/orca/images/MultiFetchImageParams;->a(Lcom/facebook/orca/images/MultiFetchImageParams;Lcom/facebook/orca/images/MultiFetchImageParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iput-object p1, p0, Lcom/facebook/widget/UrlImage;->q:Lcom/facebook/orca/images/MultiFetchImageParams;

    .line 270
    invoke-direct {p0}, Lcom/facebook/widget/UrlImage;->a()V

    .line 272
    :cond_0
    return-void
.end method

.method public setOnImageDownloadListener(Lcom/facebook/widget/UrlImage$OnImageDownloadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/facebook/widget/UrlImage;->u:Lcom/facebook/widget/UrlImage$OnImageDownloadListener;

    .line 302
    return-void
.end method

.method public setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 343
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/UrlImage;->n:I

    .line 344
    iput-object p1, p0, Lcom/facebook/widget/UrlImage;->o:Landroid/graphics/drawable/Drawable;

    .line 345
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void
.end method

.method public setPlaceHolderResourceId(I)V
    .locals 1
    .parameter

    .prologue
    .line 323
    iput p1, p0, Lcom/facebook/widget/UrlImage;->n:I

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/UrlImage;->o:Landroid/graphics/drawable/Drawable;

    .line 325
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    return-void
.end method

.method public setPlaceHolderScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/facebook/widget/UrlImage;->m:Landroid/widget/ImageView$ScaleType;

    .line 372
    return-void
.end method

.method public setPlaceholderBackgroundResourceId(I)V
    .locals 1
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 364
    return-void
.end method

.method public setPlaceholderImageParams(Lcom/facebook/orca/images/FetchImageParams;)V
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->r:Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {p1, v0}, Lcom/facebook/orca/images/FetchImageParams;->a(Lcom/facebook/orca/images/FetchImageParams;Lcom/facebook/orca/images/FetchImageParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iput-object p1, p0, Lcom/facebook/widget/UrlImage;->r:Lcom/facebook/orca/images/FetchImageParams;

    .line 296
    invoke-direct {p0}, Lcom/facebook/widget/UrlImage;->a()V

    .line 298
    :cond_0
    return-void
.end method

.method public setRetainImageDuringUpdate(Z)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/facebook/widget/UrlImage;->z:Z

    .line 388
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/facebook/widget/UrlImage;->l:Landroid/widget/ImageView$ScaleType;

    .line 310
    iget-object v0, p0, Lcom/facebook/widget/UrlImage;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 311
    return-void
.end method

.method public setShouldCacheOriginal(Z)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/facebook/widget/UrlImage;->A:Z

    .line 399
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/facebook/widget/UrlImage;->s:Z

    .line 380
    return-void
.end method
