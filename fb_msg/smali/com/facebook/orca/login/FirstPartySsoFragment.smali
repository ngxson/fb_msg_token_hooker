.class public Lcom/facebook/orca/login/FirstPartySsoFragment;
.super Lcom/facebook/orca/login/AuthFragmentBase;
.source "FirstPartySsoFragment.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;
.implements Lcom/facebook/orca/login/FirstPartySsoFragmentControl;


# instance fields
.field private b:Lcom/facebook/orca/auth/AuthDataStore;

.field private c:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private d:Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;

.field private e:Lcom/facebook/orca/login/SsoLoginUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/login/AuthFragmentBase;-><init>()V

    return-void
.end method

.method private K()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    return v0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->b:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v1}, Lcom/facebook/orca/auth/AuthDataStore;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->M()V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->e:Lcom/facebook/orca/login/SsoLoginUtil;

    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/login/SsoLoginUtil;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->I()V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->e:Lcom/facebook/orca/login/SsoLoginUtil;

    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/login/SsoLoginUtil;->c(Landroid/app/Activity;)Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->d:Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->d:Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;

    if-nez v1, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->I()V

    goto :goto_0

    .line 152
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private L()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->M()V

    .line 157
    return-void
.end method

.method private M()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.orca.login.LoginActions.AUTH_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->b(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/login/FirstPartySsoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->L()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/login/FirstPartySsoFragment;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/orca/login/FirstPartySsoFragment;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->I()V

    .line 162
    return-void
.end method


# virtual methods
.method public H()Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->d:Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;

    return-object v0
.end method

.method public I()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;

    const-class v1, Lcom/facebook/orca/login/PasswordCredentialsFragment;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;-><init>(Lcom/facebook/orca/login/OrcaReportingFragment;Ljava/lang/Class;)V

    .line 171
    iget-object v1, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->e:Lcom/facebook/orca/login/SsoLoginUtil;

    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/login/SsoLoginUtil;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->a()Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->c()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->b(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/facebook/orca/login/FirstPartySsoFragmentControl;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/login/FirstPartySsoFragment;->a(Ljava/lang/Class;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/facebook/orca/login/AuthFragmentBase;->a(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/login/SsoLoginUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/login/SsoLoginUtil;

    iput-object v0, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->e:Lcom/facebook/orca/login/SsoLoginUtil;

    .line 52
    const-string v0, "authenticateOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/NestedFragment;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->c:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->c:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/login/FirstPartySsoFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/FirstPartySsoFragment$1;-><init>(Lcom/facebook/orca/login/FirstPartySsoFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->c()Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->c()Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthStateMachineConfig;->a()Lcom/facebook/orca/login/AuthDataStoreProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->b:Lcom/facebook/orca/auth/AuthDataStore;

    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->K()Z

    .line 73
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->c:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->b:Lcom/facebook/orca/auth/AuthDataStore;

    instance-of v0, v0, Lcom/facebook/orca/login/AuthDataStoreProxy;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->b:Lcom/facebook/orca/auth/AuthDataStore;

    check-cast v0, Lcom/facebook/orca/login/AuthDataStoreProxy;

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthDataStoreProxy;->g()V

    .line 128
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v1, "accessToken"

    iget-object v2, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->d:Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;

    invoke-virtual {v2}, Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->c:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 131
    iget-object v1, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->c:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "auth_sso"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/facebook/orca/login/AuthFragmentBase;->d(Landroid/os/Bundle;)V

    .line 90
    const-string v0, "com.facebook.orca.login.LoginActions.SHOWING_LOGIN_UI"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->c(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->c()Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthStateMachineConfig;->a()Lcom/facebook/orca/login/AuthDataStoreProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->b:Lcom/facebook/orca/auth/AuthDataStore;

    .line 94
    invoke-direct {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->K()Z

    .line 95
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "login_sso"

    return-object v0
.end method

.method public v()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->v()V

    .line 100
    invoke-direct {p0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->K()Z

    .line 101
    return-void
.end method

.method public x()V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/orca/login/FirstPartySsoFragment;->c:Lcom/facebook/orca/ops/OrcaServiceFragment;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->a([Landroid/support/v4/app/Fragment;)V

    .line 108
    invoke-super {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->x()V

    .line 109
    return-void
.end method
