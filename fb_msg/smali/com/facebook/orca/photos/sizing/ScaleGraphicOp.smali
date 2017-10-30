.class public Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;
.super Ljava/lang/Object;
.source "ScaleGraphicOp.java"

# interfaces
.implements Lcom/facebook/orca/photos/sizing/GraphicOp;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->b:I

    .line 20
    iput p2, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->a:I

    .line 21
    return-void
.end method

.method private a(II)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    const/high16 v0, -0x4080

    .line 60
    if-le p1, p2, :cond_1

    .line 61
    iget v1, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->b:I

    if-le p1, v1, :cond_0

    .line 62
    iget v0, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->b:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    iget v1, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->a:I

    if-le p2, v1, :cond_0

    .line 66
    iget v0, p0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->a:I

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 28
    invoke-direct {p0, v3, v4}, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->a(II)F

    move-result v0

    .line 29
    const/high16 v2, -0x4080

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 30
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 31
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 32
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 36
    :cond_0
    return-object p1
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 43
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->a(II)F

    move-result v2

    .line 44
    const/high16 v3, -0x4080

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 45
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 48
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 49
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 50
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 52
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 53
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 54
    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    :cond_0
    return-void
.end method
