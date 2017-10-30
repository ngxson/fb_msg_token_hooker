.class final Lcom/google/common/collect/BstCountBasedBalancePolicies$3;
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
.field final synthetic a:Lcom/google/common/collect/BstBalancePolicy;

.field final synthetic b:Lcom/google/common/collect/BstAggregate;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstAggregate;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a:Lcom/google/common/collect/BstBalancePolicy;

    iput-object p2, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->b:Lcom/google/common/collect/BstAggregate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 3
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
    .line 191
    if-nez p2, :cond_0

    .line 207
    :goto_0
    return-object p3

    .line 193
    :cond_0
    if-nez p3, :cond_1

    move-object p3, p2

    .line 194
    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->b:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v0, p2}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->b:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v1, p3}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v1

    .line 198
    mul-int/lit8 v2, v0, 0x4

    if-gt v2, v1, :cond_2

    .line 199
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a:Lcom/google/common/collect/BstBalancePolicy;

    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v2}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-interface {v1, p1, p3, v0, v2}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object p3

    goto :goto_0

    .line 202
    :cond_2
    mul-int/lit8 v1, v1, 0x4

    if-gt v1, v0, :cond_3

    .line 203
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a:Lcom/google/common/collect/BstBalancePolicy;

    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p2, v2}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object p3

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a:Lcom/google/common/collect/BstBalancePolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object p3

    goto :goto_0
.end method

.method public a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 3
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
    .line 168
    if-nez p3, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a:Lcom/google/common/collect/BstBalancePolicy;

    invoke-static {p4, p2, p1, v0}, Lcom/google/common/collect/BstOperations;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 170
    :cond_0
    if-nez p4, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a:Lcom/google/common/collect/BstBalancePolicy;

    invoke-static {p3, p2, p1, v0}, Lcom/google/common/collect/BstOperations;->b(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->b:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v0, p3}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->b:Lcom/google/common/collect/BstAggregate;

    invoke-interface {v1, p4}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v1

    .line 175
    mul-int/lit8 v2, v0, 0x4

    if-gt v2, v1, :cond_2

    .line 176
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a:Lcom/google/common/collect/BstBalancePolicy;

    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v2}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-interface {v1, p1, p4, v0, v2}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_2
    mul-int/lit8 v1, v1, 0x4

    if-gt v1, v0, :cond_3

    .line 180
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/google/common/collect/BstCountBasedBalancePolicies$3;->a:Lcom/google/common/collect/BstBalancePolicy;

    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p3, v2}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-interface {v1, p1, p3, v2, v0}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0
.end method
