.class Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "OrcaServiceOperationFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/ops/OrcaServiceOperationFactory$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Cannot call get on main thread for unfinished operation"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->b(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_2

    :goto_2
    const-string v0, "Cannot call get on the operation\'s handler thread for unfinished operation"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 143
    goto :goto_1

    :cond_2
    move v1, v2

    .line 146
    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;->c()V

    .line 132
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;->c()V

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
