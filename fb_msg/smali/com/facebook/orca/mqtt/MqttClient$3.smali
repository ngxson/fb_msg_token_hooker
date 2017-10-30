.class Lcom/facebook/orca/mqtt/MqttClient$3;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/facebook/orca/mqtt/MqttClient;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient$3;->b:Lcom/facebook/orca/mqtt/MqttClient;

    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient$3;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/facebook/orca/mqtt/MqttClient;->b(Lcom/facebook/orca/mqtt/MqttClient;Ljava/util/List;)V

    .line 154
    return-void
.end method
