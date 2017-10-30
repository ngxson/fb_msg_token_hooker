.class Lcom/facebook/chatheads/ChatHeadPopUpActivity$3;
.super Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;
.source "ChatHeadPopUpActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$3;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "com.facebook.chathead.CHAT_HEAD_CLOSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$3;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-static {v1}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->b(Lcom/facebook/chatheads/ChatHeadPopUpActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$3;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->b(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Z)Z

    .line 104
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$3;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-static {v0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->a(Lcom/facebook/chatheads/ChatHeadPopUpActivity;)V

    .line 107
    :cond_0
    return-void
.end method
