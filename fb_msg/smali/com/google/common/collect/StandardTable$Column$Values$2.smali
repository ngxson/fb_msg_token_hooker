.class Lcom/google/common/collect/StandardTable$Column$Values$2;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/google/common/collect/StandardTable$Column$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Column$Values;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$Values$2;->b:Lcom/google/common/collect/StandardTable$Column$Values;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Column$Values$2;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values$2;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 739
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$Column$Values$2;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method