.class final Lcom/google/common/collect/BstOperations;
.super Ljava/lang/Object;
.source "BstOperations.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(TN;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;)",
            "Lcom/google/common/collect/BstMutationResult",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->b(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->c(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/BstOperations;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/google/common/collect/BstMutationResult;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/BstNode;->a()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/common/collect/BstModificationResult;->b(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/google/common/collect/BstMutationResult;->a(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/common/collect/BstNode;Ljava/lang/Object;Lcom/google/common/collect/BstMutationRule;)Lcom/google/common/collect/BstMutationResult;
    .locals 8
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(TN;TK;",
            "Lcom/google/common/collect/BstMutationRule",
            "<TK;TN;>;)",
            "Lcom/google/common/collect/BstMutationResult",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p2}, Lcom/google/common/collect/BstMutationRule;->b()Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v3

    .line 116
    invoke-virtual {p2}, Lcom/google/common/collect/BstMutationRule;->c()Lcom/google/common/collect/BstNodeFactory;

    move-result-object v4

    .line 117
    invoke-virtual {p2}, Lcom/google/common/collect/BstMutationRule;->a()Lcom/google/common/collect/BstModifier;

    move-result-object v2

    .line 121
    if-nez p0, :cond_0

    move-object v0, v1

    .line 122
    :goto_0
    invoke-interface {v2, p1, v0}, Lcom/google/common/collect/BstModifier;->a(Ljava/lang/Object;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v5

    .line 125
    if-eqz p0, :cond_4

    .line 126
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    .line 127
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 129
    :goto_1
    sget-object v6, Lcom/google/common/collect/BstOperations$1;->a:[I

    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->c()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 121
    :cond_0
    invoke-virtual {v4, p0}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    move-object v1, p0

    .line 157
    :cond_1
    :goto_2
    invoke-static {p1, p0, v1, v5}, Lcom/google/common/collect/BstMutationResult;->a(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    return-object v0

    .line 134
    :pswitch_1
    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->b()Lcom/google/common/collect/BstNode;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 135
    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->b()Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-virtual {v4, v1, v2, v0}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    goto :goto_2

    .line 137
    :cond_2
    if-eqz p0, :cond_1

    .line 140
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Modification result is a REBUILDING_CHANGE, but rebalancing required"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 145
    :pswitch_2
    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->b()Lcom/google/common/collect/BstNode;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 146
    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->b()Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-interface {v3, v4, v1, v2, v0}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    goto :goto_2

    .line 148
    :cond_3
    if-eqz p0, :cond_1

    .line 149
    invoke-interface {v3, v4, v2, v0}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    move-object v2, v1

    goto :goto_1

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/util/Comparator;Lcom/google/common/collect/BstMutationRule;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstMutationResult;
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
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Lcom/google/common/collect/BstMutationRule",
            "<TK;TN;>;TN;TK;)",
            "Lcom/google/common/collect/BstMutationResult",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    if-eqz p2, :cond_1

    .line 76
    invoke-virtual {p2}, Lcom/google/common/collect/BstNode;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    if-gez v0, :cond_0

    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    .line 79
    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-static {p0, p1, v1, p3}, Lcom/google/common/collect/BstOperations;->a(Ljava/util/Comparator;Lcom/google/common/collect/BstMutationRule;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lcom/google/common/collect/BstMutationRule;->c()Lcom/google/common/collect/BstNodeFactory;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/common/collect/BstMutationRule;->b()Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v3

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/common/collect/BstMutationResult;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    .line 85
    :goto_1
    return-object v0

    .line 78
    :cond_0
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {p2, p3, p1}, Lcom/google/common/collect/BstOperations;->a(Lcom/google/common/collect/BstNode;Ljava/lang/Object;Lcom/google/common/collect/BstMutationRule;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(TN;TN;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;)TN;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    if-nez p0, :cond_0

    .line 205
    invoke-virtual {p2, p1}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/common/collect/BstOperations;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-interface {p3, p2, p0, v0, v1}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Comparator;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstNode;
    .locals 1
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
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Ljava/util/Comparator",
            "<-TK;>;TN;TK;)TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    if-nez p1, :cond_1

    .line 44
    const/4 p1, 0x0

    .line 51
    :cond_0
    :goto_0
    return-object p1

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/BstNode;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 50
    if-gez v0, :cond_2

    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    .line 51
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/common/collect/BstOperations;->a(Ljava/util/Comparator;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstNode;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_2
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    goto :goto_1
.end method

.method public static b(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(TN;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;)",
            "Lcom/google/common/collect/BstMutationResult",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->b(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->c(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/BstOperations;->b(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/google/common/collect/BstMutationResult;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/BstNode;->a()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/common/collect/BstModificationResult;->b(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/google/common/collect/BstMutationResult;->a(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(TN;TN;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;)TN;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    if-nez p0, :cond_0

    .line 223
    invoke-virtual {p2, p1}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/google/common/collect/BstOperations;->b(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-interface {p3, p2, p0, v0, v1}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0
.end method
