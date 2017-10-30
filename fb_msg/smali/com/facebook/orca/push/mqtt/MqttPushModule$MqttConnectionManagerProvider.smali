.class Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttConnectionManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MqttPushModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/mqtt/MqttConnectionManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/MqttPushModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttConnectionManagerProvider;->a:Lcom/facebook/orca/push/mqtt/MqttPushModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;Lcom/facebook/orca/push/mqtt/MqttPushModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttConnectionManagerProvider;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/mqtt/MqttConnectionManager;
    .locals 4

    .prologue
    .line 65
    new-instance v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-class v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttConnectionManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    const-class v1, Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttConnectionManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/analytics/AnalyticCounters;

    const-class v3, Lcom/facebook/orca/mqtt/MqttClient;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttConnectionManagerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;-><init>(Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/analytics/AnalyticCounters;Ljavax/inject/Provider;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttConnectionManagerProvider;->a()Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    move-result-object v0

    return-object v0
.end method
