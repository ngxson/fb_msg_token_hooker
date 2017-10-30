.class Lcom/google/common/cache/CustomConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/cache/CustomConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile b:I

.field c:I

.field d:I

.field volatile e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final f:I

.field final g:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final m:Lcom/google/common/cache/AbstractCache$StatsCounter;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CustomConcurrentHashMap;IILcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap",
            "<TK;TV;>;II",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2146
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2147
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    .line 2148
    iput p3, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->f:I

    .line 2149
    iput-object p4, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 2150
    invoke-virtual {p0, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2152
    invoke-virtual {p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->g:Ljava/lang/ref/ReferenceQueue;

    .line 2155
    invoke-virtual {p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_0
    iput-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->h:Ljava/lang/ref/ReferenceQueue;

    .line 2158
    invoke-virtual {p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    .line 2162
    invoke-virtual {p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;

    invoke-direct {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    .line 2166
    invoke-virtual {p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;

    invoke-direct {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;-><init>()V

    :goto_3
    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l:Ljava/util/Queue;

    .line 2169
    return-void

    :cond_2
    move-object v0, v1

    .line 2152
    goto :goto_0

    .line 2158
    :cond_3
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->i()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2162
    :cond_4
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->i()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 2166
    :cond_5
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->i()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2191
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 2192
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v1, v1, Lcom/google/common/cache/CustomConcurrentHashMap;->o:Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory;->copyEntry(Lcom/google/common/cache/CustomConcurrentHashMap$Segment;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 2193
    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, v2, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)V

    .line 2194
    return-object v1
.end method

.method a(Ljava/lang/Object;I)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2582
    invoke-virtual {p0, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2583
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 2582
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2587
    :cond_1
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2588
    if-nez v1, :cond_2

    .line 2589
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a()V

    goto :goto_1

    .line 2593
    :cond_2
    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/cache/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2598
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap;->o:Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory;->newEntry(Lcom/google/common/cache/CustomConcurrentHashMap$Segment;Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2216
    .line 2217
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v0, :cond_c

    .line 2218
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;I)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 2219
    if-eqz v1, :cond_1

    .line 2220
    invoke-virtual {p0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->f(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    .line 2221
    if-eqz v0, :cond_1

    .line 2222
    invoke-virtual {p0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2223
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2308
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 2231
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->b()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2234
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2236
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->o()V

    .line 2238
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v6, v0, -0x1

    .line 2239
    iget-object v7, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2240
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 2241
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-object v5, v0

    .line 2243
    :goto_2
    if-eqz v5, :cond_b

    .line 2244
    invoke-interface {v5}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 2245
    invoke-interface {v5}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, p2, :cond_6

    if-eqz v9, :cond_6

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v1, v1, Lcom/google/common/cache/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v1, p1, v9}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2247
    invoke-interface {v5}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    .line 2248
    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    move v6, v3

    .line 2273
    :goto_3
    if-eqz v6, :cond_a

    .line 2274
    new-instance v1, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;

    invoke-direct {v1, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;-><init>(Lcom/google/common/cache/CacheLoader;)V

    .line 2276
    if-nez v5, :cond_7

    .line 2277
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2278
    invoke-interface {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)V

    .line 2279
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2285
    :goto_4
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2286
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    .line 2289
    if-eqz v6, :cond_8

    .line 2291
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 2308
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    goto :goto_0

    .line 2251
    :cond_3
    :try_start_4
    invoke-interface {v5}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2252
    if-nez v1, :cond_4

    .line 2253
    sget-object v10, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v9, p2, v1, v10}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2265
    :goto_5
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v1, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2266
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l:Ljava/util/Queue;

    invoke-interface {v1, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2267
    iput v6, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    move v6, v2

    .line 2269
    goto :goto_3

    .line 2254
    :cond_4
    iget-object v10, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v10}, Lcom/google/common/cache/CustomConcurrentHashMap;->b()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v10, v5}, Lcom/google/common/cache/CustomConcurrentHashMap;->c(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2257
    sget-object v10, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v9, p2, v1, v10}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 2285
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2286
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2308
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    throw v0

    .line 2259
    :cond_5
    :try_start_6
    invoke-virtual {p0, v5}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2260
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2285
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2286
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2308
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    move-object v0, v1

    goto/16 :goto_0

    .line 2243
    :cond_6
    :try_start_8
    invoke-interface {v5}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v5

    goto/16 :goto_2

    .line 2281
    :cond_7
    invoke-interface {v5, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v5

    goto :goto_4

    :cond_8
    move-object v1, v0

    .line 2296
    :try_start_9
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    :goto_6
    const-string v5, "Recursive computation"

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2298
    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->c()Ljava/lang/Object;

    move-result-object v0

    .line 2299
    if-eqz v0, :cond_0

    .line 2300
    invoke-virtual {p0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2301
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2308
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    goto/16 :goto_0

    :cond_9
    move v0, v3

    .line 2296
    goto :goto_6

    :cond_a
    move-object v1, v4

    move-object v0, v5

    goto/16 :goto_4

    :cond_b
    move v6, v2

    goto/16 :goto_3

    :cond_c
    move-object v0, v4

    goto/16 :goto_1
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2315
    const/4 v1, 0x0

    .line 2316
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 2321
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2322
    :try_start_1
    invoke-virtual {p4, p1, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 2323
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2324
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 2325
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sub-long/2addr v4, v2

    invoke-interface {v0, v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->a(J)V

    .line 2328
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2329
    if-eqz v0, :cond_0

    .line 2331
    sget-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2335
    :cond_0
    if-nez v1, :cond_1

    .line 2336
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 2337
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sub-long v2, v4, v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->b(J)V

    .line 2338
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)Z

    .line 2339
    :cond_1
    return-object v1

    .line 2323
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2335
    :catchall_1
    move-exception v0

    if-nez v1, :cond_2

    .line 2336
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 2337
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sub-long v2, v4, v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->b(J)V

    .line 2338
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)Z

    .line 2339
    :cond_2
    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2871
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->lock()V

    .line 2873
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->o()V

    .line 2875
    iget-object v4, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2876
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2877
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-object v3, v0

    .line 2879
    :goto_0
    if-eqz v3, :cond_3

    .line 2880
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2881
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/cache/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2885
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v7

    .line 2886
    invoke-interface {v7}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2887
    if-nez v2, :cond_1

    .line 2888
    invoke-virtual {p0, v7}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2889
    iget v7, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v7, v7, -0x1

    .line 2890
    iget v7, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 2891
    sget-object v7, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v6, p2, v2, v7}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2892
    invoke-virtual {p0, v0, v3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2893
    iget v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 2894
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2895
    iput v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2909
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2910
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 2900
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 2901
    sget-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2902
    invoke-virtual {p0, v3, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2909
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2910
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move-object v0, v2

    goto :goto_1

    .line 2879
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2909
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2910
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move-object v0, v1

    goto :goto_1

    .line 2909
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2910
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2680
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->lock()V

    .line 2682
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->o()V

    .line 2684
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v2, v0, 0x1

    .line 2685
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->d:I

    if-le v2, v0, :cond_0

    .line 2686
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l()V

    .line 2687
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v2, v0, 0x1

    .line 2690
    :cond_0
    iget-object v4, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2691
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2692
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-object v3, v0

    .line 2695
    :goto_0
    if-eqz v3, :cond_6

    .line 2696
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2697
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_5

    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v7, v7, Lcom/google/common/cache/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2701
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v4

    .line 2702
    invoke-interface {v4}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2704
    if-nez v0, :cond_3

    .line 2705
    iget v5, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 2706
    invoke-virtual {p0, v3, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2707
    invoke-interface {v4}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->b()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2708
    sget-object v2, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2709
    iget v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    .line 2713
    :cond_1
    :goto_1
    iput v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2742
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2743
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move-object v0, v1

    :goto_2
    return-object v0

    .line 2710
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2711
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    .line 2715
    :cond_3
    if-eqz p4, :cond_4

    .line 2719
    invoke-virtual {p0, v3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2742
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2743
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    goto :goto_2

    .line 2723
    :cond_4
    :try_start_2
    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 2724
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2725
    invoke-virtual {p0, v3, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2742
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2743
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    goto :goto_2

    .line 2695
    :cond_5
    :try_start_3
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v3

    goto :goto_0

    .line 2732
    :cond_6
    iget v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 2733
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2734
    invoke-virtual {p0, v0, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2735
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2736
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2737
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2739
    :goto_3
    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2742
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2743
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move-object v0, v1

    goto :goto_2

    .line 2742
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2743
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    throw v0

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2353
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2356
    :cond_0
    return-void

    .line 2353
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2431
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap;->k:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2433
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2434
    return-void
.end method

.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;J)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setExpirationTime(J)V

    .line 2500
    return-void
.end method

.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2537
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2538
    return-void
.end method

.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2202
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 2203
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v1, v1, Lcom/google/common/cache/CustomConcurrentHashMap;->i:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->referenceValue(Lcom/google/common/cache/CustomConcurrentHashMap$Segment;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    .line 2204
    invoke-interface {p1, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)V

    .line 2205
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2206
    invoke-interface {v0, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->a(Ljava/lang/Object;)V

    .line 2207
    return-void
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2541
    invoke-virtual {p4}, Lcom/google/common/cache/RemovalCause;->wasEvicted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2542
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->m:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->c()V

    .line 2544
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap;->m:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/cache/CustomConcurrentHashMap;->r:Ljava/util/Queue;

    if-eq v0, v1, :cond_1

    .line 2545
    new-instance v0, Lcom/google/common/cache/RemovalNotification;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/common/cache/RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2546
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v1, v1, Lcom/google/common/cache/CustomConcurrentHashMap;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2548
    :cond_1
    return-void
.end method

.method a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2176
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->d:I

    .line 2177
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->d:I

    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->f:I

    if-ne v0, v1, :cond_0

    .line 2179
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->d:I

    .line 2181
    :cond_0
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2182
    return-void
.end method

.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 3073
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->lock()V

    .line 3075
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 3076
    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3077
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 3078
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-object v1, v0

    .line 3080
    :goto_0
    if-eqz v1, :cond_1

    .line 3081
    if-ne v1, p1, :cond_0

    .line 3082
    iget v4, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 3083
    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v4, p2, v5, v6}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 3085
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3086
    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3087
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3088
    iput v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3089
    const/4 v0, 0x1

    .line 3095
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3096
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    :goto_1
    return v0

    .line 3080
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 3093
    :cond_1
    const/4 v0, 0x0

    .line 3095
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3096
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    goto :goto_1

    .line 3095
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3096
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    throw v0
.end method

.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I",
            "Lcom/google/common/cache/RemovalCause;",
            ")Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3171
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 3172
    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3173
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 3174
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-object v1, v0

    .line 3176
    :goto_0
    if-eqz v1, :cond_1

    .line 3177
    if-ne v1, p1, :cond_0

    .line 3178
    iget v4, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 3179
    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, p2, v5, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 3180
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3181
    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3182
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3183
    iput v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    .line 3184
    const/4 v0, 0x1

    .line 3188
    :goto_1
    return v0

    .line 3176
    :cond_0
    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    goto :goto_0

    .line 3188
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3207
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3210
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3104
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->lock()V

    .line 3106
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 3107
    iget-object v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3108
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 3109
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-object v2, v0

    .line 3111
    :goto_0
    if-eqz v2, :cond_4

    .line 3112
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3113
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v6, v6, Lcom/google/common/cache/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3115
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v5

    .line 3116
    if-ne v5, p3, :cond_1

    .line 3117
    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 3118
    invoke-interface {p3}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 3119
    invoke-virtual {p0, v0, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3120
    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3121
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3122
    iput v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3123
    const/4 v0, 0x1

    .line 3131
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3132
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3133
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    :cond_0
    :goto_1
    return v0

    .line 3131
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3132
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3133
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 3111
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3131
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3132
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3133
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    :cond_5
    move v0, v1

    goto :goto_1

    .line 3131
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3132
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3133
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    :cond_6
    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2820
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->lock()V

    .line 2822
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->o()V

    .line 2824
    iget-object v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2825
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2826
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-object v2, v0

    .line 2828
    :goto_0
    if-eqz v2, :cond_4

    .line 2829
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2830
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v6, v6, Lcom/google/common/cache/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2834
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v6

    .line 2835
    invoke-interface {v6}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2836
    if-nez v7, :cond_1

    .line 2837
    invoke-virtual {p0, v6}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2838
    iget v6, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v6, v6, -0x1

    .line 2839
    iget v6, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 2840
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v5, p2, v7, v6}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2841
    invoke-virtual {p0, v0, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2842
    iget v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 2843
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2844
    iput v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2865
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2866
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move v0, v1

    :goto_1
    return v0

    .line 2849
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p3, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2850
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 2851
    sget-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v7, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2852
    invoke-virtual {p0, v2, p4}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2853
    const/4 v0, 0x1

    .line 2865
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2866
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    goto :goto_1

    .line 2857
    :cond_2
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2865
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2866
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move v0, v1

    goto :goto_1

    .line 2828
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2865
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2866
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move v0, v1

    goto :goto_1

    .line 2865
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2866
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    throw v0
.end method

.method b(I)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2576
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3047
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3049
    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    .line 3050
    invoke-interface {p2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3051
    :goto_0
    if-eq p1, p2, :cond_1

    .line 3052
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3053
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->d(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3054
    add-int/lit8 v1, v1, -0x1

    .line 3051
    :goto_1
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object p1

    goto :goto_0

    .line 3056
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 3059
    :cond_1
    iput v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    .line 3060
    return-object v0
.end method

.method b(Ljava/lang/Object;I)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2602
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;I)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 2603
    if-nez v1, :cond_0

    .line 2609
    :goto_0
    return-object v0

    .line 2605
    :cond_0
    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v2}, Lcom/google/common/cache/CustomConcurrentHashMap;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v2, v1}, Lcom/google/common/cache/CustomConcurrentHashMap;->c(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2606
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->i()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2609
    goto :goto_0
.end method

.method b()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c()V

    .line 2367
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2368
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->d()V

    .line 2370
    :cond_1
    return-void
.end method

.method b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2446
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2447
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap;->k:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2448
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2450
    :cond_0
    return-void
.end method

.method b(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3142
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->lock()V

    .line 3144
    :try_start_0
    iget-object v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3145
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 3146
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-object v2, v0

    .line 3148
    :goto_0
    if-eqz v2, :cond_2

    .line 3149
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3150
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_1

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v6, v6, Lcom/google/common/cache/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3152
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v5

    .line 3153
    if-ne v5, p3, :cond_0

    .line 3154
    invoke-virtual {p0, v0, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3155
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3156
    const/4 v0, 0x1

    .line 3164
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3165
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    :goto_1
    return v0

    .line 3164
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3165
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move v0, v1

    goto :goto_1

    .line 3148
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3164
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3165
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move v0, v1

    goto :goto_1

    .line 3164
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3165
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    throw v0
.end method

.method b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2958
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->lock()V

    .line 2960
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->o()V

    .line 2962
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 2963
    iget-object v4, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2964
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2965
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-object v3, v0

    .line 2967
    :goto_0
    if-eqz v3, :cond_4

    .line 2968
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2969
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/cache/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2971
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    .line 2972
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2975
    iget-object v8, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v8, v8, Lcom/google/common/cache/CustomConcurrentHashMap;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p3, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2976
    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 2983
    :goto_1
    iget v8, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 2984
    invoke-virtual {p0, v6, p2, v7, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2985
    invoke-virtual {p0, v0, v3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2986
    iget v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v3, v3, -0x1

    .line 2987
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2988
    iput v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    .line 2989
    sget-object v0, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    .line 2995
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2996
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move v1, v0

    :goto_3
    return v1

    .line 2977
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2978
    sget-object v2, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2995
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2996
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    goto :goto_3

    :cond_2
    move v0, v1

    .line 2989
    goto :goto_2

    .line 2967
    :cond_3
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2995
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2996
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    goto :goto_3

    .line 2995
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2996
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    throw v0
.end method

.method c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2614
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v1, :cond_2

    .line 2615
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Ljava/lang/Object;I)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2616
    if-nez v1, :cond_0

    .line 2630
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    :goto_0
    return-object v0

    .line 2620
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2621
    if-eqz v0, :cond_1

    .line 2622
    invoke-virtual {p0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2630
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    goto :goto_0

    .line 2624
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2630
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    goto :goto_0
.end method

.method c()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2375
    const/4 v0, 0x0

    move v1, v0

    .line 2376
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2378
    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 2379
    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v2, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2380
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2384
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 2383
    goto :goto_0
.end method

.method c(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2459
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->h()V

    .line 2460
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2461
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2464
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap;->k:J

    .line 2467
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2468
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2470
    :cond_0
    return-void

    .line 2464
    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap;->l:J

    goto :goto_0
.end method

.method d()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2389
    const/4 v0, 0x0

    move v1, v0

    .line 2390
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2392
    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    .line 2393
    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v2, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)V

    .line 2394
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2398
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 2397
    goto :goto_0
.end method

.method d(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3064
    sget-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V

    .line 3065
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3066
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3067
    return-void
.end method

.method d(Ljava/lang/Object;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2636
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v1, :cond_2

    .line 2637
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Ljava/lang/Object;I)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2638
    if-nez v1, :cond_0

    .line 2646
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    :goto_0
    return v0

    .line 2641
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2646
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    throw v0
.end method

.method e(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2915
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->lock()V

    .line 2917
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->o()V

    .line 2919
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 2920
    iget-object v4, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2921
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2922
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-object v3, v0

    .line 2924
    :goto_0
    if-eqz v3, :cond_3

    .line 2925
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2926
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/cache/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2928
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v7

    .line 2929
    invoke-interface {v7}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2932
    if-eqz v2, :cond_0

    .line 2933
    sget-object v1, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 2940
    :goto_1
    iget v7, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 2941
    invoke-virtual {p0, v6, p2, v2, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2942
    invoke-virtual {p0, v0, v3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2943
    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 2944
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2945
    iput v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2952
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2953
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move-object v0, v2

    :goto_2
    return-object v0

    .line 2934
    :cond_0
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2935
    sget-object v1, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2952
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2953
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move-object v0, v1

    goto :goto_2

    .line 2924
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2952
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2953
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    move-object v0, v1

    goto :goto_2

    .line 2952
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2953
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    throw v0
.end method

.method e()V
    .locals 1

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->f()V

    .line 2407
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2408
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->g()V

    .line 2410
    :cond_1
    return-void
.end method

.method e(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3196
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3197
    const/4 v0, 0x1

    .line 3199
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)Z

    move-result v0

    goto :goto_0
.end method

.method f(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3218
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3219
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a()V

    .line 3232
    :goto_0
    return-object v0

    .line 3222
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3223
    if-nez v1, :cond_1

    .line 3224
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a()V

    goto :goto_0

    .line 3228
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v2}, Lcom/google/common/cache/CustomConcurrentHashMap;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v2, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->c(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3229
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->i()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3232
    goto :goto_0
.end method

.method f()V
    .locals 1

    .prologue
    .line 2413
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2414
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    .line 2417
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2418
    return-void
.end method

.method h()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2481
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_2

    .line 2486
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2487
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2489
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v1}, Lcom/google/common/cache/CustomConcurrentHashMap;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2490
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2493
    :cond_2
    return-void
.end method

.method i()V
    .locals 1

    .prologue
    .line 2506
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2508
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2510
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2514
    :cond_0
    return-void

    .line 2510
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method j()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2518
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->h()V

    .line 2520
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2532
    :cond_0
    return-void

    .line 2525
    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v1

    .line 2527
    :cond_2
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2528
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v3

    sget-object v4, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2529
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method k()Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->f:I

    if-lt v0, v1, :cond_1

    .line 2559
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->h()V

    .line 2561
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 2562
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2563
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2565
    :cond_0
    const/4 v0, 0x1

    .line 2567
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()V
    .locals 11
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2752
    iget-object v7, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2753
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2754
    const/high16 v0, 0x4000

    if-lt v8, v0, :cond_0

    .line 2817
    :goto_0
    return-void

    .line 2768
    :cond_0
    iget v5, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    .line 2769
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2770
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->d:I

    .line 2771
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2772
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    .line 2775
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 2777
    if-eqz v0, :cond_7

    .line 2778
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v3

    .line 2779
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    and-int v2, v1, v10

    .line 2782
    if-nez v3, :cond_2

    .line 2783
    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v1, v5

    .line 2772
    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 2790
    :goto_3
    if-eqz v3, :cond_3

    .line 2791
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    and-int/2addr v1, v10

    .line 2792
    if-eq v1, v2, :cond_6

    move-object v2, v3

    .line 2790
    :goto_4
    invoke-interface {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    goto :goto_3

    .line 2798
    :cond_3
    invoke-virtual {v9, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    move v1, v5

    .line 2801
    :goto_5
    if-eq v2, v4, :cond_1

    .line 2802
    invoke-virtual {p0, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2803
    invoke-virtual {p0, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->d(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2804
    add-int/lit8 v0, v1, -0x1

    .line 2801
    :goto_6
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto :goto_5

    .line 2806
    :cond_4
    invoke-interface {v2}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    and-int v3, v0, v10

    .line 2807
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 2808
    invoke-virtual {p0, v2, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2809
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_6

    .line 2815
    :cond_5
    iput-object v9, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2816
    iput v5, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    goto :goto_0

    :cond_6
    move v1, v2

    move-object v2, v4

    goto :goto_4

    :cond_7
    move v1, v5

    goto :goto_2
.end method

.method m()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3001
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v0, :cond_4

    .line 3002
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->lock()V

    .line 3004
    :try_start_0
    iget-object v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3005
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap;->m:Ljava/util/Queue;

    sget-object v2, Lcom/google/common/cache/CustomConcurrentHashMap;->r:Ljava/util/Queue;

    if-eq v0, v2, :cond_2

    move v2, v1

    .line 3006
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 3007
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    :goto_1
    if-eqz v0, :cond_1

    .line 3009
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3010
    sget-object v4, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v4}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V

    .line 3007
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 3006
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3015
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3016
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3015
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3018
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e()V

    .line 3019
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3020
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3021
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3023
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    .line 3024
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3026
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3027
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    .line 3030
    :cond_4
    return-void

    .line 3026
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3027
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->p()V

    throw v0
.end method

.method n()V
    .locals 1

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3241
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->q()V

    .line 3243
    :cond_0
    return-void
.end method

.method o()V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3253
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->r()V

    .line 3254
    return-void
.end method

.method p()V
    .locals 0

    .prologue
    .line 3260
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->s()V

    .line 3261
    return-void
.end method

.method q()V
    .locals 0

    .prologue
    .line 3264
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->r()V

    .line 3265
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->s()V

    .line 3266
    return-void
.end method

.method r()V
    .locals 2

    .prologue
    .line 3269
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3271
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b()V

    .line 3272
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->j()V

    .line 3273
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3275
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    .line 3278
    :cond_0
    return-void

    .line 3275
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method s()V
    .locals 1

    .prologue
    .line 3282
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3283
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->j()V

    .line 3285
    :cond_0
    return-void
.end method
