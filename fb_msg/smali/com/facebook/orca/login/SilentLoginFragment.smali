.class public Lcom/facebook/orca/login/SilentLoginFragment;
.super Lcom/facebook/orca/login/AuthFragmentBase;
.source "SilentLoginFragment.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private b:Lcom/facebook/orca/login/AuthDataStoreProxy;

.field private c:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/login/AuthFragmentBase;-><init>()V

    return-void
.end method

.method private H()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    return v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/login/SilentLoginFragment;->b:Lcom/facebook/orca/login/AuthDataStoreProxy;

    invoke-virtual {v1}, Lcom/facebook/orca/login/AuthDataStoreProxy;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.orca.login.LoginActions.GET_LOGIN_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/login/SilentLoginFragment;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private I()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/facebook/orca/login/SilentLoginFragment;->c:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "login"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method private K()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "com.facebook.orca.login.LoginActions.ON_LOGIN"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/SilentLoginFragment;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/SilentLoginFragment;->c(Landroid/os/Bundle;)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.orca.login.LoginActions.GET_LOGIN_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/SilentLoginFragment;->b(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method private L()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/orca/login/SilentLoginFragment;->b:Lcom/facebook/orca/login/AuthDataStoreProxy;

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthDataStoreProxy;->f()V

    .line 137
    invoke-virtual {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->F()V

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/login/SilentLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->K()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/login/SilentLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->L()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/facebook/orca/login/AuthFragmentControlBase;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/login/SilentLoginFragment;->a(Ljava/lang/Class;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/facebook/orca/login/AuthFragmentBase;->a(Landroid/os/Bundle;)V

    .line 43
    const-string v0, "loginOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/NestedFragment;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/SilentLoginFragment;->c:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/login/SilentLoginFragment;->c:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/login/SilentLoginFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/SilentLoginFragment$1;-><init>(Lcom/facebook/orca/login/SilentLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->c()Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->c()Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthStateMachineConfig;->a()Lcom/facebook/orca/login/AuthDataStoreProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/SilentLoginFragment;->b:Lcom/facebook/orca/login/AuthDataStoreProxy;

    .line 62
    invoke-direct {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->H()Z

    .line 64
    :cond_0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/facebook/orca/login/AuthFragmentBase;->d(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->c()Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthStateMachineConfig;->a()Lcom/facebook/orca/login/AuthDataStoreProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/SilentLoginFragment;->b:Lcom/facebook/orca/login/AuthDataStoreProxy;

    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->H()Z

    .line 85
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "login_silent"

    return-object v0
.end method

.method public v()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->v()V

    .line 91
    invoke-direct {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/login/SilentLoginFragment;->c:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/login/SilentLoginFragment;->b:Lcom/facebook/orca/login/AuthDataStoreProxy;

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthDataStoreProxy;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-direct {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->I()V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/login/SilentLoginFragment;->F()V

    goto :goto_0
.end method

.method public x()V
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/orca/login/SilentLoginFragment;->c:Lcom/facebook/orca/ops/OrcaServiceFragment;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/SilentLoginFragment;->a([Landroid/support/v4/app/Fragment;)V

    .line 109
    invoke-super {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->x()V

    .line 110
    return-void
.end method
