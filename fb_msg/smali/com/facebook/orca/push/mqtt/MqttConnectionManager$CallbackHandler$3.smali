.class Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;
.super Ljava/lang/Object;
.source "MqttConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/facebook/orca/mqtt/MqttClient;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;

    invoke-static {v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a(Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;)Lcom/facebook/orca/mqtt/MqttClient;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler$3;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;

    iget-object v0, v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f()V

    .line 370
    :cond_0
    return-void
.end method
