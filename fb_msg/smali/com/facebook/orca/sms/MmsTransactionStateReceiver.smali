.class public Lcom/facebook/orca/sms/MmsTransactionStateReceiver;
.super Landroid/app/IntentService;
.source "MmsTransactionStateReceiver.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;

.field private c:Lcom/facebook/orca/sms/MmsContentResolverHandler;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/PushHandler;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/orca/sms/MmsSmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;

    sput-object v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "MmsTransactionStateReceiver"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;

    .line 60
    iget-object v0, v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a()V

    .line 62
    const-class v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 112
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->c:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->e:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1, v1}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    if-eqz v2, :cond_1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushHandler;

    .line 118
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/facebook/orca/push/PushSource;->MMS:Lcom/facebook/orca/push/PushSource;

    invoke-interface {v0, v1, v4, v2, v5}, Lcom/facebook/orca/push/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    goto :goto_1

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_1
    sget-object v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find specified Mms Message with the id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 123
    :cond_2
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 83
    sget-object v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->a:Ljava/lang/Class;

    const-string v1, "Received onMessage"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 85
    const-string v0, "uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 86
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 88
    if-eqz v0, :cond_0

    .line 89
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 90
    sget-object v2, Landroid_src/provider/Telephony$Mms$Inbox;->a:Landroid/net/Uri;

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0, v1}, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->a(Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 94
    sget-object v2, Landroid_src/provider/Telephony$Mms$Inbox;->a:Landroid/net/Uri;

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, v1}, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->c:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 128
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->e:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p1, v1}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    return-void

    :cond_0
    move v0, v1

    .line 126
    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 43
    invoke-static {p0}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 45
    const-class v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;

    iput-object v0, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->b:Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;

    .line 47
    const-class v0, Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsContentResolverHandler;

    iput-object v0, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->c:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    .line 48
    new-instance v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/sms/MmsTransactionStateReceiver$1;-><init>(Lcom/facebook/orca/sms/MmsTransactionStateReceiver;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->d:Ljava/util/Set;

    .line 49
    const-class v0, Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsSmsLogger;

    iput-object v0, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->e:Lcom/facebook/orca/sms/MmsSmsLogger;

    .line 50
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    :try_start_0
    invoke-direct {p0, p0, p1}, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->b:Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;

    iget-object v0, v0, Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->b:Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;

    iget-object v1, v1, Lcom/facebook/orca/sms/MmsTransactionStateReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v1}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    throw v0
.end method
