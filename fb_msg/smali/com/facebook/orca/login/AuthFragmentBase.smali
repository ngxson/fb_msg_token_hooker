.class public abstract Lcom/facebook/orca/login/AuthFragmentBase;
.super Lcom/facebook/orca/login/OrcaReportingFragment;
.source "AuthFragmentBase.java"

# interfaces
.implements Lcom/facebook/orca/login/AuthFragmentControlBase;


# instance fields
.field private b:Lcom/facebook/orca/login/AuthStateMachineConfig;

.field private c:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/orca/login/OrcaReportingFragment;-><init>()V

    return-void
.end method

.method private H()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/login/AuthFragmentBase;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->E()Lcom/facebook/orca/login/AuthFragmentConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/orca/login/AuthFragmentConfig;->a:Ljava/lang/Class;

    iput-object v0, p0, Lcom/facebook/orca/login/AuthFragmentBase;->c:Ljava/lang/Class;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/login/AuthFragmentBase;->c:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public E()Lcom/facebook/orca/login/AuthFragmentConfig;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->c()Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/login/AuthStateMachineConfig;->a(Ljava/lang/Class;)Lcom/facebook/orca/login/AuthFragmentConfig;

    move-result-object v0

    return-object v0
.end method

.method protected F()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;

    const-class v1, Lcom/facebook/orca/login/FirstPartySsoFragment;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;-><init>(Lcom/facebook/orca/login/OrcaReportingFragment;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->b()Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->c()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/AuthFragmentBase;->b(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method protected a(Ljava/lang/Class;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/orca/login/AuthFragmentControlBase;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->H()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 37
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 38
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 42
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/orca/login/AuthFragmentBase;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/login/AuthFragmentBase;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const-string v0, "<unknown class>"

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/facebook/orca/login/OrcaReportingFragment;->a(Landroid/os/Bundle;)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const-string v0, "viewClassName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/AuthFragmentBase;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/login/AuthFragmentBase;->c:Ljava/lang/Class;

    goto :goto_0
.end method

.method protected b()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-super {p0}, Lcom/facebook/orca/login/OrcaReportingFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->F()V

    goto :goto_0
.end method

.method public c()Lcom/facebook/orca/login/AuthStateMachineConfig;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/login/AuthFragmentBase;->b:Lcom/facebook/orca/login/AuthStateMachineConfig;

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->j()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/login/AuthNavigationController;

    .line 81
    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthNavigationController;->c()Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/AuthFragmentBase;->b:Lcom/facebook/orca/login/AuthStateMachineConfig;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/login/AuthFragmentBase;->b:Lcom/facebook/orca/login/AuthStateMachineConfig;

    return-object v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/facebook/orca/login/OrcaReportingFragment;->e(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/login/AuthFragmentBase;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "viewClassName"

    iget-object v1, p0, Lcom/facebook/orca/login/AuthFragmentBase;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method
