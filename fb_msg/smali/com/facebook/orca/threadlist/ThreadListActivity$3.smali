.class Lcom/facebook/orca/threadlist/ThreadListActivity$3;
.super Ljava/lang/Object;
.source "ThreadListActivity.java"

# interfaces
.implements Lcom/facebook/fragment/ReportingFragment$Listener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/ThreadListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$3;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    return-void
.end method

.method public a(Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 192
    sget-boolean v0, Lcom/facebook/orca/threadview/ThreadViewUtil;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "thread_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$3;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    const-string v1, "thread_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Lcom/facebook/orca/threadlist/ThreadListActivity;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$3;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0}, Lcom/facebook/orca/debug/ActivityTracer;->a(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$3;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
