.class Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$2;
.super Lcom/google/common/collect/AbstractLinkedIterator;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractLinkedIterator",
        "<",
        "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3589
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$2;->a:Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractLinkedIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3592
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3593
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$2;->a:Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;

    iget-object v1, v1, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 3589
    check-cast p1, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$2;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method
