.class public Lcom/facebook/widget/MapImage;
.super Lcom/facebook/widget/CustomViewGroup;
.source "MapImage.java"


# static fields
.field public static final a:Landroid/location/Location;


# instance fields
.field private b:Landroid/location/Location;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/facebook/widget/MapImage$MapPlaceholder;

.field private h:Z

.field private i:Lcom/facebook/widget/UrlImage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/widget/MapImage;->a:Landroid/location/Location;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/widget/MapImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/widget/MapImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v3, p0, Lcom/facebook/widget/MapImage;->h:Z

    .line 57
    sget v0, Lcom/facebook/R$layout;->map_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/MapImage;->setContentView(I)V

    .line 58
    sget v0, Lcom/facebook/R$id;->map_url_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/MapImage;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/UrlImage;

    iput-object v0, p0, Lcom/facebook/widget/MapImage;->i:Lcom/facebook/widget/UrlImage;

    .line 60
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/MapImage;->d:Ljava/util/List;

    .line 62
    sget-object v0, Lcom/facebook/R$styleable;->MapImage:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/MapImage;->f:Z

    .line 65
    const/16 v1, 0xf

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/MapImage;->c:I

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/MapImage;->e:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/facebook/widget/MapImage$MapPlaceholder;->values()[Lcom/facebook/widget/MapImage$MapPlaceholder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/facebook/widget/MapImage;->g:Lcom/facebook/widget/MapImage$MapPlaceholder;

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/MapImage;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/widget/MapImage;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/MapImage;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/facebook/widget/MapImage;->h:Z

    return p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/facebook/widget/MapImage;->h:Z

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v0, Lcom/facebook/widget/MapImage$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/MapImage$1;-><init>(Lcom/facebook/widget/MapImage;)V

    invoke-virtual {p0, v0}, Lcom/facebook/widget/MapImage;->post(Ljava/lang/Runnable;)Z

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/MapImage;->h:Z

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/widget/MapImage;->b:Landroid/location/Location;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/MapImage;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/facebook/widget/MapImage;->d()V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/facebook/widget/MapImage;->e()V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 240
    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getPaddingTop()I

    move-result v2

    sub-int v2, v0, v2

    .line 242
    iget-object v0, p0, Lcom/facebook/widget/MapImage;->d:Ljava/util/List;

    .line 243
    iget-boolean v3, p0, Lcom/facebook/widget/MapImage;->f:Z

    if-eqz v3, :cond_0

    .line 244
    iget-object v0, p0, Lcom/facebook/widget/MapImage;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    iget-object v3, p0, Lcom/facebook/widget/MapImage;->b:Landroid/location/Location;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    if-lez v2, :cond_1

    if-lez v1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/widget/MapImage$MapUriBuilder;->a(Landroid/content/Context;)Lcom/facebook/widget/MapImage$MapUriBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/facebook/widget/MapImage$MapUriBuilder;->a(II)Lcom/facebook/widget/MapImage$MapUriBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/MapImage;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/widget/MapImage$MapUriBuilder;->a(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/widget/MapImage$MapUriBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/MapImage;->b:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/MapImage$MapUriBuilder;->a(Landroid/location/Location;)Lcom/facebook/widget/MapImage$MapUriBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/widget/MapImage;->c:I

    invoke-virtual {v0, v1}, Lcom/facebook/widget/MapImage$MapUriBuilder;->a(I)Lcom/facebook/widget/MapImage$MapUriBuilder;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/facebook/widget/MapImage;->i:Lcom/facebook/widget/UrlImage;

    invoke-virtual {v0}, Lcom/facebook/widget/MapImage$MapUriBuilder;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/widget/UrlImage;->setImageParams(Landroid/net/Uri;)V

    .line 257
    :cond_1
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/widget/MapImage;->g:Lcom/facebook/widget/MapImage$MapPlaceholder;

    sget-object v1, Lcom/facebook/widget/MapImage$MapPlaceholder;->NO_IMAGE:Lcom/facebook/widget/MapImage$MapPlaceholder;

    if-ne v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/facebook/widget/MapImage;->i:Lcom/facebook/widget/UrlImage;

    sget-object v1, Lcom/facebook/widget/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/MapImage;->g:Lcom/facebook/widget/MapImage$MapPlaceholder;

    sget-object v1, Lcom/facebook/widget/MapImage$MapPlaceholder;->WORLD_MAP:Lcom/facebook/widget/MapImage$MapPlaceholder;

    if-ne v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 267
    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 269
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/facebook/widget/MapImage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/widget/MapImage$MapUriBuilder;->a(Landroid/content/Context;)Lcom/facebook/widget/MapImage$MapUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/facebook/widget/MapImage$MapUriBuilder;->a(II)Lcom/facebook/widget/MapImage$MapUriBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/widget/MapImage;->a:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/MapImage$MapUriBuilder;->a(Landroid/location/Location;)Lcom/facebook/widget/MapImage$MapUriBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/widget/MapImage$MapUriBuilder;->a(I)Lcom/facebook/widget/MapImage$MapUriBuilder;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/facebook/widget/MapImage;->i:Lcom/facebook/widget/UrlImage;

    invoke-virtual {v0}, Lcom/facebook/widget/MapImage$MapUriBuilder;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/widget/UrlImage;->setImageParams(Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/widget/MapImage;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    invoke-direct {p0}, Lcom/facebook/widget/MapImage;->b()V

    .line 151
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/widget/MapImage;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-direct {p0}, Lcom/facebook/widget/MapImage;->b()V

    .line 143
    return-void
.end method

.method public getCenter()Landroid/location/Location;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/widget/MapImage;->b:Landroid/location/Location;

    return-object v0
.end method

.method public getKeepMarkerAtCenter()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/facebook/widget/MapImage;->f:Z

    return v0
.end method

.method public getMapPlaceholder()Lcom/facebook/widget/MapImage$MapPlaceholder;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/widget/MapImage;->g:Lcom/facebook/widget/MapImage$MapPlaceholder;

    return-object v0
.end method

.method public getMarkerColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/facebook/widget/MapImage;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/facebook/widget/MapImage;->c:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
    .end annotation

    .prologue
    .line 77
    invoke-super/range {p0 .. p5}, Lcom/facebook/widget/CustomViewGroup;->onLayout(ZIIII)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/facebook/widget/MapImage;->b()V

    .line 81
    :cond_0
    return-void
.end method

.method public setCenter(Landroid/location/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/widget/MapImage;->b:Landroid/location/Location;

    .line 90
    invoke-direct {p0}, Lcom/facebook/widget/MapImage;->b()V

    .line 91
    return-void
.end method

.method public setKeepMarkerAtCenter(Z)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/facebook/widget/MapImage;->f:Z

    .line 191
    invoke-direct {p0}, Lcom/facebook/widget/MapImage;->b()V

    .line 192
    return-void
.end method

.method public setMapPlaceholder(Lcom/facebook/widget/MapImage$MapPlaceholder;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/facebook/widget/MapImage;->g:Lcom/facebook/widget/MapImage$MapPlaceholder;

    .line 207
    invoke-direct {p0}, Lcom/facebook/widget/MapImage;->b()V

    .line 208
    return-void
.end method

.method public setMarkerColor(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/widget/MapImage;->e:Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Lcom/facebook/widget/MapImage;->b()V

    .line 162
    return-void
.end method

.method public setZoom(I)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput p1, p0, Lcom/facebook/widget/MapImage;->c:I

    .line 123
    invoke-direct {p0}, Lcom/facebook/widget/MapImage;->b()V

    .line 124
    return-void
.end method
