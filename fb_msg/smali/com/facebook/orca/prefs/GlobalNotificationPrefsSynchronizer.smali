.class public Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;
.super Ljava/lang/Object;
.source "GlobalNotificationPrefsSynchronizer.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:J

.field private static c:J

.field private static d:J


# instance fields
.field private final e:Landroid/os/Handler;

.field private final f:Lcom/facebook/orca/auth/AuthDataStore;

.field private final g:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private k:Lcom/facebook/orca/server/SetSettingsParams;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private l:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private m:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    sput-object v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a:Ljava/lang/Class;

    .line 31
    const-wide/16 v0, 0xfa0

    sput-wide v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->b:J

    .line 32
    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->c:J

    .line 33
    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->f:Lcom/facebook/orca/auth/AuthDataStore;

    .line 57
    iput-object p2, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 58
    iput-object p3, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->e:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$1;-><init>(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;)V

    iput-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 71
    new-instance v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$2;-><init>(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;)V

    invoke-virtual {p3, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 83
    return-void
.end method

.method private a()Lcom/facebook/orca/server/SetSettingsParamsBuilder;
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/SetSettingsParamsBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    .line 113
    sget-wide v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->b:J

    iput-wide v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->l:J

    .line 114
    invoke-direct {p0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->b()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 4
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->n:Z

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    sget-object v0, Lcom/facebook/orca/prefs/MessagesPrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->f:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->b(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a()Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    move-result-object v1

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->a(Z)Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    .line 103
    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    .line 104
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/Exception;)V
    .locals 6
    .parameter

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/SetSettingsParamsBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->a(Z)Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    .line 168
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    iget-object v1, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/SetSettingsParams;

    invoke-virtual {v1}, Lcom/facebook/orca/server/SetSettingsParams;->b()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/SetSettingsParams;

    .line 171
    iget v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->m:I

    int-to-long v0, v0

    sget-wide v2, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 172
    iget v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->m:I

    .line 173
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->l:J

    mul-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->l:J

    .line 174
    sget-object v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update thread notification settings. Retrying in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->l:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->m:I

    .line 180
    sget-wide v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->b:J

    iput-wide v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->e:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$3;-><init>(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;)V

    iget-wide v2, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->l:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->c()V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 3

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->f:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->c()Lcom/facebook/orca/server/SetSettingsParams;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/SetSettingsParams;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    .line 148
    sget-object v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a:Ljava/lang/Class;

    const-string v1, "Starting update"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    const-string v1, "setSettingsParams"

    iget-object v2, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/SetSettingsParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    iget-object v1, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->g:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "update_user_settings"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 2

    .prologue
    .line 155
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/SetSettingsParams;

    .line 156
    sget-wide v0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->b:J

    iput-wide v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->l:J

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->m:I

    .line 160
    invoke-direct {p0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/notify/NotificationSetting;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->n:Z

    .line 191
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->k:Lcom/facebook/orca/server/SetSettingsParams;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->j:Lcom/facebook/orca/server/SetSettingsParamsBuilder;

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    iput-boolean v5, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->n:Z

    .line 208
    :goto_0
    return-void

    .line 197
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->b(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 201
    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 204
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    iput-boolean v5, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->n:Z

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 206
    :catchall_1
    move-exception v0

    iput-boolean v5, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->n:Z

    throw v0
.end method
