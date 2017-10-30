.class public Lcom/facebook/orca/push/C2dmPushManager;
.super Ljava/lang/Object;
.source "C2dmPushManager.java"

# interfaces
.implements Lcom/facebook/orca/push/PushManager;
.implements Lcom/facebook/orca/push/c2dm/C2DMPushRegistrationHandler;


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
.field private final b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/auth/AuthDataStore;

.field private final e:Lcom/facebook/orca/net/OrcaNetworkManager;

.field private final f:Lcom/facebook/orca/analytics/AnalyticsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/orca/push/C2dmPushManager;

    sput-object v0, Lcom/facebook/orca/push/C2dmPushManager;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/push/c2dm/C2DMRegistrar;Ljavax/inject/Provider;Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/analytics/AnalyticsLogger;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/push/c2dm/C2DMRegistrar;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;",
            "Lcom/facebook/orca/auth/AuthDataStore;",
            "Lcom/facebook/orca/net/OrcaNetworkManager;",
            "Lcom/facebook/orca/analytics/AnalyticsLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    .line 46
    iput-object p2, p0, Lcom/facebook/orca/push/C2dmPushManager;->c:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/facebook/orca/push/C2dmPushManager;->d:Lcom/facebook/orca/auth/AuthDataStore;

    .line 48
    iput-object p4, p0, Lcom/facebook/orca/push/C2dmPushManager;->e:Lcom/facebook/orca/net/OrcaNetworkManager;

    .line 49
    iput-object p5, p0, Lcom/facebook/orca/push/C2dmPushManager;->f:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/C2dmPushManager;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/C2dmPushManager;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {p1, p2}, Lcom/facebook/orca/analytics/reliability/PushRegistrationInitialStatusClientEvent;->a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/push/C2dmPushManager;->f:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 89
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RegisterPushTokenResult;

    .line 129
    const-string v1, "success"

    .line 130
    invoke-virtual {v0}, Lcom/facebook/orca/server/RegisterPushTokenResult;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/server/RegisterPushTokenResult;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->d()V

    .line 134
    const-string v0, "invalid_token"

    .line 137
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/C2dmPushManager;->a(Ljava/lang/String;)V

    .line 138
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager;->d:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "auth_no_user"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/C2dmPushManager;->a(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/RegisterPushTokenParams;

    iget-object v1, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->h()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v2}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/RegisterPushTokenParams;-><init>(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    const-string v2, "registerPushTokenParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Z)V

    .line 110
    new-instance v2, Lcom/facebook/orca/push/C2dmPushManager$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/push/C2dmPushManager$1;-><init>(Lcom/facebook/orca/push/C2dmPushManager;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 121
    const-string v2, "register_push"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 123
    const-string v0, "attempt"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/C2dmPushManager;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->f()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/push/C2dmPushManager;->a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->CURRENT:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    if-ne v0, v1, :cond_0

    .line 64
    sget-object v0, Lcom/facebook/orca/push/C2dmPushManager;->a:Ljava/lang/Class;

    const-string v1, "Has current regid -- registering with server"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/facebook/orca/push/C2dmPushManager;->d()V

    .line 80
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->WRONG_TYPE:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    if-ne v0, v1, :cond_1

    .line 67
    sget-object v0, Lcom/facebook/orca/push/C2dmPushManager;->a:Ljava/lang/Class;

    const-string v1, "GCM/C2DM preference inconsistency. Reregistering"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c()V

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b()V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/push/C2dmPushManager;->e:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    sget-object v0, Lcom/facebook/orca/push/C2dmPushManager;->a:Ljava/lang/Class;

    const-string v1, "Has connection -- registering with c2dm"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b()V

    goto :goto_0

    .line 73
    :cond_2
    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->EXPIRED:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    if-ne v0, v1, :cond_3

    .line 74
    sget-object v0, Lcom/facebook/orca/push/C2dmPushManager;->a:Ljava/lang/Class;

    const-string v1, "Has expired regid but no network -- registering with server"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/facebook/orca/push/C2dmPushManager;->d()V

    goto :goto_0

    .line 77
    :cond_3
    sget-object v0, Lcom/facebook/orca/push/C2dmPushManager;->a:Ljava/lang/Class;

    const-string v1, "Has no regid and no network -- trying to register with c2dm"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/orca/analytics/reliability/PushServerRegistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/facebook/orca/push/C2dmPushManager;->f:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 146
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/facebook/orca/push/C2dmPushManager;->d()V

    .line 94
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c()V

    .line 154
    :cond_0
    return-void
.end method
