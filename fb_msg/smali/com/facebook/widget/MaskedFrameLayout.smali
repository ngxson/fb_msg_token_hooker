.class public Lcom/facebook/widget/MaskedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "MaskedFrameLayout.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/widget/MaskedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/widget/MaskedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object v0, p0, Lcom/facebook/widget/MaskedFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v0, p0, Lcom/facebook/widget/MaskedFrameLayout;->b:Landroid/graphics/Bitmap;

    .line 42
    sget-object v0, Lcom/facebook/R$styleable;->MaskedFrameLayout:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0, v1}, Lcom/facebook/widget/MaskedFrameLayout;->setMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/widget/MaskedFrameLayout;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/facebook/widget/MaskedFrameLayout;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/MaskedFrameLayout;->b:Landroid/graphics/Bitmap;

    .line 81
    :cond_0
    return-void
.end method

.method private getMaskBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v0, p0, Lcom/facebook/widget/MaskedFrameLayout;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/facebook/widget/MaskedFrameLayout;->b:Landroid/graphics/Bitmap;

    .line 100
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/MaskedFrameLayout;->getWidth()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/facebook/widget/MaskedFrameLayout;->getHeight()I

    move-result v1

    .line 94
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/widget/MaskedFrameLayout;->b:Landroid/graphics/Bitmap;

    .line 95
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/facebook/widget/MaskedFrameLayout;->b:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    iget-object v3, p0, Lcom/facebook/widget/MaskedFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    iget-object v0, p0, Lcom/facebook/widget/MaskedFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/widget/MaskedFrameLayout;->b:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/facebook/widget/MaskedFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 107
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 133
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 116
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 120
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 123
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 125
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 128
    invoke-direct {p0}, Lcom/facebook/widget/MaskedFrameLayout;->getMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 129
    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 70
    invoke-direct {p0}, Lcom/facebook/widget/MaskedFrameLayout;->a()V

    .line 71
    return-void
.end method

.method public setMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/facebook/widget/MaskedFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-direct {p0}, Lcom/facebook/widget/MaskedFrameLayout;->a()V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/widget/MaskedFrameLayout;->invalidate()V

    .line 63
    return-void
.end method
