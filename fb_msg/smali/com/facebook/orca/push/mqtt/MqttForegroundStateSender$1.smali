.class Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender$1;
.super Ljava/lang/Object;
.source "MqttForegroundStateSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender$1;->a:Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender$1;->a:Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->a(Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;Z)Z

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender$1;->a:Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->a()V

    .line 48
    return-void
.end method
