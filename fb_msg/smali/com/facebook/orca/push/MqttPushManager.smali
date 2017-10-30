.class public Lcom/facebook/orca/push/MqttPushManager;
.super Ljava/lang/Object;
.source "MqttPushManager.java"

# interfaces
.implements Lcom/facebook/orca/push/PushManager;


# instance fields
.field private final a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

.field private final b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/mqtt/IProvideSubscribeTopics;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;",
            "Lcom/facebook/orca/push/mqtt/MqttConnectionManager;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/mqtt/IProvideSubscribeTopics;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/push/MqttPushManager;->a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    .line 30
    iput-object p2, p0, Lcom/facebook/orca/push/MqttPushManager;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 31
    iput-object p3, p0, Lcom/facebook/orca/push/MqttPushManager;->c:Ljavax/inject/Provider;

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 42
    iget-object v0, p0, Lcom/facebook/orca/push/MqttPushManager;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/IProvideSubscribeTopics;

    .line 43
    invoke-interface {v0}, Lcom/facebook/orca/push/mqtt/IProvideSubscribeTopics;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/MqttPushManager;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/util/Set;)V

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/push/MqttPushManager;->a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(Z)V

    .line 47
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/push/MqttPushManager;->a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(Z)V

    .line 52
    return-void
.end method
