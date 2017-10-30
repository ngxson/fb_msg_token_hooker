.class public Lcom/facebook/common/util/SpringAnimator;
.super Lcom/nineoldandroids/animation/Animator;
.source "SpringAnimator.java"


# instance fields
.field private b:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/Class;

.field private j:Ljava/lang/Number;

.field private k:Ljava/lang/Number;

.field private l:F


# direct methods
.method private constructor <init>(Lcom/nineoldandroids/animation/ObjectAnimator;)V
    .locals 3
    .parameter

    .prologue
    const v1, 0x3c23d70a

    .line 87
    invoke-direct {p0}, Lcom/nineoldandroids/animation/Animator;-><init>()V

    .line 27
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/facebook/common/util/SpringAnimator;->c:F

    .line 28
    const v0, 0x3f333333

    iput v0, p0, Lcom/facebook/common/util/SpringAnimator;->d:F

    .line 29
    iput v1, p0, Lcom/facebook/common/util/SpringAnimator;->e:F

    .line 30
    iput v1, p0, Lcom/facebook/common/util/SpringAnimator;->f:F

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/common/util/SpringAnimator;->g:F

    .line 88
    iput-object p1, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 89
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-instance v1, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;-><init>(Lcom/facebook/common/util/SpringAnimator;Lcom/facebook/common/util/SpringAnimator$1;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Landroid/view/animation/Interpolator;)V

    .line 90
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-instance v1, Lcom/facebook/common/util/SpringAnimator$1;

    invoke-direct {v1, p0}, Lcom/facebook/common/util/SpringAnimator$1;-><init>(Lcom/facebook/common/util/SpringAnimator;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/facebook/common/util/SpringAnimator;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/common/util/SpringAnimator;->g:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/facebook/common/util/SpringAnimator;->g:F

    return v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;F)Lcom/facebook/common/util/SpringAnimator;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/facebook/common/util/SpringAnimator;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/facebook/common/util/SpringAnimator;

    invoke-direct {v1, v0}, Lcom/facebook/common/util/SpringAnimator;-><init>(Lcom/nineoldandroids/animation/ObjectAnimator;)V

    .line 52
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/common/util/SpringAnimator;->a(Ljava/lang/Float;)Lcom/facebook/common/util/SpringAnimator;

    .line 53
    return-object v1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;I)Lcom/facebook/common/util/SpringAnimator;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/facebook/common/util/SpringAnimator;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/facebook/common/util/SpringAnimator;

    invoke-direct {v1, v0}, Lcom/facebook/common/util/SpringAnimator;-><init>(Lcom/nineoldandroids/animation/ObjectAnimator;)V

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/common/util/SpringAnimator;->a(Ljava/lang/Integer;)Lcom/facebook/common/util/SpringAnimator;

    .line 67
    return-object v1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    .line 78
    invoke-virtual {v0, p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/String;)V

    .line 80
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/common/util/SpringAnimator;)Ljava/lang/Number;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->k:Ljava/lang/Number;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/common/util/SpringAnimator;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/common/util/SpringAnimator;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/facebook/common/util/SpringAnimator;->g:F

    return v0
.end method

.method static synthetic b(Lcom/facebook/common/util/SpringAnimator;)Ljava/lang/Number;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->j:Ljava/lang/Number;

    return-object v0
.end method

.method private b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 277
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 281
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->h:Ljava/lang/reflect/Method;

    return-object v0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No getter found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/facebook/common/util/SpringAnimator;)F
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/common/util/SpringAnimator;->l:F

    return v0
.end method

