.class public Lcom/facebook/orca/protocol/methods/SendViaChatHandler;
.super Ljava/lang/Object;
.source "SendViaChatHandler.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final c:Lcom/facebook/orca/push/common/PushDeserialization;

.field private final d:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

.field private final e:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/push/common/PushDeserialization;Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 48
    iput-object p3, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->c:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 49
    iput-object p4, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->d:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    .line 50
    iput-object p5, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->e:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/protocol/methods/SendViaChatHandler;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/protocol/methods/SendViaChatHandler;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->e:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/server/NewMessageResult;
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x1388

    const/4 v10, 0x0

    .line 60
    new-instance v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 63
    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    const-string v2, "to"

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 69
    const-string v0, "body"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 70
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 71
    const-string v0, "msgid"

    invoke-virtual {v1, v0, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 72
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "coordinates"

    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->d:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {v2, p1}, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->a(Lcom/facebook/orca/threads/Message;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 77
    :cond_0
    new-instance v2, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;

    invoke-direct {v2, p0, v3, v4}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;-><init>(Lcom/facebook/orca/protocol/methods/SendViaChatHandler;J)V

    .line 78
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a()V

    .line 80
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 81
    add-long/2addr v5, v7

    .line 82
    const-wide/16 v7, 0x1388

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v9, "/send_message2"

    invoke-virtual {v0, v9, v1, v7, v8}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;J)Z

    move-result v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to send via MQTT (publish failed)"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->b()V

    throw v0

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v5, v0

    .line 89
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_3

    .line 90
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to send via MQTT (timed out after publish)"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a(J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 93
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to send via MQTT (timed out waiting for response)"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_4
    invoke-static {v2}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a(Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 96
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to send via MQTT (server returned failure"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_5
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->b()V

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->c:Lcom/facebook/orca/push/common/PushDeserialization;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v9

    invoke-virtual/range {v0 .. v10}, Lcom/facebook/orca/push/common/PushDeserialization;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/orca/location/Coordinates;Ljava/util/List;)Lcom/facebook/orca/threads/Message;

    move-result-object v9

    .line 120
    new-instance v6, Lcom/facebook/orca/server/NewMessageResult;

    sget-object v7, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct/range {v6 .. v12}, Lcom/facebook/orca/server/NewMessageResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;J)V

    return-object v6
.end method

.method public a(Lcom/facebook/orca/threads/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
