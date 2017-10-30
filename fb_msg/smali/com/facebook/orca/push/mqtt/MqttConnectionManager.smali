.class public Lcom/facebook/orca/push/mqtt/MqttConnectionManager;
.super Ljava/lang/Object;
.source "MqttConnectionManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


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
.field private final b:Lcom/facebook/orca/net/OrcaNetworkManager;

.field private final c:Lcom/facebook/orca/analytics/AnalyticCounters;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/facebook/orca/mqtt/MqttClient;

.field private f:Lcom/facebook/orca/push/mqtt/MqttPushService;

.field private g:J

.field private h:J

.field private i:J

.field private j:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private k:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private l:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/mqtt/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field

.field private o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/mqtt/MqttClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    sput-object v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/analytics/AnalyticCounters;Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/net/OrcaNetworkManager;",
            "Lcom/facebook/orca/analytics/AnalyticCounters;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/mqtt/MqttClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Ljava/util/Set;

    .line 78
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Ljava/util/Map;

    .line 86
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b:Lcom/facebook/orca/net/OrcaNetworkManager;

    .line 87
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c:Lcom/facebook/orca/analytics/AnalyticCounters;

    .line 88
    iput-object p3, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->o:Ljavax/inject/Provider;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/facebook/orca/mqtt/MqttClient;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    return-object v0
.end method

.method private a(Lcom/facebook/orca/mqtt/MqttClient;)V
    .locals 4
    .parameter

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c:Lcom/facebook/orca/analytics/AnalyticCounters;

    const-string v1, "mqtt_bytes_sent"

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/MqttClient;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticCounters;->a(Ljava/lang/String;J)V

    .line 232
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c:Lcom/facebook/orca/analytics/AnalyticCounters;

    const-string v1, "mqtt_bytes_received"

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/MqttClient;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticCounters;->a(Ljava/lang/String;J)V

    .line 235
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Lcom/facebook/orca/push/mqtt/MqttPushService;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f:Lcom/facebook/orca/push/mqtt/MqttPushService;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Ljava/util/Set;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Z

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    if-nez v0, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->k()V

    .line 144
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:J

    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m()V

    .line 153
    :cond_1
    :goto_1
    return-void

    .line 135
    :cond_2
    iget-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->g:J

    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->k:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 137
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n()V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n()V

    goto :goto_0

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l()V

    goto :goto_1
.end method

.method private k()V
    .locals 4

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->o:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/MqttClient;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created mqtt client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$CallbackHandler;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/mqtt/MqttClient;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/MqttClientCallback;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->a()V

    .line 169
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 171
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/util/List;)V

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->g:J
    :try_end_2
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 176
    sget-object v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a:Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MqttException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_4 .. :try_end_4} :catch_0

    .line 176
    :cond_1
    const-string v0, "NULL"

    goto :goto_1
.end method

.method private l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    .line 187
    iput-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    .line 188
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Lcom/facebook/orca/mqtt/MqttClient;)V

    .line 189
    invoke-virtual {v0, v1}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/MqttClientCallback;)V

    .line 190
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    .line 191
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->d()V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h:J

    .line 194
    :cond_0
    return-void
.end method

.method private m()V
    .locals 5

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    const-string v1, "/keepalive"

    const/4 v2, 0x0

    new-array v2, v2, [B

    sget-object v3, Lcom/facebook/orca/mqtt/MqttQOSLevel;->FIRE_AND_FORGET:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/lang/String;[BLcom/facebook/orca/mqtt/MqttQOSLevel;Z)I

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->i:J

    .line 205
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Lcom/facebook/orca/mqtt/MqttClient;)V
    :try_end_0
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 208
    sget-object v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a:Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MqttException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->d()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "NULL"

    goto :goto_1
.end method

.method private n()V
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a:Ljava/lang/Class;

    const-string v1, "Reconnecting..."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l()V

    .line 221
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->k()V

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/facebook/orca/mqtt/MqttQOSLevel;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 252
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    .line 253
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 266
    :goto_0
    return v0

    .line 258
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Ljava/util/Set;

    monitor-enter v3
    :try_end_0
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :try_start_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 260
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v0, p3, v4}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/lang/String;[BLcom/facebook/orca/mqtt/MqttQOSLevel;Z)I

    move-result v0

    .line 261
    iget-object v4, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :try_start_2
    invoke-direct {p0, v2}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Lcom/facebook/orca/mqtt/MqttClient;)V
    :try_end_2
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    move v0, v1

    .line 266
    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method a()V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Z

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->k:J

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l:J

    .line 100
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j()V

    .line 101
    return-void
.end method

.method a(Lcom/facebook/orca/push/mqtt/MqttPushService;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f:Lcom/facebook/orca/push/mqtt/MqttPushService;

    .line 94
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/mqtt/messages/SubscribeTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Ljava/util/Map;

    monitor-enter v2

    .line 294
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    .line 295
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->a()Ljava/lang/String;

    move-result-object v4

    .line 296
    iget-object v5, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 297
    iget-object v5, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->n:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 304
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/util/List;)V
    :try_end_2
    .catch Lcom/facebook/orca/mqtt/MqttException; {:try_start_2 .. :try_end_2} :catch_0

    .line 309
    :cond_2
    :goto_1
    return-void

    .line 305
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 306
    sget-object v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a:Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MqttException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const-string v0, "NULL"

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;J)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long v3, v1, p3

    .line 273
    iget-object v5, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Ljava/util/Set;

    monitor-enter v5

    .line 274
    :try_start_0
    sget-object v1, Lcom/facebook/orca/mqtt/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/facebook/orca/mqtt/MqttQOSLevel;)I

    move-result v6

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v3, v1

    .line 276
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 277
    iget-object v7, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Ljava/util/Set;

    invoke-virtual {v7, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 278
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    monitor-exit v5

    .line 283
    :goto_1
    return v0

    .line 281
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v3, v1

    goto :goto_0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->m:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    monitor-exit v5

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 283
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method b()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j:Z

    .line 105
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j()V

    .line 106
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->l:J

    .line 110
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->j()V

    .line 111
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a()V

    .line 115
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f()V

    .line 119
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b()V

    .line 124
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    .line 239
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->e:Lcom/facebook/orca/mqtt/MqttClient;

    .line 244
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttClient;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h:J

    return-wide v0
.end method
