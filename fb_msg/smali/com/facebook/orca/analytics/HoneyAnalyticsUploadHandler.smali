.class public Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;
.super Ljava/lang/Object;
.source "HoneyAnalyticsUploadHandler.java"


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
.field private final b:Lcom/facebook/config/AppBuildInfo;

.field private final c:Lcom/facebook/orca/config/PlatformAppConfig;

.field private final d:Lcom/facebook/orca/analytics/AnalyticsStorage;

.field private final e:Landroid/telephony/TelephonyManager;

.field private final f:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

.field private final g:Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;

.field private final h:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

.field private final i:Lcom/facebook/orca/net/OrcaNetworkManager;

.field private final j:Lcom/facebook/orca/common/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;

    sput-object v0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/config/AppBuildInfo;Lcom/facebook/orca/config/PlatformAppConfig;Lcom/facebook/orca/analytics/AnalyticsStorage;Landroid/telephony/TelephonyManager;Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/protocol/base/SingleMethodRunner;Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;Lcom/facebook/orca/common/util/Clock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->b:Lcom/facebook/config/AppBuildInfo;

    .line 56
    iput-object p2, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->c:Lcom/facebook/orca/config/PlatformAppConfig;

    .line 57
    iput-object p3, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->d:Lcom/facebook/orca/analytics/AnalyticsStorage;

    .line 58
    iput-object p4, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->e:Landroid/telephony/TelephonyManager;

    .line 59
    iput-object p7, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->f:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 60
    iput-object p8, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->g:Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;

    .line 61
    iput-object p6, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->i:Lcom/facebook/orca/net/OrcaNetworkManager;

    .line 62
    iput-object p5, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->h:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    .line 63
    iput-object p9, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->j:Lcom/facebook/orca/common/util/Clock;

    .line 64
    return-void
.end method

.method private a(Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->d:Lcom/facebook/orca/analytics/AnalyticsStorage;

    iget-object v1, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsStorage;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-instance v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 114
    const-string v0, "time"

    iget-wide v3, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->c:J

    invoke-virtual {v2, v0, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 115
    const-string v0, "app_id"

    iget-object v3, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->c:Lcom/facebook/orca/config/PlatformAppConfig;

    invoke-interface {v3}, Lcom/facebook/orca/config/PlatformAppConfig;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 116
    const-string v0, "app_ver"

    iget-object v3, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->b:Lcom/facebook/config/AppBuildInfo;

    invoke-interface {v3}, Lcom/facebook/config/AppBuildInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 117
    const-string v0, "device_id"

    iget-object v3, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->h:Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {v3}, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 118
    const-string v0, "session_id"

    iget-object v3, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 119
    const-string v0, "seq"

    iget-wide v3, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->d:J

    invoke-virtual {v2, v0, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 120
    iget-object v0, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 121
    const-string v0, "uid"

    iget-object v3, p1, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    const-string v0, "n/a"

    .line 130
    :cond_2
    const-string v3, "carrier"

    invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 131
    const-string v0, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 132
    const-string v0, "os_ver"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 133
    const-string v0, "build_num"

    iget-object v3, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->b:Lcom/facebook/config/AppBuildInfo;

    invoke-interface {v3}, Lcom/facebook/config/AppBuildInfo;->b()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->i:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->c()Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v3, "conn"

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 142
    const-string v0, "sent_time"

    iget-object v3, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->j:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v3}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/facebook/orca/analytics/HoneyProtocolUtils;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 147
    new-instance v0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler$RawJsonBlobNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler$RawJsonBlobNode;-><init>(Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;Ljava/lang/String;)V

    .line 148
    const-string v1, "data"

    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 149
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :cond_3
    const-string v0, "none"

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->i:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->d:Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;->c()Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;

    .line 162
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->a(Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;)Ljava/lang/String;

    move-result-object v1

    .line 164
    if-nez v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->d:Lcom/facebook/orca/analytics/AnalyticsStorage;

    iget-object v0, v0, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->f:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    iget-object v6, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->g:Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;

    invoke-virtual {v5, v6, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->d:Lcom/facebook/orca/analytics/AnalyticsStorage;

    iget-object v0, v0, Lcom/facebook/orca/analytics/AnalyticsStorage$EventBatchInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-wide/32 v5, 0x1d4c0

    cmp-long v0, v0, v5

    if-lez v0, :cond_2

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 176
    sget-object v1, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;->a:Ljava/lang/Class;

    const-string v5, "error upload analytic logs"

    invoke-static {v1, v5, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
