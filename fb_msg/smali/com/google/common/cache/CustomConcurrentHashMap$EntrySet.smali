.class final Lcom/google/common/cache/CustomConcurrentHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/cache/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CustomConcurrentHashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 4220
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 4264
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->clear()V

    .line 4265
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4229
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 4239
    :cond_0
    :goto_0
    return v0

    .line 4232
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 4233
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4234
    if-eqz v1, :cond_0

    .line 4237
    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v2, v1}, Lcom/google/common/cache/CustomConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4239
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/cache/CustomConcurrentHashMap;->g:Lcom/google/common/base/Equivalence;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
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
    .line 4224
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$EntryIterator;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-direct {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$EntryIterator;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4244
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 4249
    :cond_0
    :goto_0
    return v0

    .line 4247
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 4248
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4249
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/common/cache/CustomConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4254
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
