.class public Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;
.super Lcom/facebook/orca/mqtt/messages/MqttMessage;
.source "ConnectMqttMessage.java"


# direct methods
.method public constructor <init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;Lcom/facebook/orca/mqtt/messages/ConnectPayload;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/mqtt/messages/MqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/facebook/orca/mqtt/messages/ConnectPayload;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/messages/ConnectPayload;

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;->c()Lcom/facebook/orca/mqtt/messages/ConnectPayload;

    move-result-object v0

    return-object v0
.end method