.class public Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;
.super Lcom/facebook/orca/mqtt/messages/MqttMessage;
.source "SubAckMqttMessage.java"


# direct methods
.method public constructor <init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;Lcom/facebook/orca/mqtt/messages/SubAckPayload;)V
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
.method public a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/facebook/orca/mqtt/messages/SubAckPayload;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/messages/SubAckPayload;

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;->c()Lcom/facebook/orca/mqtt/messages/SubAckPayload;

    move-result-object v0

    return-object v0
.end method
