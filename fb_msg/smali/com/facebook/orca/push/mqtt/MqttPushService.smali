.class public Lcom/facebook/orca/push/mqtt/MqttPushService;
.super Landroid/app/Service;
.source "MqttPushService.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/MqttConfig;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/orca/net/OrcaNetworkManager;

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/auth/UserTokenCredentials;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private h:Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

.field private i:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

.field private j:Landroid/app/AlarmManager;

.field private k:Lcom/facebook/orca/common/util/Clock;

.field private l:Ljava/util/Random;

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Z

.field private o:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

.field private p:J

.field private q:J

.field private r:J

.field private s:Lcom/facebook/orca/config/MqttConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttPushService;

    sput-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 309
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 310
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 312
    return-object v0
.end method

.method private a(J)V
    .locals 5
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 330
    sget-object v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling kick in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->j:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const-string v2, "Orca.KICK"

    invoke-direct {p0, v2}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 332
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 208
    const-string v0, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:J

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->r:J

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    .line 216
    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 217
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/push/mqtt/MqttPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v2, v3, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 219
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Network changed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 223
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->e()V

    .line 224
    return-void

    .line 220
    :cond_1
    const-string v0, "com.facebook.orca.ACTION_MQTT_CONFIG_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Config changed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttPushService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->i:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-string v1, "mqtt_connection"

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 146
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Starting service..."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 149
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Z

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Attempt to start service that is already started"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->e()V

    .line 180
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Z

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    sget-object v1, Lcom/facebook/orca/push/mqtt/PushStateEvent;->SERVICE_STARTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;->a(Lcom/facebook/orca/push/mqtt/PushStateEvent;)V

    .line 159
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttPushService$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttPushService$1;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    const-string v1, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "com.facebook.orca.ACTION_MQTT_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 171
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttPushService$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttPushService$2;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 179
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->e()V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Z

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Attempt to stop connection not active."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Z

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    sget-object v1, Lcom/facebook/orca/push/mqtt/PushStateEvent;->SERVICE_STOPPED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;->a(Lcom/facebook/orca/push/mqtt/PushStateEvent;)V

    .line 192
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/BroadcastReceiver;)V

    .line 195
    iput-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Landroid/content/BroadcastReceiver;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 201
    iput-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->h()V

    .line 205
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 227
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "In kickConnection"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Shouldn\'t be connected"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->h()V

    .line 264
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:Lcom/facebook/orca/config/MqttConfig;

    if-eq v0, v1, :cond_1

    .line 235
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Mqtt config changed -- disconnecting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->h()V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/MqttConfig;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:Lcom/facebook/orca/config/MqttConfig;

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    if-ne v0, v1, :cond_4

    .line 241
    iget-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->r:J

    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 242
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Will reconnect because network changed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    .line 253
    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 254
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Too early to retry connection"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_3
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Already connected"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTING:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    if-ne v0, v1, :cond_2

    .line 248
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Already connecting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_5
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Connecting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTING:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 261
    const-string v0, "connecting"

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a()V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c()V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->h()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 275
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->g()V

    .line 280
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->DISCONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 282
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b()V

    .line 283
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->l()V

    .line 284
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->k()V

    .line 285
    return-void
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 288
    iget-boolean v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Z

    if-nez v1, :cond_0

    .line 289
    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v2, "Service not started"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 304
    :goto_0
    return v0

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->e:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v2, "Not connected to network"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 300
    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v2, "Not logged in"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j()V
    .locals 7

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:Lcom/facebook/orca/config/MqttConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/MqttConfig;->d()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long v4, v0, v2

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->j:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v2}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v2

    add-long/2addr v2, v4

    const-string v6, "Orca.KEEP_ALIVE"

    invoke-direct {p0, v6}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 321
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->j:Landroid/app/AlarmManager;

    const-string v1, "Orca.KEEP_ALIVE"

    invoke-direct {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 326
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 336
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Cancelling any pending kick"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->j:Landroid/app/AlarmManager;

    const-string v1, "Orca.KICK"

    invoke-direct {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 338
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x2710

    .line 341
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Connection established"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    .line 344
    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->j()V

    .line 350
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 351
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:J

    .line 353
    const-string v0, "connected"

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->b(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    sget-object v1, Lcom/facebook/orca/push/mqtt/PushStateEvent;->CHANNEL_CONNECTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;->a(Lcom/facebook/orca/push/mqtt/PushStateEvent;)V

    .line 355
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.orca.push.mqtt.PUBLISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    const-string v1, "topic_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v1, "payload"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;->a(Landroid/content/Intent;)V

    .line 396
    return-void
.end method

.method b()V
    .locals 6

    .prologue
    .line 358
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    sget-object v1, Lcom/facebook/orca/push/mqtt/PushStateEvent;->CHANNEL_DISCONNECTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;->a(Lcom/facebook/orca/push/mqtt/PushStateEvent;)V

    .line 359
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->DISCONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    if-ne v0, v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Connection lost"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 367
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->DISCONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 368
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->g()V

    .line 370
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    .line 372
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 375
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/push/mqtt/MqttPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v2, v3, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 378
    const-wide/high16 v2, 0x3fe0

    iget-object v4, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->l:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    long-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 379
    sget-object v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rescheduling connection in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->k()V

    .line 383
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->e:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v2}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v2}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 386
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(J)V

    .line 387
    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:J

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    const-string v1, "Creating service"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 88
    invoke-static {p0}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 90
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 92
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 93
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 94
    const-class v0, Lcom/facebook/orca/config/MqttConfig;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->d:Ljavax/inject/Provider;

    .line 95
    const-class v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->e:Lcom/facebook/orca/net/OrcaNetworkManager;

    .line 96
    const-class v0, Lcom/facebook/orca/auth/UserTokenCredentials;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->f:Ljavax/inject/Provider;

    .line 97
    const-class v0, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    .line 98
    const-class v0, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/Clock;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Lcom/facebook/orca/common/util/Clock;

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Lcom/facebook/orca/push/mqtt/MqttPushService;)V

    .line 100
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->l:Ljava/util/Random;

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/MqttConfig;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:Lcom/facebook/orca/config/MqttConfig;

    .line 102
    const-class v0, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->i:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    .line 103
    const-class v0, Landroid/app/AlarmManager;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->j:Landroid/app/AlarmManager;

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 108
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service destroyed (started="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->d()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b()V

    .line 115
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 120
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service started with intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 122
    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "Orca.STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->d()V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->stopSelf()V

    goto :goto_0

    .line 131
    :cond_2
    const-string v1, "Orca.START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->c()V

    goto :goto_0

    .line 133
    :cond_3
    const-string v1, "Orca.KEEP_ALIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->f()V

    goto :goto_0

    .line 135
    :cond_4
    const-string v1, "Orca.KICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->e()V

    goto :goto_0
.end method
