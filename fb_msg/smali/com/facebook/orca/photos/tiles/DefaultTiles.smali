.class public Lcom/facebook/orca/photos/tiles/DefaultTiles;
.super Ljava/lang/Object;
.source "DefaultTiles.java"


# static fields
.field public static a:I

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/res/Resources;

.field private final d:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

.field private final e:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private final f:Lcom/facebook/orca/cache/ThreadDisplayCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    sput-object v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b:Ljava/lang/Class;

    .line 34
    const/16 v0, 0xff

    const/16 v1, 0xcc

    const/16 v2, 0xd3

    const/16 v3, 0xe0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/orca/photos/tiles/DefaultTilesCache;Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/cache/ThreadDisplayCache;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c:Landroid/content/res/Resources;

    .line 47
    iput-object p2, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->d:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    .line 48
    iput-object p3, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->e:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 49
    iput-object p4, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->f:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 50
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 297
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b:Ljava/lang/Class;

    const-string v1, "Bitmap resize with canvas drawing"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 298
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 301
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 303
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 304
    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    if-eq p2, p3, :cond_0

    .line 258
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->f(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Landroid/graphics/Bitmap;Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 277
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b:Ljava/lang/Class;

    const-string v1, "Bitmap resize with GraphicSizer"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 278
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicSizer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Lcom/facebook/orca/photos/sizing/GraphicSizer;-><init>(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;II)V

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 282
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
    invoke-virtual {v2, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 284
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 285
    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    new-instance v1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;

    sget v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:I

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;-><init>(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)V

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->d:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 217
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    sget v2, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:I

    invoke-direct {p0, v0, p3, p4, v2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->d:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;Landroid/graphics/Bitmap;)V

    .line 221
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private d(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 185
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->EMAIL:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    sget v1, Lcom/facebook/R$drawable;->orca_default_email_tile:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private e(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 197
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->SMS:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    sget v1, Lcom/facebook/R$drawable;->orca_default_sms_tile:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private f(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 232
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b:Ljava/lang/Class;

    const-string v1, "Sizing container for unequal resizing"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 233
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

    sget-object v2, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

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


# virtual methods
.method public a(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 149
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->THREAD:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    sget v1, Lcom/facebook/R$drawable;->orca_default_group_tile:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/threads/ParticipantInfo;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->e(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->d(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/threads/ThreadSummary;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/users/UserKey;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    if-eqz p1, :cond_3

    .line 104
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_0

    .line 105
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_2

    .line 108
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->e(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->EMAIL:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_3

    .line 110
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->d(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public b(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->THREAD:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    sget v1, Lcom/facebook/R$drawable;->orca_default_mms_tile:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/facebook/orca/threads/ThreadSummary;II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->e:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->f:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 135
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/threads/ParticipantInfo;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public c(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 173
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->USER:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    sget v1, Lcom/facebook/R$drawable;->orca_default_user_tile:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
