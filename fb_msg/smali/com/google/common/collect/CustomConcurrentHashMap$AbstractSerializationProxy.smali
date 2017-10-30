.class abstract Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;
.super Lcom/google/common/collect/ForwardingConcurrentMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field transient a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected a()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3982
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method protected synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 3947
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->a()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3947
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->a()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method
