.class public Lcom/facebook/orca/login/LogoutFragment;
.super Lcom/facebook/orca/login/AuthFragmentBase;
.source "LogoutFragment.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field private static final b:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private Y:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private Z:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private aa:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

.field private ab:Lcom/facebook/orca/ops/OperationProgressIndicator;

.field private c:Lcom/facebook/orca/push/PushInitializer;

.field private d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private e:Lcom/facebook/orca/app/OrcaDataManager;

.field private f:Lcom/facebook/orca/app/FbAppUserDataCleaner;

.field private g:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private h:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private i:Lcom/facebook/orca/analytics/AnalyticsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "messenger_auth_expire_session_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/ConfigPrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/login/LogoutFragment;->b:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/orca/login/AuthFragmentBase;-><init>()V

    .line 49
    return-void
.end method

.method private I()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/login/LogoutFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/LogoutFragment$3;-><init>(Lcom/facebook/orca/login/LogoutFragment;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->c(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method private K()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 175
    iget-object v1, p0, Lcom/facebook/orca/login/LogoutFragment;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    :goto_0
    return v0

    .line 179
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 180
    iget-object v2, p0, Lcom/facebook/orca/login/LogoutFragment;->aa:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v2}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v2

    .line 181
    if-nez v2, :cond_1

    .line 182
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :cond_1
    new-instance v3, Lcom/facebook/orca/server/UnregisterPushTokenParams;

    invoke-direct {v3, v2}, Lcom/facebook/orca/server/UnregisterPushTokenParams;-><init>(Ljava/lang/String;)V

    .line 187
    const-string v2, "unregisterPushTokenParams"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    iget-object v2, p0, Lcom/facebook/orca/login/LogoutFragment;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v3, "unregister_push"

    invoke-virtual {v2, v3, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 190
    const-string v1, "attempt"

    invoke-direct {p0, v1}, Lcom/facebook/orca/login/LogoutFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private L()V
    .locals 1

    .prologue
    .line 195
    const-string v0, "success"

    invoke-direct {p0, v0}, Lcom/facebook/orca/login/LogoutFragment;->a(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->M()V

    .line 197
    return-void
.end method

.method private M()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->Z:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/login/LogoutFragment;->b:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->Y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->Y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v1, "auth_expire_session"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->I()V

    goto :goto_0
.end method

.method private N()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->I()V

    .line 216
    return-void
.end method

.method private O()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b()V

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->e:Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDataManager;->a()V

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->f:Lcom/facebook/orca/app/FbAppUserDataCleaner;

    invoke-virtual {v0}, Lcom/facebook/orca/app/FbAppUserDataCleaner;->a()V

    .line 227
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->c:Lcom/facebook/orca/push/PushInitializer;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PushInitializer;->c()V

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->Z:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/facebook/orca/prefs/AuthPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->g:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b()V

    .line 235
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/login/LogoutFragment$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/LogoutFragment$4;-><init>(Lcom/facebook/orca/login/LogoutFragment;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/login/LogoutFragment$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/LogoutFragment$5;-><init>(Lcom/facebook/orca/login/LogoutFragment;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private P()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "com.facebook.orca.login.LoginActions.ON_LOGOUT"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/LogoutFragment;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/LogoutFragment;->c(Landroid/os/Bundle;)V

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.orca.login.LoginActions.GET_LOGOUT_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/LogoutFragment;->b(Landroid/content/Intent;)V

    .line 254
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->ab:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->ab:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->b()V

    .line 257
    :cond_0
    return-void
.end method

.method private Q()V
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/facebook/orca/login/LogoutFragment;->b()Z

    .line 263
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->ab:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->ab:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->b()V

    .line 266
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/login/LogoutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->L()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/login/LogoutFragment;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/orca/login/LogoutFragment;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 200
    const-string v0, "failed"

    invoke-direct {p0, v0}, Lcom/facebook/orca/login/LogoutFragment;->a(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->M()V

    .line 202
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->aa:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/orca/analytics/reliability/PushServerUnregistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/facebook/orca/login/LogoutFragment;->i:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 172
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/login/LogoutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->N()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/login/LogoutFragment;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/orca/login/LogoutFragment;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->I()V

    .line 220
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/login/LogoutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->O()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/login/LogoutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->P()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/login/LogoutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->Q()V

    return-void
.end method


# virtual methods
.method public H()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->ab:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->ab:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->a()V

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/login/LogoutFragment;->I()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/facebook/orca/login/AuthFragmentBase;->a(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/facebook/orca/login/LogoutFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 81
    const-class v0, Lcom/facebook/orca/push/PushInitializer;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushInitializer;

    iput-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->c:Lcom/facebook/orca/push/PushInitializer;

    .line 82
    const-class v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    iput-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 83
    const-class v0, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaDataManager;

    iput-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->e:Lcom/facebook/orca/app/OrcaDataManager;

    .line 84
    const-class v0, Lcom/facebook/orca/app/FbAppUserDataCleaner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/FbAppUserDataCleaner;

    iput-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->f:Lcom/facebook/orca/app/FbAppUserDataCleaner;

    .line 85
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->Z:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 86
    const-class v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    iput-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->g:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 87
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->i:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 88
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    iput-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->aa:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    .line 90
    const-string v0, "unregisterPushOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/NestedFragment;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/login/LogoutFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/LogoutFragment$1;-><init>(Lcom/facebook/orca/login/LogoutFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 103
    const-string v0, "authLogout"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/NestedFragment;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->Y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->Y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/login/LogoutFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/LogoutFragment$2;-><init>(Lcom/facebook/orca/login/LogoutFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 115
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/facebook/orca/login/AuthFragmentBase;->d(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/facebook/orca/login/LogoutFragment;->c()Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthStateMachineConfig;->b()Lcom/facebook/orca/login/LogoutFragment$Config;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/orca/login/LogoutFragment$Config;->a:Lcom/facebook/orca/ops/OperationProgressIndicator;

    iput-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->ab:Lcom/facebook/orca/ops/OperationProgressIndicator;

    .line 121
    invoke-virtual {p0}, Lcom/facebook/orca/login/LogoutFragment;->H()V

    .line 122
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->f()V

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->ab:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment;->ab:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->b()V

    .line 130
    :cond_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "logout"

    return-object v0
.end method

.method public x()V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/orca/login/LogoutFragment;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/orca/login/LogoutFragment;->Y:Lcom/facebook/orca/ops/OrcaServiceFragment;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/LogoutFragment;->a([Landroid/support/v4/app/Fragment;)V

    .line 137
    invoke-super {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->x()V

    .line 138
    return-void
.end method
