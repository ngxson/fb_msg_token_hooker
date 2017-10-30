.class final Lcom/google/common/collect/BstMutationRule;
.super Ljava/lang/Object;
.source "BstMutationRule.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "N:",
        "Lcom/google/common/collect/BstNode",
        "<TK;TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/BstModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstModifier",
            "<TK;TN;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/BstBalancePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/common/collect/BstNodeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/BstModifier;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstModifier",
            "<TK;TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstBalancePolicy;

    iput-object v0, p0, Lcom/google/common/collect/BstMutationRule;->b:Lcom/google/common/collect/BstBalancePolicy;

    .line 50
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstNodeFactory;

    iput-object v0, p0, Lcom/google/common/collect/BstMutationRule;->c:Lcom/google/common/collect/BstNodeFactory;

    .line 51
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstModifier;

    iput-object v0, p0, Lcom/google/common/collect/BstMutationRule;->a:Lcom/google/common/collect/BstModifier;

    .line 52
    return-void
.end method

.method public static a(Lcom/google/common/collect/BstModifier;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;)Lcom/google/common/collect/BstMutationRule;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Lcom/google/common/collect/BstModifier",
            "<TK;TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;)",
            "Lcom/google/common/collect/BstMutationRule",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/google/common/collect/BstMutationRule;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/BstMutationRule;-><init>(Lcom/google/common/collect/BstModifier;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/BstModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstModifier",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/BstMutationRule;->a:Lcom/google/common/collect/BstModifier;

    return-object v0
.end method

.method public b()Lcom/google/common/collect/BstBalancePolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/common/collect/BstMutationRule;->b:Lcom/google/common/collect/BstBalancePolicy;

    return-object v0
.end method

.method public c()Lcom/google/common/collect/BstNodeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/common/collect/BstMutationRule;->c:Lcom/google/common/collect/BstNodeFactory;

    return-object v0
.end method
