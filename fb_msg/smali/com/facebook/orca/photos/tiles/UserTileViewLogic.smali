.class public Lcom/facebook/orca/photos/tiles/UserTileViewLogic;
.super Ljava/lang/Object;
.source "UserTileViewLogic.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/DataCache;

.field private final b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;Ljavax/inject/Provider;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
            ">;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a:Lcom/facebook/orca/cache/DataCache;

    .line 44
    iput-object p2, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    .line 45
    iput-object p3, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->c:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->d:Landroid/content/ContentResolver;

    .line 47
    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/PicCropInfo;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/PicCropInfo;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v0

    .line 110
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 111
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->b()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "picture"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "large"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 118
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-direct {p0, p3, p4}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 126
    :cond_1
    :goto_1
    return-object v0

    .line 102
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->p()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->p()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-direct {p0, p3, p4}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    goto :goto_0

    .line 123
    :cond_3
    sget-object v0, Lcom/facebook/widget/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    goto :goto_1
.end method

.method private a(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 130
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->i()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/orca/users/PicCropInfo;II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 148
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    invoke-virtual {p1}, Lcom/facebook/orca/users/PicCropInfo;->j()Landroid/graphics/RectF;

    move-result-object v2

    int-to-float v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;-><init>(Landroid/graphics/RectF;F)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->i()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/PicCropInfo;II)Lcom/facebook/orca/images/FetchImageParams;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {p1}, Lcom/facebook/orca/users/PicCropInfo;->b()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b(Lcom/facebook/orca/users/PicCropInfo;II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    return-object v0
.end method

.method public a(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/images/FetchImageParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p2}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/images/FetchImageParams;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 68
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->d:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-direct {p0, p2, p2}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 80
    :goto_1
    return-object v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/facebook/widget/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    goto :goto_1
.end method
