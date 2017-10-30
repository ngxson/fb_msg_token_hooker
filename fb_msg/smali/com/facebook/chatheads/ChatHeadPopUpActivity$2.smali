.class Lcom/facebook/chatheads/ChatHeadPopUpActivity$2;
.super Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;
.source "ChatHeadPopUpActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$2;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-direct {p0, p2}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;->FINISH:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;

    if-ne p1, v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$2;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->moveTaskToBack(Z)Z

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;->REFRESH_DATA:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver$Action;

    if-ne p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$2;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-virtual {v0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->h()V

    goto :goto_0
.end method
