.class final Lcom/google/common/collect/BstRangeOps;
.super Ljava/lang/Object;
.source "BstRangeOps.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstNode;)I
    .locals 2
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
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Lcom/google/common/collect/BstAggregate",
            "<-TN;>;",
            "Lcom/google/common/collect/GeneralRange",
            "<TK;>;TN;)I"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 51
    :cond_1
    :goto_0
    return v0

    .line 44
    :cond_2
    invoke-interface {p0, p2}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v0

    .line 45
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, v1, p2}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 48
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, v1, p2}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)I
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
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Lcom/google/common/collect/BstAggregate",
            "<-TN;>;",
            "Lcom/google/common/collect/GeneralRange",
            "<TK;>;",
            "Lcom/google/common/collect/BstSide;",
            "TN;)I"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_0
    if-eqz p3, :cond_1

    .line 59
    invoke-virtual {p3}, Lcom/google/common/collect/BstNode;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-interface {p0, p3}, Lcom/google/common/collect/BstAggregate;->b(Lcom/google/common/collect/BstNode;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    invoke-virtual {p3, p2}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/collect/BstAggregate;->a(Lcom/google/common/collect/BstNode;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    invoke-virtual {p2}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object p3

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p3, p2}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object p3

    goto :goto_0

    .line 67
    :cond_1
    return v0
.end method

.method public static a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 3
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
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Lcom/google/common/collect/GeneralRange",
            "<TK;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;TN;)TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    .line 87
    :cond_0
    invoke-interface {p1, p2, v1, v0}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 81
    goto :goto_0
.end method

.method private static a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 4
    .parameter
    .end parameter
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
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Lcom/google/common/collect/GeneralRange",
            "<TK;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;",
            "Lcom/google/common/collect/BstSide;",
            "TN;)TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    if-nez p4, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/collect/BstNode;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    .line 103
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 104
    sget-object v2, Lcom/google/common/collect/BstRangeOps$1;->a:[I

    invoke-virtual {p3}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :pswitch_0
    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v2, v0}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 114
    :goto_1
    invoke-interface {p1, p2, p4, v1, v0}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_1
    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v2, v1}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {p4, p3}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;
    .locals 1
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
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;P:",
            "Lcom/google/common/collect/BstPath",
            "<TN;TP;>;>(",
            "Lcom/google/common/collect/GeneralRange",
            "<TK;>;",
            "Lcom/google/common/collect/BstSide;",
            "Lcom/google/common/collect/BstPathFactory",
            "<TN;TP;>;TN;)TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    if-nez p3, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-interface {p2, p3}, Lcom/google/common/collect/BstPathFactory;->b(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;

    move-result-object v0

    .line 135
    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstPath;)Lcom/google/common/collect/BstPath;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstPath;)Lcom/google/common/collect/BstPath;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;P:",
            "Lcom/google/common/collect/BstPath",
            "<TN;TP;>;>(",
            "Lcom/google/common/collect/GeneralRange",
            "<TK;>;",
            "Lcom/google/common/collect/BstSide;",
            "Lcom/google/common/collect/BstPathFactory",
            "<TN;TP;>;TP;)TP;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-virtual {p3}, Lcom/google/common/collect/BstPath;->b()Lcom/google/common/collect/BstNode;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/google/common/collect/BstNode;->a()Ljava/lang/Object;

    move-result-object v2

    .line 142
    invoke-static {p0, v2, p1}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/BstNode;->b(Lcom/google/common/collect/BstSide;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lcom/google/common/collect/BstPathFactory;->a(Lcom/google/common/collect/BstPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstPath;

    move-result-object v0

    .line 145
    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstPath;)Lcom/google/common/collect/BstPath;

    move-result-object v0

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    invoke-virtual {v1, p1}, Lcom/google/common/collect/BstNode;->b(Lcom/google/common/collect/BstSide;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-interface {p2, p3, p1}, Lcom/google/common/collect/BstPathFactory;->a(Lcom/google/common/collect/BstPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstPath;

    move-result-object v1

    .line 151
    invoke-static {p0, p1, p2, v1}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstPath;)Lcom/google/common/collect/BstPath;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 153
    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p3, v0

    :cond_3
    move-object v0, p3

    goto :goto_0
.end method

.method public static a(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/GeneralRange",
            "<TK;>;TK;",
            "Lcom/google/common/collect/BstSide;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/google/common/collect/BstRangeOps$1;->a:[I

    invoke-virtual {p2}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 171
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 167
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->b(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
