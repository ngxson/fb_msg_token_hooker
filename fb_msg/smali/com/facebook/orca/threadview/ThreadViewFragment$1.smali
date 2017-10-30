.class Lcom/facebook/orca/threadview/ThreadViewFragment$1;
.super Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;
.source "ThreadViewFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$1;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-direct {p0, p2}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;->FINISH:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;

    if-ne p1, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$1;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;->REFRESH_DATA:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;

    if-ne p1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$1;->a:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threadview/ThreadViewFragment;)V

    goto :goto_0
.end method
