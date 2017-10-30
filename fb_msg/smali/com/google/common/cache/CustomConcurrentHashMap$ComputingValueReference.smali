.class final Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;"
        }
    .end annotation
.end field

.field volatile b:Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue",
            "<TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ComputingValueReference.this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/cache/CacheLoader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;

    .line 3380
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->a:Lcom/google/common/cache/CacheLoader;

    .line 3381
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3460
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3465
    return-object p0
.end method

.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation

    .prologue
    .line 3426
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->a:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/CacheLoader;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3427
    if-nez v1, :cond_0

    .line 3428
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedNull;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->a:Lcom/google/common/cache/CacheLoader;

    invoke-direct {v0, v1, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedNull;-><init>(Lcom/google/common/cache/CacheLoader;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 3440
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;)V

    .line 3441
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3430
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedReference;

    invoke-direct {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedReference;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 3432
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3433
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedUncheckedException;

    invoke-direct {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedUncheckedException;-><init>(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 3434
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 3435
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedException;

    invoke-direct {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedException;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    .line 3436
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 3437
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedError;

    invoke-direct {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedError;-><init>(Ljava/lang/Error;)V

    goto :goto_0
.end method

.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3445
    monitor-enter p0

    .line 3446
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;

    if-nez v0, :cond_0

    .line 3447
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;

    .line 3448
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3450
    :cond_0
    monitor-exit p0

    .line 3451
    return-void

    .line 3450
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 3418
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedReference;

    invoke-direct {v0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;)V

    .line 3421
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 3385
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3393
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;

    if-nez v0, :cond_1

    .line 3394
    const/4 v1, 0x0

    .line 3396
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3397
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 3399
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3400
    :catch_0
    move-exception v0

    .line 3401
    const/4 v1, 0x1

    .line 3402
    goto :goto_0

    .line 3404
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3406
    if-eqz v1, :cond_1

    .line 3407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3411
    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputingValueReference;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3404
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3406
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 3407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3455
    const/4 v0, 0x0

    return-object v0
.end method
