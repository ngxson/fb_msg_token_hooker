.class public Lcom/facebook/widget/ExpandablePhoto;
.super Landroid/widget/RelativeLayout;
.source "ExpandablePhoto.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/facebook/widget/ExpandablePhoto$OnPhotoAnimationStartListener;

.field private e:Lcom/facebook/widget/ExpandablePhoto$OnPhotoAnimationEndListener;

.field private f:Z

.field private g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 254
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/widget/ExpandablePhoto;->setVisibility(I)V

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/facebook/widget/ExpandablePhoto;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 259
    iget-object v0, p0, Lcom/facebook/widget/ExpandablePhoto;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 260
    iget-object v0, p0, Lcom/facebook/widget/ExpandablePhoto;->a:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 264
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/widget/ExpandablePhoto;->f:Z

    invoke-direct {p0, v0}, Lcom/facebook/widget/ExpandablePhoto;->a(Z)V

    .line 265
    iget-object v0, p0, Lcom/facebook/widget/ExpandablePhoto;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 266
    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/ExpandablePhoto;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/widget/ExpandablePhoto;->a()V

    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/widget/ExpandablePhoto;->e:Lcom/facebook/widget/ExpandablePhoto$OnPhotoAnimationEndListener;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/facebook/widget/ExpandablePhoto;->e:Lcom/facebook/widget/ExpandablePhoto$OnPhotoAnimationEndListener;

    invoke-interface {v0, p1}, Lcom/facebook/widget/ExpandablePhoto$OnPhotoAnimationEndListener;->a(Z)V

    .line 377
    :cond_0
    return-void
.end method

.method private getAnimatorSet()Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 242
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->b(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 243
    new-instance v1, Lcom/facebook/widget/ExpandablePhoto$1;

    invoke-direct {v1, p0}, Lcom/facebook/widget/ExpandablePhoto$1;-><init>(Lcom/facebook/widget/ExpandablePhoto;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 249
    return-object v0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/widget/ExpandablePhoto;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public setOnPhotoAnimationEndListener(Lcom/facebook/widget/ExpandablePhoto$OnPhotoAnimationEndListener;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/facebook/widget/ExpandablePhoto;->e:Lcom/facebook/widget/ExpandablePhoto$OnPhotoAnimationEndListener;

    .line 211
    return-void
.end method

.method public setOnPhotoAnimationStartListener(Lcom/facebook/widget/ExpandablePhoto$OnPhotoAnimationStartListener;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/facebook/widget/ExpandablePhoto;->d:Lcom/facebook/widget/ExpandablePhoto$OnPhotoAnimationStartListener;

    .line 193
    return-void
.end method
