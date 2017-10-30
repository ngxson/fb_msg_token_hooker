.class Lcom/google/common/collect/ForwardingMap$1;
.super Lcom/google/common/collect/ForwardingMap$StandardEntrySet;
.source "ForwardingMap.java"


# instance fields
.field final synthetic a:Lcom/google/common/base/Supplier;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/common/collect/ForwardingMap$1;->a:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
