.class final Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;
.super Ljava/util/AbstractQueue;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3482
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3483
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$1;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;)V

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3526
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3527
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3515
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3518
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3519
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-static {p1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3521
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3533
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    .line 3534
    const/4 v0, 0x0

    .line 3538
    :goto_0
    return-object v0

    .line 3537
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3577
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-eq v0, v1, :cond_0

    .line 3578
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 3579
    invoke-static {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->e(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    move-object v0, v1

    .line 3581
    goto :goto_0

    .line 3583
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3584
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3585
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3556
    check-cast p1, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 3557
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    sget-object v1, Lcom/google/common/cache/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/cache/CustomConcurrentHashMap$NullEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3562
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3589
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$2;

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$2;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 3482
    check-cast p1, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3482
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3482
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->b()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3544
    check-cast p1, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 3545
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3546
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 3547
    invoke-static {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3548
    invoke-static {p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->e(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3550
    sget-object v0, Lcom/google/common/cache/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/cache/CustomConcurrentHashMap$NullEntry;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 3567
    const/4 v1, 0x0

    .line 3568
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-eq v0, v2, :cond_0

    .line 3569
    add-int/lit8 v1, v1, 0x1

    .line 3568
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 3571
    :cond_0
    return v1
.end method
