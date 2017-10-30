.class Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender$2;
.super Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;
.source "MqttForegroundStateSender.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender$2;->a:Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;

    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    const-string v0, "com.facebook.app.USER_MAYBE_BECAME_ACTIVE_OR_INACTIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender$2;->a:Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->a()V

    .line 72
    :cond_0
    return-void
.end method
