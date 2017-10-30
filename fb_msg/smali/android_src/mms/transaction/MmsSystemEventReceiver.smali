.class public Landroid_src/mms/transaction/MmsSystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsSystemEventReceiver.java"


# static fields
.field private static a:Landroid_src/mms/transaction/MmsSystemEventReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 86
    invoke-static {p0}, Landroid_src/mms/transaction/MmsSystemEventReceiver;->b(Landroid/content/Context;)V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "fb-mms:MmsSystemEventReceiver"

    const-string v2, "registerForConnectionStateChanges"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    sget-object v1, Landroid_src/mms/transaction/MmsSystemEventReceiver;->a:Landroid_src/mms/transaction/MmsSystemEventReceiver;

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Landroid_src/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v1}, Landroid_src/mms/transaction/MmsSystemEventReceiver;-><init>()V

    sput-object v1, Landroid_src/mms/transaction/MmsSystemEventReceiver;->a:Landroid_src/mms/transaction/MmsSystemEventReceiver;

    .line 97
    :cond_1
    sget-object v1, Landroid_src/mms/transaction/MmsSystemEventReceiver;->a:Landroid_src/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "fb-mms:MmsSystemEventReceiver"

    const-string v1, "unRegisterForConnectionStateChanges"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    sget-object v0, Landroid_src/mms/transaction/MmsSystemEventReceiver;->a:Landroid_src/mms/transaction/MmsSystemEventReceiver;

    if-eqz v0, :cond_1

    .line 106
    :try_start_0
    sget-object v0, Landroid_src/mms/transaction/MmsSystemEventReceiver;->a:Landroid_src/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "fb-mms:MmsSystemEventReceiver"

    const-string v1, "wakeUpService: start transaction service ..."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid_src/mms/ClassesToUse;->a:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 59
    invoke-static {v4}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "fb-mms:MmsSystemEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string v0, "deleted_contents"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 66
    invoke-static {}, Landroid_src/mms/util/PduCache;->b()Landroid_src/mms/util/PduCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid_src/mms/util/PduCache;->a(Landroid/net/Uri;)Landroid_src/mms/util/PduCacheEntry;

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v4}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    const-string v1, "fb-mms:MmsSystemEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANY_DATA_STATE event received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_3
    const-string v1, "CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-static {p1}, Landroid_src/mms/transaction/MmsSystemEventReceiver;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 77
    :cond_4
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {p1, v3, v3}, Landroid_src/mms/transaction/MessagingNotification;->a(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method
