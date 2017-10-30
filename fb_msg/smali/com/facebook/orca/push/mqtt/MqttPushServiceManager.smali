.class public Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;
.super Ljava/lang/Object;
.source "MqttPushServiceManager.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


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
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/app/UserActivityManager;

.field private final d:Lcom/facebook/orca/auth/AuthDataStore;

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    sput-object v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/app/UserActivityManager;Lcom/facebook/orca/auth/AuthDataStore;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
        .annotation runtime Lcom/facebook/orca/annotations/FromApplication;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/app/UserActivityManager;",
            "Lcom/facebook/orca/auth/AuthDataStore;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p4, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->e:Ljavax/inject/Provider;

    .line 59
    iput-object p5, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->f:Ljavax/inject/Provider;

    .line 61
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->c:Lcom/facebook/app/UserActivityManager;

    .line 63
    iput-object p3, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->d:Lcom/facebook/orca/auth/AuthDataStore;

    .line 64
    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private a(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 208
    sget-object v2, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling check in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 212
    invoke-virtual {v0, v5, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 213
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;Lcom/facebook/orca/push/mqtt/PushStateEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(Lcom/facebook/orca/push/mqtt/PushStateEvent;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/push/mqtt/PushStateEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$2;->a:[I

    invoke-virtual {p1}, Lcom/facebook/orca/push/mqtt/PushStateEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 143
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->i:Z

    goto :goto_0

    .line 146
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->i:Z

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    const-string v1, "onActivityBroadcast"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->d()V

    .line 105
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    const-string v1, "Checking if push service should run"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 109
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->h:Z

    if-eqz v0, :cond_3

    .line 110
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    const-string v1, "Service enabled"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->h()Z

    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    const-string v1, "Service should be running"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 114
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->i:Z

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    const-string v1, "Service isn\'t started"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->e()V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->i()V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    const-string v1, "Service shouldn\'t be started"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->i:Z

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->f()V

    goto :goto_0

    .line 129
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->i:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->f()V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 152
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    const-string v1, "Ensuring service started"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    const-string v1, "Orca.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 156
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 159
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    const-string v1, "Stopping service cleanly"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->i:Z

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    const-string v1, "Orca.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 177
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->d:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v1}, Lcom/facebook/orca/auth/AuthDataStore;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    const-string v2, "Not logged in"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 197
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 191
    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->c:Lcom/facebook/app/UserActivityManager;

    invoke-virtual {v3}, Lcom/facebook/app/UserActivityManager;->e()J

    move-result-wide v3

    .line 192
    sub-long/2addr v1, v3

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 193
    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:Ljava/lang/Class;

    const-string v2, "User is idle"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 6

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->c:Lcom/facebook/app/UserActivityManager;

    invoke-virtual {v0}, Lcom/facebook/app/UserActivityManager;->e()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 203
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(J)V

    .line 204
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->h:Z

    .line 99
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->d()V

    .line 100
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v1, "com.facebook.app.USER_MAYBE_BECAME_ACTIVE_OR_INACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    :cond_0
    const-string v1, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$1;

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$1;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->g:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->g:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    .line 90
    return-void
.end method
