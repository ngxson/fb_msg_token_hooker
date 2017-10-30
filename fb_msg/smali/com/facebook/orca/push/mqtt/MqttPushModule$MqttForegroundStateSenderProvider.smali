.class Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttForegroundStateSenderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MqttPushModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;",
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
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttForegroundStateSenderProvider;->a:Lcom/facebook/orca/push/mqtt/MqttPushModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;Lcom/facebook/orca/push/mqtt/MqttPushModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttForegroundStateSenderProvider;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;
    .locals 5

    .prologue
    .line 108
    new-instance v4, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;

    const-class v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttForegroundStateSenderProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/app/UserActivityManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttForegroundStateSenderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/app/UserActivityManager;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttForegroundStateSenderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-class v3, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttForegroundStateSenderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;-><init>(Landroid/content/Context;Lcom/facebook/app/UserActivityManager;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v4
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttForegroundStateSenderProvider;->a()Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;

    move-result-object v0

    return-object v0
.end method
