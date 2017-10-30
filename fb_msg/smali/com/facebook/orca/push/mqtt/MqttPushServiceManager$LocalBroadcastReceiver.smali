.class public Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MqttPushServiceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-static {}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "LocalBroadcastReceiver.onReceive"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 223
    invoke-static {p1}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 224
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 225
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    .line 226
    new-instance v1, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v2, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver$1;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver;Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;)V

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 233
    return-void
.end method
