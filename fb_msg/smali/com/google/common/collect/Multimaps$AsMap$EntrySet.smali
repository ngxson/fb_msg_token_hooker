.class Lcom/google/common/collect/Multimaps$AsMap$EntrySet;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$AsMap;


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->a:Lcom/google/common/collect/Multimaps$AsMap;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->a:Lcom/google/common/collect/Multimaps$AsMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$AsMap;->c()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 2115
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2116
    const/4 v0, 0x0

    .line 2120
    :goto_0
    return v0

    .line 2118
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2119
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->a:Lcom/google/common/collect/Multimaps$AsMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Multimaps$AsMap;->a(Ljava/lang/Object;)V

    .line 2120
    const/4 v0, 0x1

    goto :goto_0
.end method
