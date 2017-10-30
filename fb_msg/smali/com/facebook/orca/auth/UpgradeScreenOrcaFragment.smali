.class public Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;
.super Lcom/facebook/orca/login/OrcaReportingFragment;
.source "UpgradeScreenOrcaFragment.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/facebook/orca/app/OrcaAppType;

.field private d:Lcom/facebook/orca/cache/DataCache;

.field private e:Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;

    sput-object v0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/login/OrcaReportingFragment;-><init>()V

    return-void
.end method

.method private E()V
    .locals 1

    .prologue
    .line 127
    const-class v0, Lcom/facebook/orca/login/LogoutFragment;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->a(Ljava/lang/Class;)V

    .line 128
    return-void
.end method

.method private F()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->e:Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-class v0, Lcom/facebook/orca/login/SilentLoginFragment;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->a(Ljava/lang/Class;)V

    .line 134
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->F()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->d:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->f()Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfig;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfig;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 123
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->b(Landroid/content/Intent;)V

    .line 124
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->c:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->E()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    sget v0, Lcom/facebook/R$layout;->upgrade_screen:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 73
    sget v0, Lcom/facebook/R$id;->upgrade_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->f:Landroid/widget/Button;

    .line 74
    sget v0, Lcom/facebook/R$id;->log_out_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->g:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->f:Landroid/widget/Button;

    new-instance v2, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment$2;

    invoke-direct {v2, p0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment$2;-><init>(Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->g:Landroid/widget/Button;

    new-instance v2, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment$3;

    invoke-direct {v2, p0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment$3;-><init>(Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-object v1
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/facebook/orca/login/OrcaReportingFragment;->d(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 51
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->c:Lcom/facebook/orca/app/OrcaAppType;

    .line 52
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->d:Lcom/facebook/orca/cache/DataCache;

    .line 53
    const-class v0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->e:Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    .line 55
    const-string v0, "fetchAppConfig"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/NestedFragment;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment$1;-><init>(Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 66
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "upgrade_screen"

    return-object v0
.end method

.method public v()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/facebook/orca/login/OrcaReportingFragment;->v()V

    .line 94
    sget-object v0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->b:Ljava/lang/Class;

    const-string v1, "Resuming UpgradeScreenFragment"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v1, "get_app_info"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 99
    :cond_0
    return-void
.end method

.method public x()V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->h:Lcom/facebook/orca/ops/OrcaServiceFragment;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->a([Landroid/support/v4/app/Fragment;)V

    .line 106
    invoke-super {p0}, Lcom/facebook/orca/login/OrcaReportingFragment;->x()V

    .line 107
    return-void
.end method
