.class public Lcom/facebook/orca/login/OrcaReportingFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "OrcaReportingFragment.java"

# interfaces
.implements Lcom/facebook/fragment/ReportingFragment;


# instance fields
.field protected a:Lcom/facebook/fragment/ReportingFragment$Listener;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/login/OrcaReportingFragment;->b:Z

    return-void
.end method


# virtual methods
.method public J()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/facebook/orca/login/OrcaReportingFragment;->b:Z

    return v0
.end method

.method public a(Lcom/facebook/fragment/ReportingFragment$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/login/OrcaReportingFragment;->a:Lcom/facebook/fragment/ReportingFragment$Listener;

    .line 104
    return-void
.end method

.method protected a(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/orca/login/OrcaReportingFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;-><init>(Lcom/facebook/orca/login/OrcaReportingFragment;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->c()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/OrcaReportingFragment;->b(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method protected varargs a([Landroid/support/v4/app/Fragment;)V
    .locals 4
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/facebook/orca/login/OrcaReportingFragment;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 126
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 127
    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 132
    return-void
.end method

.method protected b(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/login/OrcaReportingFragment;->a:Lcom/facebook/fragment/ReportingFragment$Listener;

    invoke-interface {v0, p0, p1}, Lcom/facebook/fragment/ReportingFragment$Listener;->a(Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/login/OrcaReportingFragment;->b:Z

    .line 82
    return-void
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/facebook/orca/login/OrcaReportingFragment;->n()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->e()I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->c()V

    .line 148
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    return-object v0
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/login/OrcaReportingFragment;->a:Lcom/facebook/fragment/ReportingFragment$Listener;

    invoke-interface {v0, p1}, Lcom/facebook/fragment/ReportingFragment$Listener;->a(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->g()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/login/OrcaReportingFragment;->b:Z

    .line 68
    return-void
.end method
