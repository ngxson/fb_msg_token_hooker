.class public Lcom/facebook/orca/push/sms/SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/facebook/orca/push/sms/SmsBroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/facebook/orca/push/sms/SmsBroadcastReceiver;->abortBroadcast()V

    .line 76
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p1}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 33
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 35
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsSmsNotifyEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 36
    const-class v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    .line 37
    const-class v2, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 41
    const-string v3, "pdus"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 42
    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 47
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 48
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    array-length v3, v2

    if-ge v4, v3, :cond_4

    .line 49
    aget-object v3, v2, v4

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 50
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 48
    :cond_2
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 56
    :cond_4
    invoke-virtual {v1, v6}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 57
    invoke-direct {p0}, Lcom/facebook/orca/push/sms/SmsBroadcastReceiver;->a()V

    goto :goto_0

    .line 62
    :cond_5
    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/nux/OrcaNuxManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p1, p2}, Lcom/facebook/orca/push/sms/SmsReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    invoke-direct {p0}, Lcom/facebook/orca/push/sms/SmsBroadcastReceiver;->a()V

    goto :goto_0
.end method
