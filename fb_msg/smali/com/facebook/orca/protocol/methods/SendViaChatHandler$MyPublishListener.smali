.class Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;
.super Ljava/lang/Object;
.source "SendViaChatHandler.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

.field private final b:J

.field private c:Z

.field private d:Z

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/SendViaChatHandler;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-wide p2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->b:J

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->c:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    const-string v1, "com.facebook.orca.push.mqtt.PUBLISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener$1;-><init>(Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;)V

    iput-object v1, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->e:Landroid/content/BroadcastReceiver;

    .line 152
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-static {v1}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a(Lcom/facebook/orca/protocol/methods/SendViaChatHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 153
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    const-string v0, "/send_message_response"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-static {v0}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->b(Lcom/facebook/orca/protocol/methods/SendViaChatHandler;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 167
    const-string v1, "msgid"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lcom/fasterxml/jackson/databind/JsonNode;)J

    move-result-wide v1

    .line 168
    iget-wide v3, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 172
    const-string v1, "succeeded"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->c:Z

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->d:Z

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)Z
    .locals 6
    .parameter

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 183
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    iget-boolean v4, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->d:Z

    if-nez v4, :cond_0

    .line 184
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    goto :goto_0

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-static {v0}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a(Lcom/facebook/orca/protocol/methods/SendViaChatHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/BroadcastReceiver;)V

    .line 159
    :cond_0
    return-void
.end method
