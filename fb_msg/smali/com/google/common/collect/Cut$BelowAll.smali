.class final Lcom/google/common/collect/Cut$BelowAll;
.super Lcom/google/common/collect/Cut;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Cut",
        "<",
        "Ljava/lang/Comparable",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/common/collect/Cut$BelowAll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/google/common/collect/Cut$BelowAll;

    invoke-direct {v0}, Lcom/google/common/collect/Cut$BelowAll;-><init>()V

    sput-object v0, Lcom/google/common/collect/Cut$BelowAll;->b:Lcom/google/common/collect/Cut$BelowAll;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 118
    return-void
.end method

.method static synthetic c()Lcom/google/common/collect/Cut$BelowAll;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/google/common/collect/Cut$BelowAll;->b:Lcom/google/common/collect/Cut$BelowAll;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/Cut;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 162
    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method a(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Lcom/google/common/collect/Cut",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method a(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Ljava/lang/Comparable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->a()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    const-string v0, "(-\u221e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    return-void
.end method

.method a(Ljava/lang/Comparable;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method b(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Lcom/google/common/collect/Cut",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method b(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Ljava/lang/Comparable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method b(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 113
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut$BelowAll;->a(Lcom/google/common/collect/Cut;)I

    move-result v0

    return v0
.end method
