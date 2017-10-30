.class Lcom/facebook/orca/sms/SmsSendMessageHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "SmsSendMessageHandler.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/sms/SmsSendMessageHandler;


# direct methods
.method constructor <init>(Lcom/facebook/orca/sms/SmsSendMessageHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler$2;->a:Lcom/facebook/orca/sms/SmsSendMessageHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/facebook/orca/sms/SmsSendMessageHandler$2;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    :pswitch_0
    return-void

    .line 90
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
