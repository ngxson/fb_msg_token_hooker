.class public Lcom/facebook/orca/push/c2dm/C2DMRegistrar;
.super Ljava/lang/Object;
.source "C2DMRegistrar.java"


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
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final d:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    sput-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/analytics/AnalyticsLogger;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Lcom/facebook/orca/analytics/AnalyticsLogger;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 89
    iput-object p3, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 90
    iput-object p4, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e:Ljavax/inject/Provider;

    .line 91
    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;
    .locals 1
    .parameter

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;->C2DM:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    .line 254
    :goto_0
    return-object v0

    .line 251
    :cond_0
    :try_start_0
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 254
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;->C2DM:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    goto :goto_0
.end method

.method private k()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;->GCM:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;->C2DM:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    goto :goto_0
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->h()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;->GCM:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 95
    const-string v1, "backoff"

    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "service_type"

    invoke-direct {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->k()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object v0
.end method

.method public a(J)V
    .locals 3
    .parameter

    .prologue
    const-wide/32 v0, 0x1b7740

    .line 283
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 288
    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 290
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/orca/push/analytics/PushC2DMRegistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 112
    return-void
.end method

.method a(Ljava/lang/String;Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 270
    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    .line 271
    sget-object v3, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v2, v3, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 272
    sget-object v3, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v2, v3, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 273
    sget-object v3, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v2, v3, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 274
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p2}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 275
    invoke-interface {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 276
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    const-string v0, "attempt"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 134
    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    invoke-direct {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->k()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    move-result-object v1

    .line 136
    sget-object v2, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;->GCM:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    if-ne v1, v2, :cond_0

    .line 137
    const-string v2, "sender"

    const-string v3, "15057814354"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 145
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 148
    return-void

    .line 139
    :cond_0
    const-string v2, "sender"

    const-string v3, "facebook.android@gmail.com"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/orca/push/analytics/PushC2DMUnregistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 124
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    const-string v0, "attempt"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b(Ljava/lang/String;)V

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    const-string v1, "app"

    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->i()V

    .line 161
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 167
    const-string v0, "invalid_token"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 170
    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v3, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v2

    .line 172
    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->i()V

    .line 176
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b()V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 205
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->NONE:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    .line 224
    :goto_0
    return-object v0

    .line 212
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 213
    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v3, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v2, v3, v6, v7}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v2

    .line 215
    iget-object v4, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v5, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v4, v5, v6, v7}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v4

    .line 216
    sub-long v2, v0, v2

    const-wide/32 v6, 0x240c8400

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    sub-long/2addr v0, v4

    const-wide/32 v2, 0xa4cb800

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 218
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->EXPIRED:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    goto :goto_0

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->l()Z

    move-result v1

    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_2

    .line 222
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->WRONG_TYPE:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    goto :goto_0

    .line 224
    :cond_2
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->CURRENT:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    goto :goto_0
.end method

.method public g()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c(Ljava/lang/String;)Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c(Ljava/lang/String;)Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    move-result-object v0

    return-object v0
.end method

.method i()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 263
    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 264
    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 266
    return-void
.end method

.method public j()J
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    return-wide v0
.end method
