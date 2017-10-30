.class public abstract Lcom/facebook/orca/media/MediaCache;
.super Ljava/lang/Object;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KEY:",
        "Lcom/facebook/orca/media/MediaCacheKey;",
        "VA",
        "LUE:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/common/util/Clock;

.field private final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/media/MediaCache",
            "<TKEY;TVA",
            "LUE;",
            ">.InMemoryCachedValue<TKEY;TVA",
            "LUE;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "inMemoryWriteLock for writes to keep in sync with bytesInMemory"
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "TVA",
            "LUE;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Z

.field private final l:I

.field private final m:I

.field private n:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "inMemoryWriteLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/facebook/orca/media/MediaCache;

    sput-object v0, Lcom/facebook/orca/media/MediaCache;->a:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/media/MediaCacheParams;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x80

    const/4 v2, 0x4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/media/MediaCache;->g:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/media/MediaCache;->h:Ljava/lang/Object;

    .line 106
    iput-object p1, p0, Lcom/facebook/orca/media/MediaCache;->b:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/facebook/orca/media/MediaCache;->c:Lcom/facebook/orca/common/util/Clock;

    .line 108
    invoke-virtual {p3}, Lcom/facebook/orca/media/MediaCacheParams;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaCache;->i:Ljava/lang/String;

    .line 109
    invoke-virtual {p3}, Lcom/facebook/orca/media/MediaCacheParams;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaCache;->j:Ljava/lang/String;

    .line 110
    invoke-virtual {p3}, Lcom/facebook/orca/media/MediaCacheParams;->d()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/media/MediaCache;->l:I

    .line 111
    invoke-virtual {p3}, Lcom/facebook/orca/media/MediaCacheParams;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/media/MediaCache;->m:I

    .line 112
    invoke-virtual {p3}, Lcom/facebook/orca/media/MediaCacheParams;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/media/MediaCache;->k:Z

    .line 113
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaCache;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 115
    iget-boolean v0, p0, Lcom/facebook/orca/media/MediaCache;->k:Z

    if-eqz v0, :cond_1

    .line 116
    iget v0, p0, Lcom/facebook/orca/media/MediaCache;->m:I

    iget v1, p0, Lcom/facebook/orca/media/MediaCache;->l:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 117
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/common/collect/MapMaker;->a(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/MapMaker;->c(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaCache;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 121
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/common/collect/MapMaker;->a(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/MapMaker;->c(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->h()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaCache;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 130
    :goto_1
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_1
    iput-object v1, p0, Lcom/facebook/orca/media/MediaCache;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 128
    iput-object v1, p0, Lcom/facebook/orca/media/MediaCache;->e:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/media/MediaCache;)Lcom/facebook/orca/common/util/Clock;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->c:Lcom/facebook/orca/common/util/Clock;

    return-object v0
.end method

.method private a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 474
    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaCacheKey;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/SecureHashUtil;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-direct {p0}, Lcom/facebook/orca/media/MediaCache;->e()Ljava/io/File;

    move-result-object v1

    .line 476
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 489
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 490
    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 491
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic b(Lcom/facebook/orca/media/MediaCache;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->j:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;TVA",
            "LUE;",
            ")V"
        }
    .end annotation

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/facebook/orca/media/MediaCache;->k:Z

    if-nez v0, :cond_0

    .line 517
    sget-object v0, Lcom/facebook/orca/media/MediaCache;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The in-memory cached for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/media/MediaCache;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 552
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/media/MediaCache;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaCacheKey;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;

    invoke-virtual {p0, p2}, Lcom/facebook/orca/media/MediaCache;->a(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;-><init>(Lcom/facebook/orca/media/MediaCache;Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget v0, p0, Lcom/facebook/orca/media/MediaCache;->n:I

    invoke-virtual {p0, p2}, Lcom/facebook/orca/media/MediaCache;->a(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/orca/media/MediaCache;->n:I

    .line 528
    iget v0, p0, Lcom/facebook/orca/media/MediaCache;->n:I

    iget v2, p0, Lcom/facebook/orca/media/MediaCache;->l:I

    if-le v0, v2, :cond_4

    .line 529
    sget-object v0, Lcom/facebook/orca/media/MediaCache;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning out in memory cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/facebook/orca/media/MediaCache;->n:I

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/media/MediaCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " values"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 533
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;

    .line 536
    invoke-static {v0}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->b(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->a(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;J)J

    goto :goto_1

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 538
    :cond_1
    :try_start_1
    new-instance v0, Lcom/facebook/orca/media/MediaCache$ExpirationComparator;

    invoke-direct {v0, p0}, Lcom/facebook/orca/media/MediaCache$ExpirationComparator;-><init>(Lcom/facebook/orca/media/MediaCache;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 540
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;

    .line 541
    iget-object v3, p0, Lcom/facebook/orca/media/MediaCache;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->c(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)Lcom/facebook/orca/media/MediaCacheKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/media/MediaCacheKey;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->a(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v3, p0, Lcom/facebook/orca/media/MediaCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->c(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)Lcom/facebook/orca/media/MediaCacheKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/media/MediaCacheKey;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget v3, p0, Lcom/facebook/orca/media/MediaCache;->n:I

    invoke-static {v0}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->d(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)I

    move-result v0

    sub-int v0, v3, v0

    iput v0, p0, Lcom/facebook/orca/media/MediaCache;->n:I

    .line 544
    iget v0, p0, Lcom/facebook/orca/media/MediaCache;->n:I

    iget v3, p0, Lcom/facebook/orca/media/MediaCache;->m:I

    if-ge v0, v3, :cond_2

    .line 548
    :cond_3
    sget-object v0, Lcom/facebook/orca/media/MediaCache;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished cleaning out in memory cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/facebook/orca/media/MediaCache;->n:I

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/media/MediaCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " values"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 551
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private e()Ljava/io/File;
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 481
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/orca/media/MediaCache;->i:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 485
    :cond_0
    return-object v1
.end method

.method private i(Lcom/facebook/orca/media/MediaCacheKey;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)V"
        }
    .end annotation

    .prologue
    .line 448
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/media/MediaCache;->h(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/io/File;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/facebook/orca/media/MediaCache;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v1

    .line 450
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0x1b7740

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 452
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVA",
            "LUE;",
            ")I"
        }
    .end annotation
.end method

.method public a(Lcom/facebook/orca/media/MediaCacheKey;)Landroid/net/Uri;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/media/MediaCache;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/orca/media/MediaCache;->g(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/io/File;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaCache;->i(Lcom/facebook/orca/media/MediaCacheKey;)V

    .line 146
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    monitor-exit v2

    .line 153
    :goto_0
    return-object v0

    .line 148
    :cond_0
    monitor-exit v2

    move-object v0, v1

    .line 150
    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 151
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 153
    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/io/InputStream;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v2, p0, Lcom/facebook/orca/media/MediaCache;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 349
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/media/MediaCache;->g(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/io/File;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 351
    new-instance v0, Lcom/facebook/orca/media/MediaCache$MyInputSupplier;

    const/4 v3, 0x0

    invoke-direct {v0, p2, v3}, Lcom/facebook/orca/media/MediaCache$MyInputSupplier;-><init>(Ljava/io/InputStream;Lcom/facebook/orca/media/MediaCache$1;)V

    invoke-static {v0, v1}, Lcom/google/common/io/Files;->a(Lcom/google/common/io/InputSupplier;Ljava/io/File;)V

    .line 352
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaCache;->i(Lcom/facebook/orca/media/MediaCacheKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 355
    :catch_0
    move-exception v0

    .line 357
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 361
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    throw v0

    .line 364
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;)Ljava/io/File;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;TVA",
            "LUE;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/media/MediaCache;->b(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;)V

    .line 299
    iget-object v3, p0, Lcom/facebook/orca/media/MediaCache;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 303
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/media/MediaCache;->g(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 304
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 305
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/orca/media/MediaCache;->a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;Ljava/io/File;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaCache;->i(Lcom/facebook/orca/media/MediaCacheKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 318
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    :goto_0
    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 311
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    .line 318
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    throw v0

    .line 322
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 312
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 314
    :goto_3
    :try_start_5
    sget-object v4, Lcom/facebook/orca/media/MediaCache;->a:Ljava/lang/Class;

    const-string v5, "IOException"

    invoke-static {v4, v5, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 316
    if-eqz v2, :cond_1

    .line 318
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 321
    :cond_1
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v1

    goto :goto_0

    .line 316
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 312
    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    .line 309
    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method protected abstract a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/io/File;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;",
            "Ljava/io/File;",
            ")TVA",
            "LUE;"
        }
    .end annotation
.end method

.method public a()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-direct {p0}, Lcom/facebook/orca/media/MediaCache;->e()Ljava/io/File;

    move-result-object v2

    .line 408
    new-instance v1, Lcom/facebook/orca/media/MediaCache$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/media/MediaCache$1;-><init>(Lcom/facebook/orca/media/MediaCache;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 414
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 415
    iget-object v6, p0, Lcom/facebook/orca/media/MediaCache;->g:Ljava/lang/Object;

    monitor-enter v6

    .line 416
    :try_start_0
    const-string v7, ".lru"

    invoke-direct {p0, v5, v7}, Lcom/facebook/orca/media/MediaCache;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 417
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 419
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 424
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v6

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 427
    :cond_1
    new-instance v1, Lcom/facebook/orca/media/MediaCache$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/media/MediaCache$2;-><init>(Lcom/facebook/orca/media/MediaCache;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 434
    iget-object v2, p0, Lcom/facebook/orca/media/MediaCache;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v2}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v2

    .line 435
    array-length v4, v1

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v5, v1, v0

    .line 436
    iget-object v6, p0, Lcom/facebook/orca/media/MediaCache;->g:Ljava/lang/Object;

    monitor-enter v6

    .line 437
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long v7, v2, v7

    const-wide/32 v9, 0x19bfcc00

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 438
    iget-object v7, p0, Lcom/facebook/orca/media/MediaCache;->j:Ljava/lang/String;

    invoke-direct {p0, v5, v7}, Lcom/facebook/orca/media/MediaCache;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 439
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 440
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 442
    :cond_2
    monitor-exit v6

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 442
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 420
    :catch_0
    move-exception v5

    goto :goto_1

    .line 444
    :cond_3
    return-void
.end method

.method public a(Lcom/facebook/orca/media/MediaCacheKey;J)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;J)V"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaCacheKey;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/media/MediaCache;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v2}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-void
.end method

.method protected abstract a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;TVA",
            "LUE;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation
.end method

.method public b(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)TVA",
            "LUE;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-boolean v0, p0, Lcom/facebook/orca/media/MediaCache;->k:Z

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/facebook/orca/media/MediaCache;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The in-memory cached for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/media/MediaCache;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is disabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, v1

    .line 182
    :goto_0
    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaCacheKey;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;

    .line 170
    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->a()V

    .line 172
    invoke-static {v0}, Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;->a(Lcom/facebook/orca/media/MediaCache$InMemoryCachedValue;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaCacheKey;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_2

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/media/MediaCache;->b(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 182
    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/facebook/orca/media/MediaCache;->k:Z

    if-nez v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/media/MediaCache;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 500
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/media/MediaCache;->n:I

    .line 502
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/facebook/orca/media/MediaCache;->b()V

    .line 508
    invoke-direct {p0}, Lcom/facebook/orca/media/MediaCache;->e()Ljava/io/File;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 510
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 511
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    return-void
.end method

.method public c(Lcom/facebook/orca/media/MediaCacheKey;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 199
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/media/MediaCache;->d(Lcom/facebook/orca/media/MediaCacheKey;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/facebook/orca/media/MediaCache;->g(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 201
    :cond_1
    :goto_0
    return v0

    .line 200
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/facebook/orca/media/MediaCache;->n:I

    return v0
.end method

.method d(Lcom/facebook/orca/media/MediaCacheKey;)Z
    .locals 2
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)Z"
        }
    .end annotation

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/facebook/orca/media/MediaCache;->k:Z

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaCacheKey;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public e(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)TVA",
            "LUE;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0, p1}, Lcom/facebook/orca/media/MediaCache;->b(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaCache;->i(Lcom/facebook/orca/media/MediaCacheKey;)V

    .line 263
    :goto_0
    return-object v0

    .line 241
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/media/MediaCache;->g(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/io/File;

    move-result-object v0

    .line 242
    iget-object v2, p0, Lcom/facebook/orca/media/MediaCache;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaCache;->i(Lcom/facebook/orca/media/MediaCacheKey;)V

    .line 246
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/media/MediaCache;->a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_2

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/media/MediaCache;->b(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 261
    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 262
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 263
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 258
    goto :goto_0
.end method

.method public f(Lcom/facebook/orca/media/MediaCacheKey;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaCacheKey;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 276
    if-nez v0, :cond_0

    move v0, v1

    .line 283
    :goto_0
    return v0

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/facebook/orca/media/MediaCache;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v2}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 280
    const/4 v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/media/MediaCache;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v1

    .line 283
    goto :goto_0
.end method

.method g(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/io/File;
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/facebook/orca/media/MediaCache;->j:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/media/MediaCache;->a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method h(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/io/File;
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 469
    const-string v0, ".lru"

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/media/MediaCache;->a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
