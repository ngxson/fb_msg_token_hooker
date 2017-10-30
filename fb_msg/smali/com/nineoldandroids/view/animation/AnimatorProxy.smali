.class public final Lcom/nineoldandroids/view/animation/AnimatorProxy;
.super Landroid/view/animation/Animation;
.source "AnimatorProxy.java"


# static fields
.field public static final a:Z

.field private static final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/nineoldandroids/view/animation/AnimatorProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/graphics/Camera;

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/RectF;

.field private final r:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a:Z

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->b:Ljava/util/WeakHashMap;

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 63
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/graphics/Camera;

    .line 48
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:F

    .line 54
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    .line 55
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->q:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->r:Landroid/graphics/Matrix;

    .line 64
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setDuration(J)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setFillAfter(Z)V

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    .line 70
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
    .locals 2
    .parameter

    .prologue
    .line 35
    sget-object v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    .line 37
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 38
    :cond_0
    new-instance v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;-><init>(Landroid/view/View;)V

    .line 39
    sget-object v1, Lcom/nineoldandroids/view/animation/AnimatorProxy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1
    return-object v0
.end method

.method private a(Landroid/graphics/Matrix;Landroid/view/View;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 295
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    .line 296
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 297
    iget-boolean v4, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Z

    .line 298
    if-eqz v4, :cond_4

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    move v1, v0

    .line 299
    :goto_0
    if-eqz v4, :cond_5

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    .line 301
    :goto_1
    iget v4, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    .line 302
    iget v5, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    .line 303
    iget v6, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    .line 304
    cmpl-float v7, v4, v8

    if-nez v7, :cond_0

    cmpl-float v7, v5, v8

    if-nez v7, :cond_0

    cmpl-float v7, v6, v8

    if-eqz v7, :cond_1

    .line 305
    :cond_0
    iget-object v7, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/graphics/Camera;

    .line 306
    invoke-virtual {v7}, Landroid/graphics/Camera;->save()V

    .line 307
    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 308
    invoke-virtual {v7, v5}, Landroid/graphics/Camera;->rotateY(F)V

    .line 309
    neg-float v4, v6

    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 310
    invoke-virtual {v7, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 311
    invoke-virtual {v7}, Landroid/graphics/Camera;->restore()V

    .line 312
    neg-float v4, v1

    neg-float v5, v0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 313
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 316
    :cond_1
    iget v4, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    .line 317
    iget v5, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    .line 318
    cmpl-float v6, v4, v9

    if-nez v6, :cond_2

    cmpl-float v6, v5, v9

    if-eqz v6, :cond_3

    .line 319
    :cond_2
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 320
    div-float/2addr v1, v2

    neg-float v1, v1

    mul-float/2addr v4, v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    .line 321
    div-float/2addr v0, v3

    neg-float v0, v0

    mul-float v2, v5, v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    .line 322
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 325
    :cond_3
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 326
    return-void

    .line 298
    :cond_4
    div-float v0, v2, v5

    move v1, v0

    goto :goto_0

    .line 299
    :cond_5
    div-float v0, v3, v5

    goto :goto_1
.end method

.method private a(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 269
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 272
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 274
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->r:Landroid/graphics/Matrix;

    .line 275
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 276
    invoke-direct {p0, v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 279
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 282
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 283
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 284
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 285
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 287
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 288
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 289
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 290
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 292
    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 245
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 248
    :cond_0
    return-void
.end method

.method private p()V
    .locals 7

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 251
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->q:Landroid/graphics/RectF;

    .line 256
    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 257
    iget-object v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 259
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:F

    return v0
.end method

.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 89
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:F

    .line 90
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 95
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 181
    :cond_0
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 331
    if-eqz v0, :cond_0

    .line 332
    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:F

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 333
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 335
    :cond_0
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    return v0
.end method

.method public b(F)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Z

    .line 103
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    .line 104
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 106
    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 194
    :cond_0
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    return v0
.end method

.method public c(F)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Z

    .line 114
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    .line 115
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 117
    :cond_1
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    return v0
.end method

.method public d(F)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 124
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    .line 125
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 127
    :cond_0
    return-void
.end method

.method public e()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    return v0
.end method

.method public e(F)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 134
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    .line 135
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 137
    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    return v0
.end method

.method public f(F)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 145
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    .line 146
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 148
    :cond_0
    return-void
.end method

.method public g()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    return v0
.end method

.method public g(F)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 155
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    .line 156
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 158
    :cond_0
    return-void
.end method

.method public h()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    return v0
.end method

.method public h(F)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 165
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    .line 166
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 168
    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 171
    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    goto :goto_0
.end method

.method public i(F)V
    .locals 1
    .parameter

    .prologue
    .line 200
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 202
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    .line 203
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 205
    :cond_0
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 184
    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method public j(F)V
    .locals 1
    .parameter

    .prologue
    .line 210
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o()V

    .line 212
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    .line 213
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p()V

    .line 215
    :cond_0
    return-void
.end method

.method public k()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    return v0
.end method

.method public k(F)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i(F)V

    .line 228
    :cond_0
    return-void
.end method

.method public l()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    return v0
.end method

.method public l(F)V
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 238
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j(F)V

    .line 241
    :cond_0
    return-void
.end method

.method public m()F
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 218
    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public n()F
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 231
    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    add-float/2addr v0, v1

    goto :goto_0
.end method