.method static synthetic c(Lcom/facebook/common/util/SpringAnimator;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/common/util/SpringAnimator;->l:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/facebook/common/util/SpringAnimator;->l:F

    return v0
.end method

.method static synthetic d(Lcom/facebook/common/util/SpringAnimator;)F
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/common/util/SpringAnimator;->c:F

    return v0
.end method

.method static synthetic d(Lcom/facebook/common/util/SpringAnimator;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/facebook/common/util/SpringAnimator;->g:F

    return p1
.end method

.method static synthetic e(Lcom/facebook/common/util/SpringAnimator;)F
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/common/util/SpringAnimator;->d:F

    return v0
.end method

.method static synthetic f(Lcom/facebook/common/util/SpringAnimator;)F
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/common/util/SpringAnimator;->g:F

    return v0
.end method

.method static synthetic g(Lcom/facebook/common/util/SpringAnimator;)F
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/common/util/SpringAnimator;->f:F

    return v0
.end method

.method static synthetic h(Lcom/facebook/common/util/SpringAnimator;)F
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/common/util/SpringAnimator;->e:F

    return v0
.end method

.method static synthetic i(Lcom/facebook/common/util/SpringAnimator;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    return-object v0
.end method

.method private k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/lang/Number;
    .locals 4

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/facebook/common/util/SpringAnimator;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/common/util/SpringAnimator;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/common/util/SpringAnimator;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->g()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred invoking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/common/util/SpringAnimator;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->k:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Float;)Lcom/facebook/common/util/SpringAnimator;
    .locals 1
    .parameter

    .prologue
    .line 252
    const-class v0, Ljava/lang/Float;

    iput-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->i:Ljava/lang/Class;

    .line 253
    iput-object p1, p0, Lcom/facebook/common/util/SpringAnimator;->k:Ljava/lang/Number;

    .line 254
    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/facebook/common/util/SpringAnimator;
    .locals 1
    .parameter

    .prologue
    .line 263
    const-class v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->i:Ljava/lang/Class;

    .line 264
    iput-object p1, p0, Lcom/facebook/common/util/SpringAnimator;->k:Ljava/lang/Number;

    .line 265
    return-object p0
.end method

.method public a(J)Lcom/nineoldandroids/animation/Animator;
    .locals 2
    .parameter

    .prologue
    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setDuration is not supported for SpringAnimator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 2
    .parameter

    .prologue
    .line 481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setInterpolator is not supported for SpringAnimator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->k:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    invoke-direct {p0}, Lcom/facebook/common/util/SpringAnimator;->m()Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->j:Ljava/lang/Number;

    .line 321
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->j:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/facebook/common/util/SpringAnimator;->l:F

    .line 322
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->i:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-array v2, v2, [I

    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->j:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v3

    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->k:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->a([I)V

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->c()V

    .line 328
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->j:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->k:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->a([F)V

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/facebook/common/util/SpringAnimator;->g()Lcom/facebook/common/util/SpringAnimator;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->d()V

    .line 351
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->e()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->b:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->f()Z

    move-result v0

    return v0
.end method

.method public g()Lcom/facebook/common/util/SpringAnimator;
    .locals 5

    .prologue
    .line 402
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator;->i:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/facebook/common/util/SpringAnimator;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/common/util/SpringAnimator;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/common/util/SpringAnimator;->a()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/util/SpringAnimator;->a(Ljava/lang/Object;Ljava/lang/String;F)Lcom/facebook/common/util/SpringAnimator;

    move-result-object v0

    move-object v1, v0

    .line 407
    :goto_0
    invoke-virtual {v1}, Lcom/facebook/common/util/SpringAnimator;->i()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/facebook/common/util/SpringAnimator;->i()Ljava/util/ArrayList;

    move-result-object v3

    .line 409
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 410
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 411
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v0}, Lcom/facebook/common/util/SpringAnimator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 410
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/facebook/common/util/SpringAnimator;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/common/util/SpringAnimator;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/common/util/SpringAnimator;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/util/SpringAnimator;->a(Ljava/lang/Object;Ljava/lang/String;I)Lcom/facebook/common/util/SpringAnimator;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 414
    :cond_1
    return-object v1
.end method

.method public synthetic h()Lcom/nineoldandroids/animation/Animator;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/facebook/common/util/SpringAnimator;->g()Lcom/facebook/common/util/SpringAnimator;

    move-result-object v0

    return-object v0
.end method
