.class Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;
.super Ljava/lang/Object;
.source "SpringAnimator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field final synthetic a:Lcom/facebook/common/util/SpringAnimator;


# direct methods
.method private constructor <init>(Lcom/facebook/common/util/SpringAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/util/SpringAnimator;Lcom/facebook/common/util/SpringAnimator$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;-><init>(Lcom/facebook/common/util/SpringAnimator;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/4 v5, 0x0

    .line 432
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v0}, Lcom/facebook/common/util/SpringAnimator;->a(Lcom/facebook/common/util/SpringAnimator;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 433
    iget-object v2, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v2}, Lcom/facebook/common/util/SpringAnimator;->b(Lcom/facebook/common/util/SpringAnimator;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 435
    iget-object v3, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v3}, Lcom/facebook/common/util/SpringAnimator;->c(Lcom/facebook/common/util/SpringAnimator;)F

    move-result v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v4}, Lcom/facebook/common/util/SpringAnimator;->d(Lcom/facebook/common/util/SpringAnimator;)F

    move-result v4

    mul-float/2addr v3, v4

    .line 436
    add-float/2addr v3, v5

    .line 437
    iget-object v4, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v4, v3}, Lcom/facebook/common/util/SpringAnimator;->a(Lcom/facebook/common/util/SpringAnimator;F)F

    .line 438
    iget-object v3, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    iget-object v4, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v4}, Lcom/facebook/common/util/SpringAnimator;->e(Lcom/facebook/common/util/SpringAnimator;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/facebook/common/util/SpringAnimator;->b(Lcom/facebook/common/util/SpringAnimator;F)F

    .line 439
    iget-object v3, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    iget-object v4, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v4}, Lcom/facebook/common/util/SpringAnimator;->f(Lcom/facebook/common/util/SpringAnimator;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/facebook/common/util/SpringAnimator;->c(Lcom/facebook/common/util/SpringAnimator;F)F

    .line 440
    sub-float/2addr v0, v2

    .line 441
    iget-object v3, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v3}, Lcom/facebook/common/util/SpringAnimator;->c(Lcom/facebook/common/util/SpringAnimator;)F

    move-result v3

    sub-float v2, v3, v2

    .line 443
    cmpl-float v3, v2, v5

    if-eqz v3, :cond_0

    cmpl-float v3, v0, v5

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 451
    :goto_0
    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 452
    iget-object v3, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v3}, Lcom/facebook/common/util/SpringAnimator;->f(Lcom/facebook/common/util/SpringAnimator;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v4}, Lcom/facebook/common/util/SpringAnimator;->g(Lcom/facebook/common/util/SpringAnimator;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v3}, Lcom/facebook/common/util/SpringAnimator;->h(Lcom/facebook/common/util/SpringAnimator;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 454
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v0, v5}, Lcom/facebook/common/util/SpringAnimator;->d(Lcom/facebook/common/util/SpringAnimator;F)F

    .line 455
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v0}, Lcom/facebook/common/util/SpringAnimator;->i(Lcom/facebook/common/util/SpringAnimator;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->a_(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 460
    :goto_1
    return v1

    .line 446
    :cond_1
    div-float v0, v2, v0

    goto :goto_0

    .line 459
    :cond_2
    iget-object v1, p0, Lcom/facebook/common/util/SpringAnimator$SpringInterpolator;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-static {v1}, Lcom/facebook/common/util/SpringAnimator;->i(Lcom/facebook/common/util/SpringAnimator;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    const-wide/32 v2, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->a_(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move v1, v0

    .line 460
    goto :goto_1
.end method
