.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;
.super Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ImprovedAbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 1263
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1251
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 1268
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1249
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1249
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
