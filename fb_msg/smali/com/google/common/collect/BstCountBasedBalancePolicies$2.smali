.class final Lcom/google/common/collect/BstCountBasedBalancePolicies$2;
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


# direct methods
.method constructor <init>(Lcom/google/common/collect/BstAggregate;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->a:Lcom/google/common/collect/BstAggregate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 4
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;TN;TN;TN;)TN;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v1}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->a:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v2, v0}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->a:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v3, v1}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_0

    .line 103
    invoke-direct {p0, p1, p4, v0, v1}, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->e(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object p4

    .line 105
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->d(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 4
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
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
    .line 109
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v1}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->a:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v2, v0}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->a:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v3, v1}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_0

    .line 113
    invoke-direct {p0, p1, p3, v1, v0}, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->d(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object p3

    .line 115
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->e(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;TN;TN;TN;)TN;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v1}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-virtual {p1, p4, v0, v1}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
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
    .line 126
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v1}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-virtual {p1, p2, v1, p4}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0
.end method


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
    .line 134
    if-nez p2, :cond_0

    .line 149
    :goto_0
    return-object p3

    .line 136
    :cond_0
    if-nez p3, :cond_1

    move-object p3, p2

    .line 137
    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->a:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v0, p2}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->a:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v1, p3}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 141
    invoke-static {p2, p1, p0}, Lcom/google/common/collect/BstOperations;->b(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/google/common/collect/BstMutationResult;->c()Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 143
    invoke-virtual {v1}, Lcom/google/common/collect/BstMutationResult;->b()Lcom/google/common/collect/BstNode;

    move-result-object p2

    .line 149
    :goto_1
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object p3

    goto :goto_0

    .line 145
    :cond_2
    invoke-static {p3, p1, p0}, Lcom/google/common/collect/BstOperations;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/google/common/collect/BstMutationResult;->c()Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 147
    invoke-virtual {v1}, Lcom/google/common/collect/BstMutationResult;->b()Lcom/google/common/collect/BstNode;

    move-result-object p3

    goto :goto_1
.end method

.method public a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 4
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
    .line 86
    iget-object v0, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->a:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v0, p3}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->a:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v1, p4}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v1

    .line 88
    add-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 89
    mul-int/lit8 v2, v0, 0x4

    if-lt v1, v2, :cond_0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->b(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 91
    :cond_0
    mul-int/lit8 v1, v1, 0x4

    if-lt v0, v1, :cond_1

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/BstCountBasedBalancePolicies$2;->c(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0
.end method
