.class Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/MqttPushManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1604
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1604
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/MqttPushManager;
    .locals 5

    .prologue
    .line 1608
    new-instance v2, Lcom/facebook/orca/push/MqttPushManager;

    const-class v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    const-class v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    new-instance v3, Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider$1;

    invoke-direct {v3, p0}, Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider$1;-><init>(Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider;)V

    const-class v4, Lcom/facebook/orca/push/mqtt/MqttTopicList;

    invoke-static {v3, v4}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider;->a(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/orca/push/MqttPushManager;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Ljavax/inject/Provider;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1604
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$MqttPushTransportProvider;->a()Lcom/facebook/orca/push/MqttPushManager;

    move-result-object v0

    return-object v0
.end method
