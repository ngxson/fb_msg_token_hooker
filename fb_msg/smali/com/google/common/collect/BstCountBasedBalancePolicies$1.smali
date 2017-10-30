.class final Lcom/google/common/collect/BstCountBasedBalancePolicies$1;
.super Ljava/lang/Object;
.source "BstCountBasedBalancePolicies.java"

# interfaces
.implements Lcom/google/common/collect/BstBalancePolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/BstBalancePolicy",
        "<TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/BstAggregate;


# virtual methods
.method public a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;TN;TN;)TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 67
    :goto_0
    return-object p3

    .line 61
    :cond_0
    if-nez p3, :cond_1

    move-object p3, p2

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$1;->a:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v0, p2}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$1;->a:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v1, p3}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 64
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p2, v1}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/common/collect/BstCountBasedBalancePolicies$1;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object p3

    goto :goto_0

    .line 67
    :cond_2
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/BstCountBasedBalancePolicies$1;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v1}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object p3

    goto :goto_0
.end method

.method public a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;TN;TN;TN;)TN;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstNodeFactory;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0
.end method
