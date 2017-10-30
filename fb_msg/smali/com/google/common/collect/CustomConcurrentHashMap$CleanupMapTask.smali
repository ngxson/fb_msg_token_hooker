.class final Lcom/google/common/collect/CustomConcurrentHashMap$CleanupMapTask;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<**>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3418
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$CleanupMapTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap;

    .line 3419
    if-nez v0, :cond_0

    .line 3420
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 3423
    :cond_0
    iget-object v1, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 3424
    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->q()V

    .line 3423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3426
    :cond_1
    return-void
.end method
