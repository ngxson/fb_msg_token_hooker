.class Lcom/facebook/orca/sms/MmsSendMessageHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "MmsSendMessageHandler.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/orca/sms/MmsSendMessageHandler$SendTransactionState;

.field final synthetic c:Ljava/util/concurrent/Semaphore;

.field final synthetic d:Lcom/facebook/orca/sms/MmsSendMessageHandler;


# direct methods
.method constructor <init>(Lcom/facebook/orca/sms/MmsSendMessageHandler;Ljava/lang/String;Lcom/facebook/orca/sms/MmsSendMessageHandler$SendTransactionState;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler$1;->d:Lcom/facebook/orca/sms/MmsSendMessageHandler;

    iput-object p2, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler$1;->b:Lcom/facebook/orca/sms/MmsSendMessageHandler$SendTransactionState;

    iput-object p4, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler$1;->c:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 69
    const-string v0, "uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 70
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 71
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler$1;->b:Lcom/facebook/orca/sms/MmsSendMessageHandler$SendTransactionState;

    invoke-static {v0, v1}, Lcom/facebook/orca/sms/MmsSendMessageHandler$SendTransactionState;->a(Lcom/facebook/orca/sms/MmsSendMessageHandler$SendTransactionState;I)I

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler$1;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 75
    :cond_0
    return-void
.end method
