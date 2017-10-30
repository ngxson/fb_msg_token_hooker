.class Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaPushModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/OrcaPushModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;->a:Lcom/facebook/orca/push/mqtt/OrcaPushModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;Lcom/facebook/orca/push/mqtt/OrcaPushModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;
    .locals 9

    .prologue
    .line 125
    new-instance v0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;

    new-instance v1, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider$1;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;)V

    invoke-static {v1}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-class v2, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/push/common/PushDeserialization;

    const-class v3, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    const-class v4, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/presence/PresenceManager;

    const-class v5, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-class v6, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    const-class v7, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-class v8, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;-><init>(Ljava/util/Set;Lcom/facebook/orca/push/common/PushDeserialization;Lcom/facebook/orca/cache/DeliveredReadReceiptManager;Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/push/c2dm/C2DMRegistrar;Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;->a()Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;

    move-result-object v0

    return-object v0
.end method
