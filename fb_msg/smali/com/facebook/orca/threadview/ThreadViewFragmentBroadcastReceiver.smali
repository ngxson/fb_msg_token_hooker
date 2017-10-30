.class public abstract Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;
.super Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;
.source "ThreadViewFragmentBroadcastReceiver.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->d()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 20
    return-void
.end method

.method private static d()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    const-string v1, "com.facebook.orca.ACTION_THREAD_CACHE_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const-string v1, "com.facebook.orca.ACTION_THREAD_UPDATED_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v1, "com.facebook.orca.ACTION_REMOVED_THREAD_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string v1, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "com.facebook.orca.ACTION_THREAD_CACHE_CLEARED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;->FINISH:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;

    .line 59
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a(Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;)V

    .line 62
    :cond_1
    return-void

    .line 46
    :cond_2
    const-string v2, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;->REFRESH_DATA:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;

    goto :goto_0

    .line 48
    :cond_3
    iget-boolean v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->b:Z

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "threadid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "com.facebook.orca.ACTION_THREAD_UPDATED_FOR_UI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;->REFRESH_DATA:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;

    goto :goto_0

    .line 53
    :cond_4
    const-string v2, "com.facebook.orca.ACTION_REMOVED_THREAD_FOR_UI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;->FINISH:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;

    goto :goto_0
.end method

.method public abstract a(Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->b:Z

    .line 72
    return-void
.end method
