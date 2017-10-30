.class public Lcom/facebook/orca/threadview/ThreadViewActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ThreadViewActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private n:Lcom/facebook/orca/threadview/ThreadViewFragment;

.field private o:Lcom/facebook/orca/nux/ThreadTitleNuxView;

.field private p:Lcom/facebook/orca/nux/ThreadNuxController;

.field private q:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private r:Lcom/facebook/orca/common/ui/titlebar/DivebarController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lcom/facebook/R$layout;->orca_thread_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 54
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->q:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 55
    const-class v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    .line 58
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 59
    sget v0, Lcom/facebook/R$id;->thread_title_nux:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/nux/ThreadTitleNuxView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->o:Lcom/facebook/orca/nux/ThreadTitleNuxView;

    .line 61
    new-instance v1, Lcom/facebook/orca/nux/ThreadNuxController;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v2, Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-direct {v1, v0}, Lcom/facebook/orca/nux/ThreadNuxController;-><init>(Lcom/facebook/orca/nux/OrcaNuxManager;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->p:Lcom/facebook/orca/nux/ThreadNuxController;

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->p:Lcom/facebook/orca/nux/ThreadNuxController;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->o:Lcom/facebook/orca/nux/ThreadTitleNuxView;

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/orca/nux/ThreadNuxController;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/orca/nux/ThreadTitleNuxView;)V

    .line 65
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/facebook/R$id;->thread_view_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewFragment;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Landroid/app/Activity;)V

    .line 71
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "thread_view"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->r:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d()V

    .line 156
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/facebook/orca/activity/FbFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->d(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 112
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onResume()V

    .line 113
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    sget-object v1, Lcom/facebook/orca/creation/CreateThreadActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    .line 118
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->q:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v3, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v4, "flow"

    invoke-direct {v3, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v3

    sget-object v4, Lcom/facebook/orca/creation/CreateThreadActivity;->t:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 122
    sget-object v1, Lcom/facebook/orca/creation/CreateThreadActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onUserInteraction()V

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->b()V

    .line 108
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onWindowFocusChanged(Z)V

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Z)V

    .line 77
    return-void
.end method
