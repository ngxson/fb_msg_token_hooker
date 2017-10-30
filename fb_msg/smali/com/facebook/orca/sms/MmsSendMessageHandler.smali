.class public Lcom/facebook/orca/sms/MmsSendMessageHandler;
.super Ljava/lang/Object;
.source "MmsSendMessageHandler.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

.field private final e:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/orca/sms/MmsSendMessageHandler;

    sput-object v0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->a:Ljava/lang/Class;

    .line 40
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->b:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/sms/MmsContentResolverHandler;Landroid/net/ConnectivityManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->c:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    .line 52
    iput-object p3, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->e:Landroid/net/ConnectivityManager;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->e:Landroid/net/ConnectivityManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/facebook/orca/threads/Message;Ljava/util/Set;)Lcom/facebook/orca/threads/Message;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/orca/threads/Message;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Lcom/facebook/orca/threads/Message;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 65
    new-instance v2, Lcom/facebook/orca/sms/MmsSendMessageHandler$SendTransactionState;

    invoke-direct {v2, v8}, Lcom/facebook/orca/sms/MmsSendMessageHandler$SendTransactionState;-><init>(Lcom/facebook/orca/sms/MmsSendMessageHandler$1;)V

    .line 66
    new-instance v3, Lcom/facebook/orca/sms/MmsSendMessageHandler$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/facebook/orca/sms/MmsSendMessageHandler$1;-><init>(Lcom/facebook/orca/sms/MmsSendMessageHandler;Ljava/lang/String;Lcom/facebook/orca/sms/MmsSendMessageHandler$SendTransactionState;Ljava/util/concurrent/Semaphore;)V

    .line 77
    iget-object v4, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->c:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    sget-object v3, Landroid_src/provider/Telephony$Mms$Outbox;->a:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 82
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->c:Landroid/content/Context;

    sget-object v6, Landroid_src/mms/ClassesToUse;->a:Ljava/lang/Class;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const-string v5, "uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v3, "type"

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-direct {p0}, Lcom/facebook/orca/sms/MmsSendMessageHandler;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-direct {p0, v0}, Lcom/facebook/orca/sms/MmsSendMessageHandler;->a(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Network isn\'t availible to send Mms"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    const-wide/16 v3, 0x78

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    invoke-direct {p0, v0}, Lcom/facebook/orca/sms/MmsSendMessageHandler;->a(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Semaphore could not acquire requested permits"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/facebook/orca/sms/MmsSendMessageHandler;->b:Lcom/facebook/orca/debug/WtfToken;

    sget-object v2, Lcom/facebook/orca/sms/MmsSendMessageHandler;->a:Ljava/lang/Class;

    const-string v3, "Send message timed out"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    throw v0

    .line 99
    :cond_1
    invoke-static {v2}, Lcom/facebook/orca/sms/MmsSendMessageHandler$SendTransactionState;->a(Lcom/facebook/orca/sms/MmsSendMessageHandler$SendTransactionState;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 100
    invoke-direct {p0, v0}, Lcom/facebook/orca/sms/MmsSendMessageHandler;->a(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Mms send failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSendMessageHandler;->c:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid_src/provider/Telephony$Threads;->a(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    .line 108
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_3
    new-instance v2, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/MessageBuilder;->f(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/threads/Message$ChannelSource;->MMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->v()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 120
    return-object v0
.end method
