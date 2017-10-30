.class Lcom/google/common/util/concurrent/Futures$ListFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;Z",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1390
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 1391
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->a:Lcom/google/common/collect/ImmutableList;

    .line 1392
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->d:Ljava/util/List;

    .line 1393
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->b:Z

    .line 1394
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1396
    invoke-direct {p0, p3}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/util/concurrent/Executor;)V

    .line 1397
    return-void
.end method

.method private a(ILjava/util/concurrent/Future;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future",
            "<+TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1450
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->d:Ljava/util/List;

    .line 1451
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_2

    .line 1455
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->b:Z

    const-string v1, "Future was done before all dependencies completed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1497
    :cond_1
    :goto_0
    return-void

    .line 1461
    :cond_2
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    const-string v4, "Tried to set value from future which is not done"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1463
    invoke-static {p2}, Lcom/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 1486
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1487
    if-ltz v2, :cond_3

    :goto_1
    const-string v1, "Less than 0 remaining futures"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1488
    if-nez v2, :cond_1

    .line 1489
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->d:Ljava/util/List;

    .line 1490
    if-eqz v0, :cond_4

    .line 1491
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1487
    goto :goto_1

    .line 1493
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 1464
    :catch_0
    move-exception v2

    .line 1465
    :try_start_1
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->b:Z

    if-eqz v2, :cond_5

    .line 1470
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/Futures$ListFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1486
    :cond_5
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1487
    if-ltz v2, :cond_6

    :goto_2
    const-string v1, "Less than 0 remaining futures"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1488
    if-nez v2, :cond_1

    .line 1489
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->d:Ljava/util/List;

    .line 1490
    if-eqz v0, :cond_7

    .line 1491
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1487
    goto :goto_2

    .line 1493
    :cond_7
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 1472
    :catch_1
    move-exception v2

    .line 1473
    :try_start_2
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->b:Z

    if-eqz v3, :cond_8

    .line 1476
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1486
    :cond_8
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1487
    if-ltz v2, :cond_9

    :goto_3
    const-string v1, "Less than 0 remaining futures"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1488
    if-nez v2, :cond_1

    .line 1489
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->d:Ljava/util/List;

    .line 1490
    if-eqz v0, :cond_a

    .line 1491
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 1487
    goto :goto_3

    .line 1493
    :cond_a
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1478
    :catch_2
    move-exception v2

    .line 1479
    :try_start_3
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->b:Z

    if-eqz v3, :cond_b

    .line 1480
    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1486
    :cond_b
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1487
    if-ltz v2, :cond_c

    :goto_4
    const-string v1, "Less than 0 remaining futures"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1488
    if-nez v2, :cond_1

    .line 1489
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->d:Ljava/util/List;

    .line 1490
    if-eqz v0, :cond_d

    .line 1491
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 1487
    goto :goto_4

    .line 1493
    :cond_d
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1482
    :catch_3
    move-exception v2

    .line 1484
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1486
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 1487
    if-ltz v2, :cond_e

    :goto_5
    const-string v1, "Less than 0 remaining futures"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1488
    if-nez v2, :cond_1

    .line 1489
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->d:Ljava/util/List;

    .line 1490
    if-eqz v0, :cond_f

    .line 1491
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    move v0, v1

    .line 1487
    goto :goto_5

    .line 1493
    :cond_f
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 1486
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 1487
    if-ltz v3, :cond_11

    :goto_6
    const-string v1, "Less than 0 remaining futures"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1488
    if-nez v3, :cond_10

    .line 1489
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->d:Ljava/util/List;

    .line 1490
    if-eqz v0, :cond_12

    .line 1491
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/lang/Object;)Z

    .line 1496
    :cond_10
    :goto_7
    throw v2

    :cond_11
    move v0, v1

    .line 1487
    goto :goto_6

    .line 1493
    :cond_12
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_7
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/Futures$ListFuture;ILjava/util/concurrent/Future;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1373
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/Executor;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1401
    new-instance v0, Lcom/google/common/util/concurrent/Futures$ListFuture$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$ListFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$ListFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1416
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->a(Ljava/lang/Object;)Z

    .line 1444
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1422
    :goto_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1423
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->d:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1433
    :cond_2
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->a:Lcom/google/common/collect/ImmutableList;

    .line 1434
    :goto_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1435
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1437
    new-instance v3, Lcom/google/common/util/concurrent/Futures$ListFuture$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture$2;-><init>(Lcom/google/common/util/concurrent/Futures$ListFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v0, v3, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private d()V
    .locals 3

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->a:Lcom/google/common/collect/ImmutableList;

    .line 1515
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1516
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1520
    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1522
    :try_start_0
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1523
    :catch_0
    move-exception v0

    .line 1524
    throw v0

    .line 1525
    :catch_1
    move-exception v0

    .line 1526
    throw v0

    .line 1527
    :catch_2
    move-exception v2

    .line 1529
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture;->b:Z

    if-eqz v2, :cond_1

    .line 1538
    :cond_2
    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1501
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->d()V

    .line 1505
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
