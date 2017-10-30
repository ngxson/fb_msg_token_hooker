.class public Lcom/facebook/orca/cache/DeliveredReadReceiptManager;
.super Ljava/lang/Object;
.source "DeliveredReadReceiptManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/orca/cache/DataCache;

.field private final d:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/facebook/orca/push/mqtt/MqttConnectionManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->b:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->c:Lcom/facebook/orca/cache/DataCache;

    .line 40
    iput-object p4, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->d:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 41
    return-void
.end method

.method private a()Lcom/facebook/orca/ops/OrcaServiceOperation;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Z)V

    .line 107
    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 119
    const-string v1, "msg_sender_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 120
    const-string v1, "mid"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 121
    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 122
    iget-object v1, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->d:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v2, "/send_delivery_receipt"

    sget-object v3, Lcom/facebook/orca/mqtt/MqttQOSLevel;->FIRE_AND_FORGET:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/facebook/orca/mqtt/MqttQOSLevel;)I

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {p2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/DataCache;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 88
    :goto_0
    if-nez v0, :cond_1

    .line 99
    :goto_1
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a()Lcom/facebook/orca/ops/OrcaServiceOperation;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/facebook/orca/server/ReadReceiptParams;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1, p3, p4}, Lcom/facebook/orca/server/ReadReceiptParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/users/UserKey;J)V

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string v3, "readReceiptParams"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    const-string v2, "read_receipt"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public a(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {p2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/DataCache;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 59
    :goto_0
    if-nez v0, :cond_1

    .line 70
    :goto_1
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a()Lcom/facebook/orca/ops/OrcaServiceOperation;

    move-result-object v1

    .line 65
    new-instance v2, Lcom/facebook/orca/server/DeliveredReceiptParams;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1, p3}, Lcom/facebook/orca/server/DeliveredReceiptParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/users/UserKey;Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v3, "deliveredReceiptParms"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    const-string v2, "delivered_receipt"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method
