.class Lcom/facebook/orca/mqtt/MqttClient$4;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Lcom/facebook/orca/mqtt/MqttQOSLevel;

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Lcom/facebook/orca/mqtt/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/orca/mqtt/MqttClient;Ljava/lang/String;[BLcom/facebook/orca/mqtt/MqttQOSLevel;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->f:Lcom/facebook/orca/mqtt/MqttClient;

    iput-object p2, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->b:[B

    iput-object p4, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->c:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    iput-boolean p5, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->d:Z

    iput p6, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 170
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->f:Lcom/facebook/orca/mqtt/MqttClient;

    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->b:[B

    iget-object v3, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->c:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    invoke-virtual {v3}, Lcom/facebook/orca/mqtt/MqttQOSLevel;->getValue()I

    move-result v3

    iget-boolean v4, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->d:Z

    iget v5, p0, Lcom/facebook/orca/mqtt/MqttClient$4;->e:I

    invoke-static/range {v0 .. v5}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/MqttClient;Ljava/lang/String;[BIZI)V

    .line 171
    return-void
.end method
