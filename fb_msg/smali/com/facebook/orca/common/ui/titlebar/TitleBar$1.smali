.class Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;
.super Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;
.source "TitleBar.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 136
    const-string v0, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "event"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/PushStateEvent;->fromValue(I)Lcom/facebook/orca/push/mqtt/PushStateEvent;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/TitleBar$5;->a:[I

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/PushStateEvent;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->invalidate()V

    goto :goto_0

    .line 145
    :cond_1
    const-string v0, "com.facebook.orca.ACTION_MQTT_CONFIG_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.facebook.orca.login.LoginActions.ON_LOGIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.facebook.orca.login.LoginActions.ON_LOGOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
