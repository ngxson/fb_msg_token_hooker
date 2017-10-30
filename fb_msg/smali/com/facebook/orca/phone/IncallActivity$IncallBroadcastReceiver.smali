.class Lcom/facebook/orca/phone/IncallActivity$IncallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IncallActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/phone/IncallActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/phone/IncallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/orca/phone/IncallActivity$IncallBroadcastReceiver;->a:Lcom/facebook/orca/phone/IncallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/phone/IncallActivity;Lcom/facebook/orca/phone/IncallActivity$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/orca/phone/IncallActivity$IncallBroadcastReceiver;-><init>(Lcom/facebook/orca/phone/IncallActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_5

    .line 71
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity$IncallBroadcastReceiver;->a:Lcom/facebook/orca/phone/IncallActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/phone/IncallActivity;->finish()V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity$IncallBroadcastReceiver;->a:Lcom/facebook/orca/phone/IncallActivity;

    invoke-static {v0}, Lcom/facebook/orca/phone/IncallActivity;->a(Lcom/facebook/orca/phone/IncallActivity;)V

    goto :goto_0

    .line 82
    :cond_3
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity$IncallBroadcastReceiver;->a:Lcom/facebook/orca/phone/IncallActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/phone/IncallActivity;->finish()V

    goto :goto_0

    .line 86
    :cond_4
    invoke-static {}, Lcom/facebook/orca/phone/IncallActivity;->h()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown phone state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_5
    invoke-static {}, Lcom/facebook/orca/phone/IncallActivity;->h()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Phone state was null"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
