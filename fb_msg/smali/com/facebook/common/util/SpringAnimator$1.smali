.class Lcom/facebook/common/util/SpringAnimator$1;
.super Ljava/lang/Object;
.source "SpringAnimator.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/facebook/common/util/SpringAnimator;


# direct methods
.method constructor <init>(Lcom/facebook/common/util/SpringAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/common/util/SpringAnimator$1;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator$1;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-virtual {v0}, Lcom/facebook/common/util/SpringAnimator;->i()Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    if-nez v0, :cond_1

    .line 115
    :cond_0
    return-void

    .line 110
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 113
    iget-object v2, p0, Lcom/facebook/common/util/SpringAnimator$1;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-interface {v0, v2}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->a(Lcom/nineoldandroids/animation/Animator;)V

    goto :goto_0
.end method

.method public b(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator$1;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-virtual {v0}, Lcom/facebook/common/util/SpringAnimator;->i()Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 102
    :cond_0
    return-void

    .line 97
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 100
    iget-object v2, p0, Lcom/facebook/common/util/SpringAnimator$1;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-interface {v0, v2}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->b(Lcom/nineoldandroids/animation/Animator;)V

    goto :goto_0
.end method

.method public c(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator$1;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-virtual {v0}, Lcom/facebook/common/util/SpringAnimator;->i()Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    if-nez v0, :cond_1

    .line 128
    :cond_0
    return-void

    .line 123
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 126
    iget-object v2, p0, Lcom/facebook/common/util/SpringAnimator$1;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-interface {v0, v2}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->c(Lcom/nineoldandroids/animation/Animator;)V

    goto :goto_0
.end method

.method public d(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/common/util/SpringAnimator$1;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-virtual {v0}, Lcom/facebook/common/util/SpringAnimator;->i()Ljava/util/ArrayList;

    move-result-object v0

    .line 133
    if-nez v0, :cond_1

    .line 141
    :cond_0
    return-void

    .line 136
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 139
    iget-object v2, p0, Lcom/facebook/common/util/SpringAnimator$1;->a:Lcom/facebook/common/util/SpringAnimator;

    invoke-interface {v0, v2}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->d(Lcom/nineoldandroids/animation/Animator;)V

    goto :goto_0
.end method
