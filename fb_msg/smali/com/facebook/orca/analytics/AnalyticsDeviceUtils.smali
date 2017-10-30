.class public Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;
.super Ljava/lang/Object;
.source "AnalyticsDeviceUtils.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/telephony/TelephonyManager;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Lcom/facebook/orca/net/OrcaNetworkManager;

.field private final e:Lcom/facebook/orca/analytics/AnalyticCounters;

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/content/pm/PackageManager;Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/analytics/AnalyticCounters;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b:Landroid/telephony/TelephonyManager;

    .line 47
    iput-object p3, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->c:Landroid/content/pm/PackageManager;

    .line 48
    iput-object p4, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->d:Lcom/facebook/orca/net/OrcaNetworkManager;

    .line 49
    iput-object p5, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->e:Lcom/facebook/orca/analytics/AnalyticCounters;

    .line 51
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b()V

    .line 52
    return-void
.end method

.method private a()D
    .locals 7

    .prologue
    const/4 v6, -0x1

    const-wide/16 v0, 0x0

    .line 156
    .line 161
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 163
    const-string v3, "level"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 164
    const-string v4, "scale"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-double v4, v2

    .line 165
    if-ltz v3, :cond_0

    cmpl-double v2, v4, v0

    if-lez v2, :cond_0

    .line 166
    int-to-double v0, v3

    div-double/2addr v0, v4

    .line 169
    :cond_0
    return-wide v0
.end method

.method private static a(J)J
    .locals 2
    .parameter

    .prologue
    .line 220
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 4
    .parameter

    .prologue
    .line 206
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 207
    new-instance v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 208
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 211
    :cond_0
    return-object v2
.end method

.method private b()V
    .locals 3

    .prologue
    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 186
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 187
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->f:J

    .line 188
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->g:J

    .line 190
    :cond_0
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->f:J

    .line 197
    iget-wide v2, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->g:J

    .line 198
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b()V

    .line 199
    iget-object v4, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->e:Lcom/facebook/orca/analytics/AnalyticCounters;

    const-string v5, "total_bytes_received"

    iget-wide v6, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->f:J

    sub-long v0, v6, v0

    invoke-virtual {v4, v5, v0, v1}, Lcom/facebook/orca/analytics/AnalyticCounters;->b(Ljava/lang/String;J)V

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->e:Lcom/facebook/orca/analytics/AnalyticCounters;

    const-string v1, "total_bytes_sent"

    iget-wide v4, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->g:J

    sub-long v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticCounters;->b(Ljava/lang/String;J)V

    .line 203
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "device_info"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 62
    invoke-virtual {v0, p3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 64
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 65
    const-string v2, "device_type"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 66
    const-string v2, "os_type"

    const-string v3, "Android"

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 67
    const-string v2, "os_ver"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 68
    const-string v2, "density"

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;D)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 69
    const-string v2, "screen_width"

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 70
    const-string v2, "screen_height"

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 71
    const-string v1, "front_camera"

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->c:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.camera.front"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 73
    const-string v1, "rear_camera"

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->c:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.camera"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 75
    const-string v1, "allows_non_market_installs"

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 78
    const-string v1, "preferences"

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Landroid/content/Context;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 79
    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 81
    return-object v0
.end method

.method public a(Lcom/facebook/orca/analytics/HoneyClientEvent;JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v7, 0x100000

    .line 90
    invoke-virtual {p1, p2, p3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 91
    invoke-virtual {p1, p4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->d:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->d:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/orca/net/OrcaNetworkManager;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "carrier"

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 96
    const-string v0, "locale"

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 99
    const-string v0, "battery"

    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;D)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 102
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    .line 108
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 109
    sub-long v3, v1, v3

    .line 111
    const-string v5, "free_mem"

    div-long/2addr v3, v7

    invoke-virtual {p1, v5, v3, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 112
    const-string v3, "total_mem"

    div-long/2addr v1, v7

    invoke-virtual {p1, v3, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 113
    const-string v1, "core_count"

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 116
    invoke-virtual {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 120
    return-object p1
.end method

.method public a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->d:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->d:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/orca/net/OrcaNetworkManager;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public a(Lcom/facebook/orca/analytics/HoneyClientEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    const-string v0, "connection"

    invoke-static {p2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 130
    invoke-static {p3}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string v0, "connection_subtype"

    invoke-virtual {p1, v0, p3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 133
    :cond_0
    return-void

    .line 128
    :cond_1
    const-string p2, "none"

    goto :goto_0
.end method

.method public b(JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "device_status"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 150
    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 152
    return-object v0
.end method

.method public b(Lcom/facebook/orca/analytics/HoneyClientEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->c()V

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->e:Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/AnalyticCounters;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 176
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->e:Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticCounters;->a()V

    .line 178
    return-void
.end method
