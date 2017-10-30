.class public Lcom/facebook/orca/config/OrcaDynamicConfig;
.super Lcom/facebook/orca/config/AbstractOrcaConfig;
.source "OrcaDynamicConfig.java"


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
.field private final b:Lcom/facebook/orca/config/OrcaProductionConfig;

.field private final c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final d:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private final g:Lcom/facebook/app/UserActivityManager;

.field private h:Lcom/facebook/orca/config/PlatformAppHttpConfig;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private i:Lcom/facebook/orca/config/MqttConfig;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private j:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/facebook/orca/config/OrcaDynamicConfig;

    sput-object v0, Lcom/facebook/orca/config/OrcaDynamicConfig;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/config/OrcaProductionConfig;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Landroid/content/pm/PackageInfo;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Landroid/telephony/TelephonyManager;Lcom/facebook/app/UserActivityManager;)V
    .locals 1
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
            "Lcom/facebook/orca/config/OrcaProductionConfig;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Landroid/content/pm/PackageInfo;",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;",
            "Landroid/telephony/TelephonyManager;",
            "Lcom/facebook/app/UserActivityManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p3, p6}, Lcom/facebook/orca/config/AbstractOrcaConfig;-><init>(Landroid/content/pm/PackageInfo;Landroid/telephony/TelephonyManager;)V

    .line 57
    iput-object p1, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->b:Lcom/facebook/orca/config/OrcaProductionConfig;

    .line 58
    iput-object p2, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 59
    iput-object p4, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->d:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 60
    iput-object p5, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Ljavax/inject/Provider;

    .line 61
    iput-object p7, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->g:Lcom/facebook/app/UserActivityManager;

    .line 62
    new-instance v0, Lcom/facebook/orca/config/OrcaDynamicConfig$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/config/OrcaDynamicConfig$1;-><init>(Lcom/facebook/orca/config/OrcaDynamicConfig;)V

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 71
    return-void
.end method

.method private a(Ljava/lang/String;Z)Lcom/facebook/orca/config/PlatformAppHttpConfig;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;

    iget-object v1, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->g:Lcom/facebook/app/UserActivityManager;

    invoke-virtual {p0}, Lcom/facebook/orca/config/OrcaDynamicConfig;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;-><init>(Lcom/facebook/app/UserActivityManager;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/config/OrcaDynamicConfig;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/orca/config/OrcaDynamicConfig;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/orca/prefs/InternalHttpPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/PrefKey;->a(Lcom/facebook/orca/common/util/TypedKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->h:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->h:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->j:Z

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->d:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v1, "com.facebook.orca.ACTION_ORCA_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_1
    :try_start_1
    sget-object v0, Lcom/facebook/orca/prefs/InternalHttpPrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/PrefKey;->a(Lcom/facebook/orca/common/util/TypedKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->i:Lcom/facebook/orca/config/MqttConfig;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->i:Lcom/facebook/orca/config/MqttConfig;

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->d:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v1, "com.facebook.orca.ACTION_MQTT_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->h:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_2

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/InternalHttpPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "intern"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    const-string v0, "intern.facebook.com"

    invoke-direct {p0, v0, v4}, Lcom/facebook/orca/config/OrcaDynamicConfig;->a(Ljava/lang/String;Z)Lcom/facebook/orca/config/PlatformAppHttpConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->h:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    .line 136
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->h:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->b:Lcom/facebook/orca/config/OrcaProductionConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/OrcaProductionConfig;->e()Lcom/facebook/orca/config/PlatformAppHttpConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->h:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->j:Z

    goto :goto_0

    .line 120
    :cond_3
    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    const-string v0, "dev.facebook.com"

    invoke-direct {p0, v0, v4}, Lcom/facebook/orca/config/OrcaDynamicConfig;->a(Ljava/lang/String;Z)Lcom/facebook/orca/config/PlatformAppHttpConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->h:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    goto :goto_1

    .line 122
    :cond_4
    const-string v1, "sandbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/InternalHttpPrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_2
    invoke-direct {p0, v0, v4}, Lcom/facebook/orca/config/OrcaDynamicConfig;->a(Ljava/lang/String;Z)Lcom/facebook/orca/config/PlatformAppHttpConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->h:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    goto :goto_1

    .line 128
    :catch_0
    move-exception v1

    .line 129
    sget-object v2, Lcom/facebook/orca/config/OrcaDynamicConfig;->a:Ljava/lang/Class;

    const-string v3, "Failed to parse web sandbox URL"

    invoke-static {v2, v3, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private h()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->i:Lcom/facebook/orca/config/MqttConfig;

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/InternalHttpPrefKeys;->j:Lcom/facebook/orca/prefs/PrefKey;

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "sandbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/InternalHttpPrefKeys;->k:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    :try_start_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 157
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 158
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 159
    new-instance v2, Lcom/facebook/orca/config/MqttConfig;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/orca/config/MqttConfig;-><init>(Ljava/lang/String;IZ)V

    iput-object v2, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->i:Lcom/facebook/orca/config/MqttConfig;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->i:Lcom/facebook/orca/config/MqttConfig;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->b:Lcom/facebook/orca/config/OrcaProductionConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/OrcaProductionConfig;->f()Lcom/facebook/orca/config/MqttConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->i:Lcom/facebook/orca/config/MqttConfig;

    goto :goto_0

    .line 161
    :cond_3
    :try_start_1
    new-instance v1, Lcom/facebook/orca/config/MqttConfig;

    const/16 v2, 0x22b3

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/orca/config/MqttConfig;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->i:Lcom/facebook/orca/config/MqttConfig;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    sget-object v1, Lcom/facebook/orca/config/OrcaDynamicConfig;->a:Ljava/lang/Class;

    const-string v2, "Failed to parse mqtt sandbox URL"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/config/OrcaDynamicConfig;->g()V

    .line 91
    iget-boolean v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lcom/facebook/orca/config/PlatformAppHttpConfig;
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/config/OrcaDynamicConfig;->g()V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->h:Lcom/facebook/orca/config/PlatformAppHttpConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Lcom/facebook/orca/config/MqttConfig;
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/config/OrcaDynamicConfig;->h()V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig;->i:Lcom/facebook/orca/config/MqttConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
