.class final Lcom/google/common/cache/CacheBuilder$NullCache;
.super Lcom/google/common/cache/AbstractCache;
.source "CacheBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/AbstractCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/cache/CacheBuilder$NullConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheBuilder$NullConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/cache/AbstractCache$StatsCounter;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/base/Supplier;Lcom/google/common/cache/CacheLoader;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheBuilder",
            "<-TK;-TV;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/google/common/cache/AbstractCache;-><init>()V

    .line 738
    new-instance v0, Lcom/google/common/cache/CacheBuilder$NullConcurrentMap;

    invoke-direct {v0, p1}, Lcom/google/common/cache/CacheBuilder$NullConcurrentMap;-><init>(Lcom/google/common/cache/CacheBuilder;)V

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder$NullCache;->a:Lcom/google/common/cache/CacheBuilder$NullConcurrentMap;

    .line 739
    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder$NullCache;->c:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 740
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CacheLoader;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder$NullCache;->b:Lcom/google/common/cache/CacheLoader;

    .line 741
    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 751
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 753
    const/4 v3, 0x0

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder$NullCache;->b:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/CacheLoader;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 763
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 764
    if-nez v0, :cond_0

    .line 765
    iget-object v3, p0, Lcom/google/common/cache/CacheBuilder$NullCache;->c:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->b(J)V

    .line 769
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder$NullCache;->c:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->c()V

    .line 771
    if-nez v0, :cond_2

    .line 772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 767
    :cond_0
    iget-object v3, p0, Lcom/google/common/cache/CacheBuilder$NullCache;->c:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->a(J)V

    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    :try_start_1
    new-instance v4, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v4, v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v1, v4, v1

    .line 764
    if-nez v3, :cond_1

    .line 765
    iget-object v3, p0, Lcom/google/common/cache/CacheBuilder$NullCache;->c:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->b(J)V

    .line 769
    :goto_1
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder$NullCache;->c:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->c()V

    .line 770
    throw v0

    .line 758
    :catch_1
    move-exception v0

    .line 759
    :try_start_2
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v4, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 760
    :catch_2
    move-exception v0

    .line 761
    new-instance v4, Lcom/google/common/util/concurrent/ExecutionError;

    invoke-direct {v4, v0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 767
    :cond_1
    iget-object v3, p0, Lcom/google/common/cache/CacheBuilder$NullCache;->c:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->a(J)V

    goto :goto_1

    .line 774
    :cond_2
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 745
    invoke-direct {p0, p1}, Lcom/google/common/cache/CacheBuilder$NullCache;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 746
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder$NullCache;->a:Lcom/google/common/cache/CacheBuilder$NullConcurrentMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/CacheBuilder$NullConcurrentMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 747
    return-object v0
.end method
