.class public Lcom/facebook/orca/notify/OrcaNotificationManager;
.super Ljava/lang/Object;
.source "OrcaNotificationManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
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

.field private final c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private final d:Lcom/facebook/app/UserActivityManager;

.field private final e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

.field private final f:Lcom/facebook/orca/notify/InAppNotificationController;

.field private final g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final h:Lcom/facebook/orca/auth/AuthDataStore;

.field private final i:Landroid/os/Handler;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

.field private final l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field

.field private volatile n:J

.field private volatile o:Lcom/facebook/orca/threads/FolderCounts;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    sput-object v0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/notify/NotificationSettingsUtil;Lcom/facebook/app/UserActivityManager;Lcom/facebook/orca/notify/MessagingNotificationRenderer;Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/auth/AuthDataStore;Ljava/lang/String;Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/orca/notify/NotificationSettingsUtil;",
            "Lcom/facebook/app/UserActivityManager;",
            "Lcom/facebook/orca/notify/MessagingNotificationRenderer;",
            "Lcom/facebook/orca/notify/InAppNotificationController;",
            "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
            "Lcom/facebook/orca/auth/AuthDataStore;",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    .line 82
    invoke-interface {p6}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 83
    iput-object p1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->b:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 85
    iput-object p3, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->d:Lcom/facebook/app/UserActivityManager;

    .line 86
    iput-object p4, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    .line 87
    iput-object p5, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->f:Lcom/facebook/orca/notify/InAppNotificationController;

    .line 88
    iput-object p6, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 89
    iput-object p7, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:Lcom/facebook/orca/auth/AuthDataStore;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->i:Landroid/os/Handler;

    .line 91
    iput-object p8, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->j:Ljava/lang/String;

    .line 92
    iput-object p9, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->k:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    .line 93
    iput-object p10, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->l:Ljavax/inject/Provider;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/OrcaNotificationManager;)Lcom/facebook/orca/notify/MessagingNotificationRenderer;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/notify/OrcaNotificationManager;Lcom/facebook/orca/push/FriendInstallNotification;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Lcom/facebook/orca/push/FriendInstallNotification;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/OrcaNotificationManager;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/push/PushSource;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/push/PushSource;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messaging_push_notif_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->k:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->k:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;)Z
    .locals 3
    .parameter

    .prologue
    .line 272
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 279
    sget-object v0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking other FB apps to see if thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is in FG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 282
    :try_start_0
    new-instance v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 283
    const-string v0, "userId"

    invoke-virtual {v3, v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 284
    const-string v0, "threadId"

    invoke-virtual {v3, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 292
    if-eqz v1, :cond_0

    .line 294
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 300
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 311
    :cond_0
    :goto_1
    return v6

    :cond_1
    move v0, v6

    .line 296
    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 304
    :catch_0
    move-exception v0

    .line 306
    sget-object v0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Ljava/lang/Class;

    const-string v1, "Caught security exception checking orca pref"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :catch_1
    move-exception v0

    .line 310
    sget-object v1, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Ljava/lang/Class;

    const-string v2, "Caught exception checking orca pref"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private b()V
    .locals 9

    .prologue
    .line 326
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 328
    monitor-exit v1

    .line 339
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 331
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 332
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 334
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/32 v7, 0x36ee80

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 335
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/notify/OrcaNotificationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->d()V

    return-void
.end method

.method private b(Lcom/facebook/orca/push/FriendInstallNotification;)V
    .locals 3
    .parameter

    .prologue
    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    const-string v1, "type"

    const/16 v2, 0x2713

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v1}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v1

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/facebook/orca/push/FriendInstallNotification;->e()Lcom/facebook/orca/push/PushSource;

    move-result-object v1

    const-string v2, "logged_out_user"

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/push/PushSource;Ljava/lang/String;Ljava/util/Map;)V

    .line 269
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    invoke-virtual {p1}, Lcom/facebook/orca/push/FriendInstallNotification;->e()Lcom/facebook/orca/push/PushSource;

    move-result-object v1

    const-string v2, "notifications_disabled"

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/push/PushSource;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    invoke-interface {v1, p1}, Lcom/facebook/orca/notify/MessagingNotificationRenderer;->a(Lcom/facebook/orca/push/FriendInstallNotification;)Z

    move-result v1

    .line 260
    if-eqz v1, :cond_2

    .line 261
    invoke-virtual {p1}, Lcom/facebook/orca/push/FriendInstallNotification;->e()Lcom/facebook/orca/push/PushSource;

    move-result-object v1

    const-string v2, "user_alerted_"

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/push/PushSource;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/push/FriendInstallNotification;->e()Lcom/facebook/orca/push/PushSource;

    move-result-object v1

    const-string v2, "user_not_alerted_"

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/push/PushSource;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/Message;)V
    .locals 6
    .parameter

    .prologue
    .line 316
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    monitor-enter v1

    .line 317
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_0
    monitor-exit v1

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
    const-string v0, "logged_out_user"

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-object v0, Lcom/facebook/orca/push/PushSource;->SMS:Lcom/facebook/orca/push/PushSource;

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->l:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    const-string v0, "notifications_disabled"

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 170
    const-string v0, "notifications_disabled_thread"

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_4
    invoke-direct {p0, p2}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    const-string v0, "has_recent_message"

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Ljava/lang/Class;

    const-string v1, "Ignoring message that was already processed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->h:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    const-string v0, "thread_in_fg_elsewhere"

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Ljava/lang/Class;

    const-string v1, "Thread is in FG elsewhere, eating notification"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_6
    const/4 v1, 0x0

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->n:J

    .line 197
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->f:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/threads/Message;)V

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->d:Lcom/facebook/app/UserActivityManager;

    invoke-virtual {v0}, Lcom/facebook/app/UserActivityManager;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->d:Lcom/facebook/app/UserActivityManager;

    invoke-virtual {v0}, Lcom/facebook/app/UserActivityManager;->e()J

    move-result-wide v0

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 203
    sub-long v0, v2, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    .line 204
    sget-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_ACTIVE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    .line 208
    :goto_1
    sget-object v1, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Ljava/lang/Class;

    const-string v2, "Alerting user (in app)"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    invoke-interface {v1, p1, p2, v0}, Lcom/facebook/orca/notify/MessagingNotificationRenderer;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;)Z

    move-result v1

    .line 226
    :cond_7
    :goto_2
    if-eqz v1, :cond_b

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_alerted_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p2}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Lcom/facebook/orca/threads/Message;)V

    .line 232
    invoke-direct {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b()V

    goto/16 :goto_0

    .line 206
    :cond_8
    sget-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_IDLE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    goto :goto_1

    .line 211
    :cond_9
    sget-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->NOT_IN_APP:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    .line 213
    sget-object v2, Lcom/facebook/orca/push/PushSource;->C2DM:Lcom/facebook/orca/push/PushSource;

    if-eq p3, v2, :cond_a

    sget-object v2, Lcom/facebook/orca/push/PushSource;->SMS:Lcom/facebook/orca/push/PushSource;

    if-eq p3, v2, :cond_a

    sget-object v2, Lcom/facebook/orca/push/PushSource;->MMS:Lcom/facebook/orca/push/PushSource;

    if-eq p3, v2, :cond_a

    sget-object v2, Lcom/facebook/orca/push/PushSource;->C2DM_OVER_MQTT:Lcom/facebook/orca/push/PushSource;

    if-ne p3, v2, :cond_7

    .line 219
    :cond_a
    sget-object v1, Lcom/facebook/orca/notify/OrcaNotificationManager;->a:Ljava/lang/Class;

    const-string v2, "Alerting user (not in app)"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    sget-object v2, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->NOT_IN_APP:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    invoke-interface {v1, p1, p2, v2}, Lcom/facebook/orca/notify/MessagingNotificationRenderer;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;)Z

    move-result v1

    goto :goto_2

    .line 234
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_not_alerted_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->c:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 367
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->o:Lcom/facebook/orca/threads/FolderCounts;

    .line 368
    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/threads/FolderCounts;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-wide v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->n:J

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 380
    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a()V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v4, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->i:Landroid/os/Handler;

    new-instance v5, Lcom/facebook/orca/notify/OrcaNotificationManager$5;

    invoke-direct {v5, p0}, Lcom/facebook/orca/notify/OrcaNotificationManager$5;-><init>(Lcom/facebook/orca/notify/OrcaNotificationManager;)V

    sub-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    invoke-interface {v0}, Lcom/facebook/orca/notify/MessagingNotificationRenderer;->a()V

    .line 406
    return-void
.end method

.method public a(Lcom/facebook/orca/push/FriendInstallNotification;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/notify/OrcaNotificationManager$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/notify/OrcaNotificationManager$3;-><init>(Lcom/facebook/orca/notify/OrcaNotificationManager;Lcom/facebook/orca/push/FriendInstallNotification;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public a(Lcom/facebook/orca/threads/FolderCounts;)V
    .locals 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->o:Lcom/facebook/orca/threads/FolderCounts;

    .line 358
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->i:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/notify/OrcaNotificationManager$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/notify/OrcaNotificationManager$4;-><init>(Lcom/facebook/orca/notify/OrcaNotificationManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/notify/OrcaNotificationManager$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/notify/OrcaNotificationManager$2;-><init>(Lcom/facebook/orca/notify/OrcaNotificationManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/notify/OrcaNotificationManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/orca/notify/OrcaNotificationManager$1;-><init>(Lcom/facebook/orca/notify/OrcaNotificationManager;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager;->e:Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    invoke-interface {v0, p1}, Lcom/facebook/orca/notify/MessagingNotificationRenderer;->b(Ljava/lang/String;)V

    .line 399
    return-void
.end method
