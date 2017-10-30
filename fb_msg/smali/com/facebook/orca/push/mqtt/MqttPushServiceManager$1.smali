.class Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$1;
.super Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;
.source "MqttPushServiceManager.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$1;->a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 80
    const-string v0, "com.facebook.app.USER_MAYBE_BECAME_ACTIVE_OR_INACTIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$1;->a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v0, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "event"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/PushStateEvent;->fromValue(I)Lcom/facebook/orca/push/mqtt/PushStateEvent;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$1;->a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-static {v1, v0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;Lcom/facebook/orca/push/mqtt/PushStateEvent;)V

    goto :goto_0
.end method
