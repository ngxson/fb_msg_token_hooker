.class public Lcom/facebook/orca/photos/tiles/UserTileView;
.super Landroid/widget/FrameLayout;
.source "UserTileView.java"


# instance fields
.field private a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

.field private b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

.field private c:Lcom/facebook/widget/UrlImage;

.field private d:Lcom/facebook/orca/users/UserKey;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/tiles/UserTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/tiles/UserTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    iget v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/widget/UrlImage;

    invoke-virtual {v1, v0}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/widget/UrlImage;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:I

    iget v3, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:I

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :goto_1
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    iget v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/widget/UrlImage;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:I

    iget v4, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/users/UserKey;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/16 v4, 0x32

    const/4 v3, -0x1

    .line 53
    const-string v0, "UserTileView.init"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 54
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v2

    .line 55
    const-class v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    .line 56
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    .line 58
    sget-object v0, Lcom/facebook/R$styleable;->ThreadTileView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:I

    .line 60
    iget v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:I

    if-ne v2, v3, :cond_0

    .line 61
    const/high16 v2, 0x4248

    invoke-static {p1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:I

    .line 63
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    new-instance v0, Lcom/facebook/widget/UrlImage;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/UserTileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/widget/UrlImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/widget/UrlImage;

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/widget/UrlImage;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {v2, v4, v4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/widget/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/widget/UrlImage;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 70
    return-void
.end method


# virtual methods
.method public getTileSizePx()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:I

    return v0
.end method

.method public getUserKey()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public setShowBuiltInContactPic(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:Z

    .line 93
    return-void
.end method

.method public setTileSizePx(I)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:I

    .line 88
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/UserTileView;->a()V

    .line 89
    return-void
.end method

.method public setUserKey(Lcom/facebook/orca/users/UserKey;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Lcom/facebook/orca/users/UserKey;

    .line 78
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/UserTileView;->a()V

    .line 79
    return-void
.end method
