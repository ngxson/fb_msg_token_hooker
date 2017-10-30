.class Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;
.super Ljava/lang/Object;
.source "MqttConnectionManager.java"

# interfaces
.implements Lcom/facebook/orca/mqtt/MqttClientCallback;


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final b:Lcom/facebook/orca/mqtt/MqttClient;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/mqtt/MqttClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/orca/mqtt/MqttClient;

    .line 335
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)Lcom/facebook/orca/mqtt/MqttClient;
    .locals 1
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->b:Lcom/facebook/orca/mqtt/MqttClient;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$1;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 389
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/facebook/orca/mqtt/ConnectionFailureReason;)V
    .locals 2
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$2;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method

.method public a(Ljava/lang/String;[BIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-static {p2}, Lcom/facebook/orca/common/util/StringUtil;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/facebook/orca/push/mqtt/MqttPushService;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 395
    return-void
.end method
