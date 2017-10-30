.class public Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;
.super Ljava/lang/Object;
.source "AnimatingListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Lcom/facebook/widget/animatablelistview/AnimatingItemInfo",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/widget/animatablelistview/AnimatingItemView;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroid/database/DataSetObservable;

.field private f:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/widget/animatablelistview/AnimatingListTransaction",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/animatablelistview/AnimatingListTransaction",
            "<TT;>;"
        }
    .end annotation
.end field

.field private i:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private j:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nineoldandroids/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private o:Lcom/nineoldandroids/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;->STEADY_STATE:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->f:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    .line 66
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->k:Ljava/util/Set;

    .line 67
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->l:Ljava/util/Set;

    .line 81
    iput-object p1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->a:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->b:Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;

    .line 83
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->f()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->c:Ljava/util/Map;

    .line 86
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->f()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->d:Ljava/util/Map;

    .line 89
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->g:Ljava/util/List;

    .line 90
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->i:Lcom/google/common/collect/ImmutableList;

    .line 91
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->j:Lcom/google/common/collect/ImmutableList;

    .line 92
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->k:Ljava/util/Set;

    invoke-direct {p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->h()Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method private a(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/animatablelistview/AnimatingListMutation",
            "<TT;>;)",
            "Lcom/nineoldandroids/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;

    move-result-object v0

    .line 365
    const-string v1, "animationOffset"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 367
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->a_(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 368
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    .line 369
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 371
    :cond_0
    return-object v1

    .line 365
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
    .end array-data
.end method

.method private b(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/animatablelistview/AnimatingListMutation",
            "<TT;>;)",
            "Lcom/nineoldandroids/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;

    move-result-object v0

    .line 376
    const-string v1, "animationOffset"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 378
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->a_(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 379
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    .line 380
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 382
    :cond_0
    return-object v1

    .line 376
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private c(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/animatablelistview/AnimatingListMutation",
            "<TT;>;)",
            "Lcom/nineoldandroids/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;

    move-result-object v0

    .line 387
    const-string v1, "animationOffset"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 389
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->a_(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 390
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    .line 391
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 393
    :cond_0
    return-object v1

    .line 387
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private d(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/animatablelistview/AnimatingListMutation",
            "<TT;>;)",
            "Lcom/nineoldandroids/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;

    move-result-object v0

    .line 398
    const-string v1, "animationOffset"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 400
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->a_(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 401
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    .line 402
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 404
    :cond_0
    return-object v1

    .line 398
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private e(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/animatablelistview/AnimatingListMutation",
            "<TT;>;)",
            "Lcom/facebook/widget/animatablelistview/AnimatingItemInfo",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p1}, Lcom/facebook/widget/animatablelistview/AnimatingListMutation;->b()Ljava/lang/Object;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;

    .line 411
    invoke-virtual {p1}, Lcom/facebook/widget/animatablelistview/AnimatingListMutation;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/facebook/widget/animatablelistview/AnimatingListMutation;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;->a(I)Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;

    move-result-object v0

    .line 414
    :cond_0
    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->f:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    sget-object v2, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;->STEADY_STATE:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    if-eq v0, v2, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->h:Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;

    .line 316
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->h:Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;

    invoke-virtual {v0}, Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->i:Lcom/google/common/collect/ImmutableList;

    .line 319
    invoke-direct {p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->g()V

    .line 320
    invoke-direct {p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->i()V

    .line 323
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 325
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->h:Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;

    invoke-virtual {v0}, Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/animatablelistview/AnimatingListMutation;

    .line 326
    invoke-virtual {v0}, Lcom/facebook/widget/animatablelistview/AnimatingListMutation;->a()Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;

    move-result-object v4

    .line 327
    sget-object v5, Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_UP:Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_DOWN:Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_DOWN:Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_UP:Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;

    if-ne v4, v5, :cond_4

    .line 331
    :cond_3
    const/4 v1, 0x1

    .line 333
    :cond_4
    iget-boolean v5, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->m:Z

    if-nez v5, :cond_2

    .line 334
    sget-object v5, Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_UP:Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;

    if-ne v4, v5, :cond_5

    .line 335
    invoke-direct {p0, v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->b(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 336
    :cond_5
    sget-object v5, Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_DOWN:Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;

    if-ne v4, v5, :cond_6

    .line 337
    invoke-direct {p0, v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->a(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_6
    sget-object v5, Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_DOWN:Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;

    if-ne v4, v5, :cond_7

    .line 339
    invoke-direct {p0, v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->c(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    :cond_7
    sget-object v5, Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_UP:Lcom/facebook/widget/animatablelistview/AnimatingListMutation$MutationType;

    if-ne v4, v5, :cond_2

    .line 341
    invoke-direct {p0, v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->d(Lcom/facebook/widget/animatablelistview/AnimatingListMutation;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 346
    :cond_8
    if-nez v1, :cond_9

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->h:Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;

    .line 348
    sget-object v0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;->STEADY_STATE:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->f:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    .line 349
    invoke-direct {p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e()V

    goto/16 :goto_0

    .line 350
    :cond_9
    iget-boolean v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->m:Z

    if-eqz v0, :cond_a

    .line 351
    sget-object v0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;->WAITING_FOR_ANIMATION_TO_FINISH:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->f:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    goto/16 :goto_0

    .line 353
    :cond_a
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->o:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 354
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 355
    iget-object v3, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->o:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 357
    :cond_b
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->o:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Ljava/util/Collection;)V

    .line 358
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->o:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->c()V

    .line 359
    sget-object v0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;->WAITING_FOR_ANIMATION_TO_FINISH:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->f:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    goto/16 :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->h:Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;

    invoke-virtual {v0}, Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->i:Lcom/google/common/collect/ImmutableList;

    .line 431
    invoke-direct {p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->g()V

    .line 432
    invoke-direct {p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->i()V

    .line 433
    iput-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->h:Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;

    .line 434
    iput-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->o:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 435
    sget-object v0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;->STEADY_STATE:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->f:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    .line 436
    invoke-direct {p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e()V

    .line 437
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->i:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 441
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;

    .line 442
    if-nez v0, :cond_0

    .line 443
    new-instance v0, Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;

    invoke-direct {v0, v2}, Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;-><init>(Ljava/lang/Object;)V

    .line 444
    iget-object v3, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->c:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 447
    :cond_1
    return-void
.end method

.method private h()Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 450
    new-instance v0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$1;-><init>(Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;)V

    return-object v0
.end method

.method private declared-synchronized i()V
    .locals 1

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e:Landroid/database/DataSetObservable;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_0
    monitor-exit p0

    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->n:Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Already a pending transaction"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 103
    new-instance v0, Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;

    invoke-direct {v0, p0}, Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;-><init>(Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;)V

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->n:Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;

    .line 104
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->n:Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;

    return-object v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder",
            "<*>;",
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;",
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/widget/animatablelistview/AnimatingListMutation",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->n:Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Wrong transaction"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 113
    new-instance v0, Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;

    invoke-direct {v0, p4, p2, p3}, Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    .line 117
    iget-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iput-object p3, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->j:Lcom/google/common/collect/ImmutableList;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->n:Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;

    .line 120
    invoke-direct {p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e()V

    .line 121
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->o:Lcom/nineoldandroids/animation/AnimatorSet;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->f:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    sget-object v1, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;->WAITING_FOR_ANIMATION_TO_FINISH:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    if-ne v0, v1, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->f()V

    .line 421
    :cond_0
    return-void
.end method

.method a(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->b:Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;

    invoke-interface {v0}, Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;->b()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->i:Lcom/google/common/collect/ImmutableList;

    .line 129
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->j:Lcom/google/common/collect/ImmutableList;

    .line 130
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iput-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->o:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 132
    iput-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->n:Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;

    .line 133
    iput-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->h:Lcom/facebook/widget/animatablelistview/AnimatingListTransaction;

    .line 134
    sget-object v0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;->STEADY_STATE:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->f:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    .line 135
    return-void
.end method

.method public b(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->o:Lcom/nineoldandroids/animation/AnimatorSet;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->f:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    sget-object v1, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;->WAITING_FOR_ANIMATION_TO_FINISH:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter$State;

    if-ne v0, v1, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->f()V

    .line 427
    :cond_0
    return-void
.end method

.method public c()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->i:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public d()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->j:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->i:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->i:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->i:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->b:Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;->b(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    const/4 v0, -0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->b:Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;

    invoke-interface {v1, v0}, Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;->c(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 247
    check-cast p2, Lcom/facebook/widget/animatablelistview/AnimatingItemView;

    .line 248
    invoke-virtual {p0, p1}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 249
    if-nez p2, :cond_1

    .line 250
    new-instance p2, Lcom/facebook/widget/animatablelistview/AnimatingItemView;

    iget-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->a:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/facebook/widget/animatablelistview/AnimatingItemView;-><init>(Landroid/content/Context;)V

    .line 251
    iget-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->b:Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;

    invoke-interface {v1, v0, v4, p2}, Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 252
    invoke-virtual {p2, v1}, Lcom/facebook/widget/animatablelistview/AnimatingItemView;->addView(Landroid/view/View;)V

    .line 261
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;

    .line 262
    invoke-virtual {p2, v0}, Lcom/facebook/widget/animatablelistview/AnimatingItemView;->setItemInfo(Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;)V

    .line 265
    iget-object v1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->d:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 266
    if-eqz v1, :cond_2

    .line 267
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/widget/animatablelistview/AnimatingItemView;

    .line 268
    invoke-virtual {v2, v4}, Lcom/facebook/widget/animatablelistview/AnimatingItemView;->setItemInfo(Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;)V

    goto :goto_1

    .line 254
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/facebook/widget/animatablelistview/AnimatingItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->b:Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;

    invoke-interface {v2, v0, v1, p2}, Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 256
    if-eq v2, v1, :cond_0

    .line 257
    invoke-virtual {p2}, Lcom/facebook/widget/animatablelistview/AnimatingItemView;->removeAllViews()V

    .line 258
    invoke-virtual {p2, v2}, Lcom/facebook/widget/animatablelistview/AnimatingItemView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/facebook/widget/animatablelistview/AnimatingItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 275
    instance-of v4, v1, Lcom/facebook/widget/animatablelistview/AnimatingItemView;

    if-eqz v4, :cond_5

    .line 276
    check-cast v1, Lcom/facebook/widget/animatablelistview/AnimatingItemView;

    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;

    invoke-virtual {v1, v0}, Lcom/facebook/widget/animatablelistview/AnimatingItemView;->setItemInfo(Lcom/facebook/widget/animatablelistview/AnimatingItemInfo;)V

    .line 278
    if-nez v2, :cond_4

    .line 279
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 280
    iget-object v2, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->d:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object v2, v0

    .line 284
    goto :goto_2

    .line 285
    :cond_3
    return-object p2

    :cond_4
    move-object v0, v2

    goto :goto_3

    :cond_5
    move-object v0, v2

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->b:Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;

    invoke-interface {v0}, Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;->a()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->b:Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e:Landroid/database/DataSetObservable;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e:Landroid/database/DataSetObservable;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e:Landroid/database/DataSetObservable;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->e:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :cond_0
    monitor-exit p0

    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
