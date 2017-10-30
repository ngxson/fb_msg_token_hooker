.class final Lcom/google/common/cache/CustomConcurrentHashMap$SerializationProxy;
.super Lcom/google/common/cache/ForwardingCache;
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
        "Lcom/google/common/cache/ForwardingCache",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field transient a:Lcom/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected a()Lcom/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4351
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$SerializationProxy;->a:Lcom/google/common/cache/Cache;

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4284
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$SerializationProxy;->a()Lcom/google/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method
