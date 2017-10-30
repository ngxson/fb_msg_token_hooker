.class public Lcom/facebook/orca/cache/ThreadsCache;
.super Ljava/lang/Object;
.source "ThreadsCache.java"


# annotations
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
.field private final b:Lcom/facebook/orca/auth/AuthDataStore;

.field private final c:Lcom/facebook/orca/threads/MessagesCollectionMerger;

.field private final d:Lcom/facebook/orca/threads/ThreadSummaryStitching;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/threads/FolderName;",
            "Lcom/facebook/orca/cache/FolderCacheData;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/cache/ThreadLocalState;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/facebook/orca/cache/ThreadsCache;

    sput-object v0, Lcom/facebook/orca/cache/ThreadsCache;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/threads/MessagesCollectionMerger;Lcom/facebook/orca/threads/ThreadSummaryStitching;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    .line 69
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->j:Ljava/util/Map;

    .line 75
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadsCache;->b:Lcom/facebook/orca/auth/AuthDataStore;

    .line 76
    iput-object p2, p0, Lcom/facebook/orca/cache/ThreadsCache;->c:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    .line 77
    iput-object p3, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Lcom/facebook/orca/threads/ThreadSummaryStitching;

    .line 78
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    .line 79
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    .line 80
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    .line 81
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    .line 82
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 476
    if-nez p2, :cond_0

    .line 477
    invoke-static {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object p2

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->c:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/Set;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/orca/threads/MessagesCollection;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 329
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 330
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 334
    :cond_1
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v3, 0x5

    .line 488
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    const-string v1, "Merged messages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v1, "  New Message:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-static {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 497
    const-string v1, "  Recent Messages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-direct {p0, v0, p2, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 500
    const-string v1, "  Loaded Messages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-direct {p0, v0, p3, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 503
    const-string v1, "  Result:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const/16 v1, 0x8

    invoke-direct {p0, v0, p4, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 505
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    sget-object v1, Lcom/facebook/orca/cache/ThreadsCache;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 522
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    :cond_0
    const-string v0, "    none\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_1
    return-void

    .line 525
    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    invoke-virtual {p2}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 526
    invoke-virtual {p2, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 527
    const-string v2, "   "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 573
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 574
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 576
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 580
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 277
    if-nez p2, :cond_1

    if-nez p1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    .line 280
    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->p()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 6
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 469
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-direct {p0, v2}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v3

    .line 435
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 436
    if-nez v0, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->e()V

    .line 438
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    goto :goto_0

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/MessagesCollection;

    .line 444
    if-nez v1, :cond_5

    .line 445
    new-instance v1, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 446
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->e()V

    .line 447
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    .line 455
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/facebook/orca/cache/ThreadsCache;->c:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {v4, p2, v1}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->c(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 457
    :cond_3
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->e()V

    .line 458
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    .line 461
    :cond_4
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 462
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 463
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->d:Lcom/facebook/orca/threads/ThreadSummaryStitching;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/orca/threads/ThreadSummaryStitching;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 465
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 466
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 448
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->v()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 449
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->e()V

    .line 450
    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadLocalState;->b()V

    goto :goto_1
.end method

.method private declared-synchronized b(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 3
    .parameter

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/FolderCacheData;

    .line 190
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/FolderCacheData;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/FolderCacheData;->a(Lcom/facebook/orca/threads/ThreadSummary;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 194
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b(Lcom/facebook/orca/threads/ThreadSummary;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 221
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p2, p3}, Lcom/facebook/orca/cache/ThreadLocalState;->c(J)V

    .line 223
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 2
    .parameter

    .prologue
    .line 510
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    const-string v1, "  Messages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const/16 v1, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 517
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    sget-object v1, Lcom/facebook/orca/cache/ThreadsCache;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized c(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->e(Lcom/facebook/orca/threads/ThreadSummary;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 5
    .parameter

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 292
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/cache/ThreadLocalState;->a(J)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/cache/ThreadLocalState;->a(J)V

    goto :goto_0
.end method

.method private declared-synchronized e()V
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/FolderCacheData;

    .line 103
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/FolderCacheData;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private e(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 5
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 585
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v1

    .line 586
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 587
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 589
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_0

    .line 592
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ThreadLocalState;->a(Ljava/util/Collection;)V

    .line 597
    return-void
.end method

.method private declared-synchronized f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;
    .locals 2
    .parameter

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/FolderCacheData;

    .line 86
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/facebook/orca/cache/FolderCacheData;

    invoke-direct {v0, p1}, Lcom/facebook/orca/cache/FolderCacheData;-><init>(Lcom/facebook/orca/threads/FolderName;)V

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 698
    new-instance v0, Lcom/facebook/orca/cache/NameComputer;

    invoke-direct {v0}, Lcom/facebook/orca/cache/NameComputer;-><init>()V

    .line 699
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 700
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->j:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/NameComputer;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 701
    return-void
.end method

.method private i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;
    .locals 2
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadLocalState;

    .line 535
    if-nez v0, :cond_0

    .line 536
    new-instance v0, Lcom/facebook/orca/cache/ThreadLocalState;

    invoke-direct {v0, p1}, Lcom/facebook/orca/cache/ThreadLocalState;-><init>(Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_0
    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 3
    .parameter

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 126
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->h()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1
    .parameter

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 680
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 682
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->j()Ljava/lang/String;

    move-result-object v0

    .line 684
    :goto_0
    return-object v0

    .line 682
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 684
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 601
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadLocalState;->a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method declared-synchronized a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/FolderCounts;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/orca/cache/FolderCacheData;->a(Lcom/facebook/orca/threads/FolderCounts;)V

    .line 420
    return-void
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v1

    .line 180
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 181
    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/FolderCacheData;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 182
    invoke-direct {p0, v0, p3, p4}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 184
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/FolderCacheData;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    monitor-exit p0

    return-void
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;JZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 147
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lcom/facebook/orca/cache/FolderCacheData;->g()V

    .line 149
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 150
    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/FolderCacheData;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 151
    invoke-direct {p0, v0, p3, p4}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/FolderCacheData;->b(Z)V

    .line 154
    if-nez p5, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/FolderCacheData;->c(Z)V

    .line 155
    invoke-virtual {v2, p3, p4}, Lcom/facebook/orca/cache/FolderCacheData;->a(J)V

    .line 157
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 158
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 159
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->e(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_2

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadLocalState;

    .line 163
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->c()V

    goto :goto_3

    .line 165
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/FolderCacheData;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    monitor-exit p0

    return-void
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 2
    .parameter

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 267
    if-nez v0, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->e()V

    .line 273
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 270
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/ThreadSummary;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 210
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ThreadSummary;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/compose/MessageDraft;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    .line 199
    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/compose/MessageDraft;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->x()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 616
    invoke-virtual {v0, p2, p3}, Lcom/facebook/orca/cache/ThreadLocalState;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    monitor-exit p0

    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;Landroid/location/Location;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 633
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/orca/cache/ThreadLocalState;->a(Landroid/location/Location;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    monitor-exit p0

    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    if-nez v0, :cond_0

    .line 324
    :goto_0
    monitor-exit p0

    return-void

    .line 323
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/Set;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->b:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 653
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 657
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    iget-object v3, p0, Lcom/facebook/orca/cache/ThreadsCache;->b:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v3, v0}, Lcom/facebook/orca/auth/AuthDataStore;->b(Lcom/facebook/orca/users/User;)V

    .line 660
    :cond_0
    iget-object v3, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 662
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/cache/ThreadsCache;->f()V

    .line 666
    return-void
.end method

.method a(Lcom/facebook/orca/threads/FolderName;)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->c()Z

    move-result v0

    return v0
.end method

.method declared-synchronized a(Ljava/lang/String;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->d(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :goto_0
    monitor-exit p0

    return v2

    .line 377
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;

    .line 378
    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 379
    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->f()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-gt p2, v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1
    .parameter

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;
    .locals 1
    .parameter

    .prologue
    .line 673
    if-nez p1, :cond_0

    .line 674
    const/4 v0, 0x0

    .line 676
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    goto :goto_0
.end method

.method b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 689
    const/4 v0, 0x0

    .line 690
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 693
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/FolderCacheData;

    .line 547
    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 549
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 550
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 551
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 552
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 553
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 554
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    monitor-exit p0

    return-void
.end method

.method declared-synchronized b(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 2
    .parameter

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :goto_0
    monitor-exit p0

    return-void

    .line 390
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lcom/facebook/orca/threads/FolderName;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->d()Z

    move-result v0

    return v0
.end method

.method declared-synchronized c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 3
    .parameter

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->a()Lcom/facebook/common/collect/MapWithSecondaryOrdering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/common/collect/MapWithSecondaryOrdering;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->b()Z

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Map;)V

    .line 568
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Map;)V

    .line 569
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/FolderCacheData;

    .line 308
    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/FolderCacheData;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 310
    :cond_0
    monitor-exit p0

    return-void
.end method

.method d(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;
    .locals 1
    .parameter

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->f()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized d(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadLocalState;

    .line 349
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 362
    :goto_0
    monitor-exit p0

    return v0

    .line 352
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadsCache;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/MessagesCollection;

    .line 353
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadsCache;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadSummary;

    .line 354
    if-nez v0, :cond_1

    move v0, v2

    .line 355
    goto :goto_0

    .line 357
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    .line 359
    goto :goto_0

    .line 362
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e(Lcom/facebook/orca/threads/FolderName;)J
    .locals 2
    .parameter

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/cache/FolderCacheData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/cache/FolderCacheData;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized e(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 610
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->g()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->f()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 643
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->e()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized h(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 647
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadLocalState;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadLocalState;->d()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
