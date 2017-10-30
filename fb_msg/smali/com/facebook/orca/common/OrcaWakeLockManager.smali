.class public Lcom/facebook/orca/common/OrcaWakeLockManager;
.super Ljava/lang/Object;
.source "OrcaWakeLockManager.java"


# instance fields
.field private final a:Landroid/os/PowerManager;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;",
            "Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>(Landroid/os/PowerManager;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager;->b:Ljava/util/Map;

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager;->c:J

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/common/OrcaWakeLockManager;->a:Landroid/os/PowerManager;

    .line 25
    return-void
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/String;)Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager;->a:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-direct {v1, p0, v0, p2}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;-><init>(Lcom/facebook/orca/common/OrcaWakeLockManager;Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/facebook/orca/common/OrcaWakeLockManager;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-object v1

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
