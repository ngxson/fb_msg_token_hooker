.class public Lcom/facebook/orca/push/c2dm/C2DMReceiver;
.super Landroid/app/IntentService;
.source "C2DMReceiver.java"


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
.field private b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

.field private c:Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/c2dm/C2DMPushHandler;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/orca/push/c2dm/C2DMPushRegistrationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;

    sput-object v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "C2DMReceiver"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b(Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Ljava/lang/Class;

    const-string v1, "onUnregistrered"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    .line 102
    iget-object v0, v0, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a()V

    .line 105
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 110
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v2, "unregistered"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v7}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    sget-object v3, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dmControl: registrationId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 119
    :cond_0
    if-eqz v2, :cond_1

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->i()V

    .line 122
    invoke-direct {p0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a()V

    .line 160
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz v1, :cond_3

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->i()V

    .line 127
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registration error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, v1}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a(Ljava/lang/String;)V

    .line 129
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->j()J

    move-result-wide v2

    .line 132
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling registration retry, backoff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.RETRY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 137
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-virtual {v0, v7, v5, v6, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(J)V

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    const-string v2, "io_exception_on_success"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registration error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Ljava/lang/Class;

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 163
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Ljava/lang/Class;

    const-string v1, "Received onMessage"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMPushHandler;

    .line 169
    invoke-interface {v0, v1}, Lcom/facebook/orca/push/c2dm/C2DMPushHandler;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Ljava/lang/Class;

    const-string v1, "onC2DMPushTokenRegistered"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMPushRegistrationHandler;

    invoke-interface {v0}, Lcom/facebook/orca/push/c2dm/C2DMPushRegistrationHandler;->b()V

    .line 187
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 64
    invoke-static {p0}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 65
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 66
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    .line 67
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->c:Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    .line 68
    new-instance v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver$1;-><init>(Lcom/facebook/orca/push/c2dm/C2DMReceiver;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->d:Ljava/util/Set;

    .line 69
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMPushRegistrationHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMPushRegistrationHandler;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMPushRegistrationHandler;

    .line 70
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->c:Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    iget-object v0, v0, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    .line 91
    return-void

    .line 77
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->c:Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    iget-object v1, v1, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v1}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    throw v0

    .line 79
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RETRY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
