.class Lcom/google/common/collect/ImmutableSortedMap$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final transient a:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 467
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->a:Lcom/google/common/collect/ImmutableSortedMap;

    .line 468
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 484
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 485
    check-cast p1, Ljava/util/Map$Entry;

    .line 486
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 489
    :cond_0
    return v0
.end method

.method public g_()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->a:Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableSortedMap;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->g_()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->g_()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->d()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method
