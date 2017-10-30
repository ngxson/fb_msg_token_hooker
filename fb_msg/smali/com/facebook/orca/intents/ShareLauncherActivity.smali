.class public Lcom/facebook/orca/intents/ShareLauncherActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ShareLauncherActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private n:Lcom/facebook/orca/threadlist/ThreadChooserDialog;

.field private o:Lcom/facebook/orca/threadview/ThreadViewUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/intents/ShareLauncherActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/orca/intents/ShareLauncherActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/facebook/orca/intents/ShareLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/facebook/orca/intents/ShareLauncherActivity;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 61
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a:Ljava/lang/String;

    if-ne p1, v1, :cond_2

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    :goto_0
    const-string v3, "for_sharing"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    if-eqz v2, :cond_0

    .line 71
    const-string v3, "share_text"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_0
    if-eqz v0, :cond_1

    .line 74
    const-string v2, "share_photo_uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/ShareLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/facebook/orca/intents/ShareLauncherActivity;->finish()V

    .line 78
    return-void

    .line 63
    :cond_2
    if-nez p1, :cond_3

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 66
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->o:Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v3}, Lcom/facebook/orca/threadview/ThreadViewUtil;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const-string v3, "thread_id"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/facebook/R$layout;->orca_share_launcher:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/ShareLauncherActivity;->setContentView(I)V

    .line 38
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 40
    invoke-virtual {p0}, Lcom/facebook/orca/intents/ShareLauncherActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 41
    const-class v0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    iput-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->n:Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    .line 42
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewUtil;

    iput-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->o:Lcom/facebook/orca/threadview/ThreadViewUtil;

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->n:Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    sget v1, Lcom/facebook/R$string;->sharing_dialog_title:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/ShareLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->n:Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    sget v1, Lcom/facebook/R$string;->sharing_new_thread_list_item:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/ShareLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->n:Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    new-instance v1, Lcom/facebook/orca/intents/ShareLauncherActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/intents/ShareLauncherActivity$1;-><init>(Lcom/facebook/orca/intents/ShareLauncherActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a(Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;)V

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->n:Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->show()V

    .line 53
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "share_launcher"

    return-object v0
.end method
