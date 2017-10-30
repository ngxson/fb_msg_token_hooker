.class public Lcom/facebook/orca/common/async/KeyedExecutor;
.super Ljava/lang/Object;
.source "KeyedExecutor.java"


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
.field private final b:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/facebook/orca/common/async/KeyedExecutor$Task;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this for writes"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/facebook/orca/common/async/KeyedExecutor;

    sput-object v0, Lcom/facebook/orca/common/async/KeyedExecutor;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedExecutor;->c:Ljava/util/Map;

    .line 95
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->h()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedExecutor;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 100
    invoke-static {p1}, Lcom/google/common/util/concurrent/MoreExecutors;->a(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedExecutor;->b:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 101
    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/facebook/orca/common/async/KeyedExecutor;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/facebook/orca/common/async/KeyedExecutor$Task;Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p2, Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedExecutor;->d:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p1, Lcom/facebook/orca/common/async/KeyedExecutor$Task;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/async/KeyedExecutor;->a(Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;)V
    .locals 3
    .parameter

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;->c:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedExecutor;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :cond_1
    :try_start_2
    iget-object v0, p1, Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/KeyedExecutor$Task;

    .line 144
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedExecutor;->b:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/ListeningExecutorService;->a(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p1, Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 145
    iget-object v1, p1, Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/facebook/orca/common/async/KeyedExecutor$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/orca/common/async/KeyedExecutor$1;-><init>(Lcom/facebook/orca/common/async/KeyedExecutor;Lcom/facebook/orca/common/async/KeyedExecutor$Task;Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/common/async/KeyedExecutor;Lcom/facebook/orca/common/async/KeyedExecutor$Task;Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/async/KeyedExecutor;->a(Lcom/facebook/orca/common/async/KeyedExecutor$Task;Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedExecutor;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/KeyedExecutor$Task;

    .line 161
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/common/async/KeyedExecutor$Task;->a(Lcom/facebook/orca/common/async/KeyedExecutor$Task;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedExecutor;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;

    .line 118
    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;

    invoke-direct {v0, p1}, Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;-><init>(Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedExecutor;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedExecutor;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/facebook/orca/common/async/KeyedExecutor;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already contains a callable for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 127
    :cond_0
    new-instance v0, Lcom/facebook/orca/common/async/KeyedExecutor$Task;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/async/KeyedExecutor$Task;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/String;Lcom/facebook/orca/common/async/KeyedExecutor$1;)V

    .line 128
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedExecutor;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, v6, Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-direct {p0, v6}, Lcom/facebook/orca/common/async/KeyedExecutor;->a(Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;)V

    .line 131
    invoke-static {v0}, Lcom/facebook/orca/common/async/KeyedExecutor$Task;->a(Lcom/facebook/orca/common/async/KeyedExecutor$Task;)Lcom/google/common/util/concurrent/ListenableFutureTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v6, v0

    goto :goto_0
.end method
