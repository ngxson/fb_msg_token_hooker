.class Lcom/facebook/chatheads/ChatHeadWindowManager$3;
.super Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;
.source "ChatHeadWindowManager.java"


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadWindowManager;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadWindowManager;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$3;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "com.facebook.chathead.CHAT_HEAD_REQUEST_CLOSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.facebook.chathead.EXTRA_IS_HOME_BUTTON_POSSIBLE_CAUSE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$3;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadWindowManager;Z)Z

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$3;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-virtual {v1, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
