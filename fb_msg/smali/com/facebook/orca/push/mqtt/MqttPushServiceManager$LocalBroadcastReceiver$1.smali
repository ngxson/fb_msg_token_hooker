.class Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "MqttPushServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

.field final synthetic b:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver;Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver$1;->b:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver;

    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver$1;->a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver$1;->a:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;)V

    .line 230
    return-void
.end method
