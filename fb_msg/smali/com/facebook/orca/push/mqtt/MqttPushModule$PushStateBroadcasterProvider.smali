.class Lcom/facebook/orca/push/mqtt/MqttPushModule$PushStateBroadcasterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MqttPushModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;",
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
    .line 72
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushModule$PushStateBroadcasterProvider;->a:Lcom/facebook/orca/push/mqtt/MqttPushModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;Lcom/facebook/orca/push/mqtt/MqttPushModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/MqttPushModule$PushStateBroadcasterProvider;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushModule$PushStateBroadcasterProvider;->a:Lcom/facebook/orca/push/mqtt/MqttPushModule;

    invoke-static {v1}, Lcom/facebook/orca/push/mqtt/MqttPushModule;->a(Lcom/facebook/orca/push/mqtt/MqttPushModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/MqttPushModule$PushStateBroadcasterProvider;->a()Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    move-result-object v0

    return-object v0
.end method
