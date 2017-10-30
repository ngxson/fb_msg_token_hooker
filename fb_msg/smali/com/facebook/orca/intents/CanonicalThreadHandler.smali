.class public Lcom/facebook/orca/intents/CanonicalThreadHandler;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "CanonicalThreadHandler.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private n:Lcom/facebook/orca/cache/DataCache;

.field private o:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private q:Lcom/facebook/orca/threadview/ThreadViewUtil;

.field private r:Lcom/facebook/orca/users/UserKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/intents/CanonicalThreadHandler;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/intents/CanonicalThreadHandler;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 169
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 4
    .parameter

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 124
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->f()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 128
    const-string v2, "focus_compose"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 130
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->q:Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v3}, Lcom/facebook/orca/threadview/ThreadViewUtil;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v3, "thread_id"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v0, "focus_compose"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v2}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->startActivity(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->finish()V

    .line 159
    :goto_0
    return-void

    .line 135
    :cond_0
    if-eqz v1, :cond_3

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v2

    .line 140
    if-nez v2, :cond_2

    .line 142
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->m()Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 143
    new-instance v2, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->m()Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 145
    const-string v1, "to"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    :cond_1
    :goto_1
    const-string v1, "focus_compose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->finish()V

    goto :goto_0

    .line 148
    :cond_2
    new-instance v3, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v3, v1, v2}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 149
    const-string v1, "to"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 155
    :cond_3
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/facebook/R$layout;->orca_loading_screen:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 61
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->n:Lcom/facebook/orca/cache/DataCache;

    .line 62
    sget v0, Lcom/facebook/R$id;->empty_item_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 64
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewUtil;

    iput-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->q:Lcom/facebook/orca/threadview/ThreadViewUtil;

    .line 66
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    const-string v1, "user_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->r:Lcom/facebook/orca/users/UserKey;

    .line 68
    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->r:Lcom/facebook/orca/users/UserKey;

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->finish()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v1, "fetchCanonicalThread"

    invoke-static {p0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->o:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 74
    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->o:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v2, Lcom/facebook/orca/intents/CanonicalThreadHandler$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler$1;-><init>(Lcom/facebook/orca/intents/CanonicalThreadHandler;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 87
    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    sget v2, Lcom/facebook/R$string;->thread_list_loading:I

    invoke-virtual {p0, v2}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->p:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 91
    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->n:Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->r:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/DataCache;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    const-string v2, "focus_compose"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 95
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->q:Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v3}, Lcom/facebook/orca/threadview/ThreadViewUtil;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string v3, "thread_id"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "focus_compose"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v2}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->finish()V

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "canonical_thread_handler"

    return-object v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->o:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->r:Lcom/facebook/orca/users/UserKey;

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 114
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->o:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 117
    :cond_0
    return-void
.end method
