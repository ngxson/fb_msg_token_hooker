.class final Lcom/google/common/cache/CustomConcurrentHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/cache/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CustomConcurrentHashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 4192
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Values;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 4216
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Values;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->clear()V

    .line 4217
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 4211
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Values;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 4206
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Values;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4196
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$ValueIterator;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Values;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-direct {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueIterator;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4201
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Values;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
