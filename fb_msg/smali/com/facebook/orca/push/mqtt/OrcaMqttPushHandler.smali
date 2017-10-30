.class public Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;
.super Ljava/lang/Object;
.source "OrcaMqttPushHandler.java"

# interfaces
.implements Lcom/facebook/orca/push/mqtt/MqttPushHandler;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/PushHandler;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/orca/push/common/PushDeserialization;

.field private d:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

.field private e:Lcom/facebook/orca/presence/PresenceManager;

.field private f:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private g:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

.field private h:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

.field private final i:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;

    sput-object v0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/facebook/orca/push/common/PushDeserialization;Lcom/facebook/orca/cache/DeliveredReadReceiptManager;Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/push/c2dm/C2DMRegistrar;Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/PushHandler;",
            ">;",
            "Lcom/facebook/orca/push/common/PushDeserialization;",
            "Lcom/facebook/orca/cache/DeliveredReadReceiptManager;",
            "Lcom/facebook/orca/presence/PresenceManager;",
            "Lcom/facebook/orca/push/mqtt/MqttConnectionManager;",
            "Lcom/facebook/orca/push/c2dm/C2DMRegistrar;",
            "Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->b:Ljava/util/Set;

    .line 58
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->c:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 59
    iput-object p3, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->d:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    .line 60
    iput-object p4, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->e:Lcom/facebook/orca/presence/PresenceManager;

    .line 61
    iput-object p5, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->f:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 62
    iput-object p6, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->g:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    .line 63
    iput-object p7, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->h:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    .line 64
    iput-object p8, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->i:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 65
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x78

    .line 208
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 213
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/push/PushSource;)V
    .locals 5
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->h:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p1}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "invalid_payload"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private a(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 6
    .parameter

    .prologue
    .line 115
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->c:Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/push/common/PushDeserialization;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-direct {p0, v1}, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v3

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->e:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/threads/Message;)V

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushHandler;

    .line 124
    sget-object v5, Lcom/facebook/orca/push/PushSource;->MQTT:Lcom/facebook/orca/push/PushSource;

    invoke-interface {v0, v3, v2, v1, v5}, Lcom/facebook/orca/push/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    goto :goto_0

    .line 127
    :cond_0
    sget-object v0, Lcom/facebook/orca/push/PushSource;->MQTT:Lcom/facebook/orca/push/PushSource;

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a(Lcom/facebook/orca/push/PushSource;)V

    .line 134
    :cond_1
    :goto_1
    return-void

    .line 129
    :cond_2
    const-string v1, "typ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "sender_fbid"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v1, "state"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lcom/fasterxml/jackson/databind/JsonNode;)I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->e:Lcom/facebook/orca/presence/PresenceManager;

    new-instance v3, Lcom/facebook/orca/users/UserKey;

    sget-object v4, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v3, v4, v0}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/users/UserKey;I)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 103
    const-string v0, "registration_id"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/facebook/orca/push/PushSource;->C2DM_OVER_MQTT:Lcom/facebook/orca/push/PushSource;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->h:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messaging_push_notif_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mqtt_other_token"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private b(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 7
    .parameter

    .prologue
    .line 137
    const-string v0, "full"

    const-string v1, "list_type"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 139
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 141
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 142
    const-string v4, "u"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lcom/fasterxml/jackson/databind/JsonNode;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 143
    const-string v5, "p"

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lcom/fasterxml/jackson/databind/JsonNode;)I

    move-result v0

    .line 144
    new-instance v5, Lcom/facebook/orca/users/UserKey;

    sget-object v6, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v5, v6, v4}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->e:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/presence/PresenceManager;->a(Ljava/util/Map;Z)V

    .line 147
    return-void
.end method

.method private c(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 7
    .parameter

    .prologue
    .line 150
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "delivery_receipt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const-string v0, "from_fbid"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "mid"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v2, "tid"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 155
    sget-object v3, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received delivery_receipt from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 156
    new-instance v3, Lcom/facebook/orca/users/UserKey;

    sget-object v4, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v3, v4, v0}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->d:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    invoke-virtual {v0, v3, v2, v1}, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v1, "read_receipt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "reader_fbid"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "timestamp"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lcom/fasterxml/jackson/databind/JsonNode;)J

    move-result-wide v1

    .line 161
    const-string v3, "tid"

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v3

    .line 162
    sget-object v4, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received read_recept from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 163
    new-instance v4, Lcom/facebook/orca/users/UserKey;

    sget-object v5, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v4, v5, v0}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->d:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private d(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 6
    .parameter

    .prologue
    .line 170
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 171
    const-string v0, "params"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 173
    const-string v2, "token"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->g:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v3}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    sget-object v0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a:Ljava/lang/Class;

    const-string v1, "Ignoring MQTT push for other token"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, v2}, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a(Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    sget-object v2, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a:Ljava/lang/Class;

    const-string v3, "Received MQTT push"

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 182
    const-string v2, "async_job"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 183
    new-instance v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v4, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 184
    const-string v4, "async_job"

    invoke-virtual {v3, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 185
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->f:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v4, "/send_push_notification_ack"

    sget-object v5, Lcom/facebook/orca/mqtt/MqttQOSLevel;->FIRE_AND_FORGET:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    invoke-virtual {v2, v4, v3, v5}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/facebook/orca/mqtt/MqttQOSLevel;)I

    .line 188
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string v3, "pushnot"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const-string v2, "notif_type"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 191
    const-string v3, "msg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "orca_message"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->c:Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/push/common/PushDeserialization;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 193
    if-eqz v2, :cond_3

    .line 194
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v3

    .line 195
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->e:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/threads/Message;)V

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushHandler;

    .line 197
    sget-object v5, Lcom/facebook/orca/push/PushSource;->C2DM_OVER_MQTT:Lcom/facebook/orca/push/PushSource;

    invoke-interface {v0, v1, v3, v2, v5}, Lcom/facebook/orca/push/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    goto :goto_1

    .line 200
    :cond_3
    sget-object v0, Lcom/facebook/orca/push/PushSource;->C2DM_OVER_MQTT:Lcom/facebook/orca/push/PushSource;

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a(Lcom/facebook/orca/push/PushSource;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->i:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 73
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publish:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 77
    :cond_0
    const-string v1, "/orca_message_notifications"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/orca_typing_notifications"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a(Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 90
    :cond_2
    :goto_0
    return-void

    .line 80
    :cond_3
    const-string v1, "/orca_presence"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->b(Lcom/fasterxml/jackson/databind/JsonNode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    sget-object v1, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->a:Ljava/lang/Class;

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :cond_4
    :try_start_1
    const-string v1, "/messaging_events"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->c(Lcom/fasterxml/jackson/databind/JsonNode;)V

    goto :goto_0

    .line 84
    :cond_5
    const-string v1, "/push_notification"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;->d(Lcom/fasterxml/jackson/databind/JsonNode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
