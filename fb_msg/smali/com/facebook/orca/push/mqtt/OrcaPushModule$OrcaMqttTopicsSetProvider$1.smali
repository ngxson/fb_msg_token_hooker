.class Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider$1;
.super Ljava/lang/Object;
.source "OrcaPushModule.java"

# interfaces
.implements Lcom/facebook/orca/push/mqtt/IProvideSubscribeTopics;


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider$1;->a:Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/mqtt/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 96
    new-instance v0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    const-string v2, "/orca_message_notifications"

    invoke-direct {v0, v2, v4}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider$1;->a:Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/facebook/orca/annotations/IsPresenceEnabled;

    invoke-static {v0, v2, v3}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;->a(Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    const-string v2, "/orca_typing_notifications"

    invoke-direct {v0, v2, v4}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    const-string v2, "/orca_presence"

    invoke-direct {v0, v2, v4}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider$1;->a:Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/facebook/orca/annotations/IsDeliveredReadReceiptEnabled;

    invoke-static {v0, v2, v3}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;->b(Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    const-string v2, "/messaging_events"

    invoke-direct {v0, v2, v4}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    new-instance v0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    const-string v2, "/push_notification"

    invoke-direct {v0, v2, v4}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v1
.end method
