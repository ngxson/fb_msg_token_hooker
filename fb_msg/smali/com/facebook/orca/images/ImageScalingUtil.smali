.class public Lcom/facebook/orca/images/ImageScalingUtil;
.super Ljava/lang/Object;
.source "ImageScalingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x4080

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 17
    if-le v3, v4, :cond_1

    .line 18
    if-le v3, p2, :cond_2

    .line 19
    int-to-float v0, p2

    int-to-float v5, v3

    div-float/2addr v0, v5

    .line 28
    :goto_0
    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 29
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 30
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 31
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 36
    :cond_0
    return-object p1

    .line 22
    :cond_1
    if-le v4, p2, :cond_2

    .line 23
    int-to-float v0, p2

    int-to-float v5, v4

    div-float/2addr v0, v5

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x4080

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 43
    if-le v3, p2, :cond_2

    .line 44
    int-to-float v0, p2

    int-to-float v5, v3

    div-float/2addr v0, v5

    move v5, v0

    .line 47
    :goto_0
    if-le v4, p3, :cond_1

    .line 48
    int-to-float v0, p3

    int-to-float v6, v4

    div-float/2addr v0, v6

    .line 52
    :goto_1
    cmpl-float v6, v5, v2

    if-nez v6, :cond_0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 61
    :goto_2
    return-object p1

    .line 55
    :cond_0
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 56
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 57
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 58
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_0
.end method
