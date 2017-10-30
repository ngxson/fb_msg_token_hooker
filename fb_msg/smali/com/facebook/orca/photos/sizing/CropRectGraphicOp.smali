.class public Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;
.super Ljava/lang/Object;
.source "CropRectGraphicOp.java"

# interfaces
.implements Lcom/facebook/orca/photos/sizing/GraphicOp;


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a:Landroid/graphics/RectF;

    .line 20
    iput p2, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->b:F

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 28
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 29
    invoke-virtual {p0, v2}, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a(Landroid/graphics/Rect;)V

    .line 30
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 31
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 33
    if-lez v3, :cond_0

    if-gtz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-object p1

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 41
    :goto_1
    invoke-static {v1, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v4, p1, v2, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p1, v0

    .line 45
    goto :goto_0

    .line 39
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 52
    int-to-float v2, v0

    iget-object v3, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 53
    int-to-float v3, v0

    iget-object v4, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 54
    int-to-float v4, v1

    iget-object v5, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 55
    int-to-float v5, v1

    iget-object v6, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 57
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 58
    iget v6, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->b:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 60
    iget v7, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->b:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->b:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, v0, v2

    .line 64
    div-int/lit8 v2, v2, 0x2

    .line 65
    sub-int v3, v4, v2

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 66
    add-int/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    .line 69
    if-lez v0, :cond_0

    .line 71
    sub-int v2, v4, v0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 72
    add-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->b:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v1, v4

    .line 79
    div-int/lit8 v4, v4, 0x2

    .line 80
    sub-int v5, v2, v4

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 81
    add-int/2addr v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v1, v4

    .line 84
    if-lez v1, :cond_0

    .line 85
    sub-int/2addr v2, v1

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 86
    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method
