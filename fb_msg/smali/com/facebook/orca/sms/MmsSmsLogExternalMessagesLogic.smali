.class public Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;
.super Ljava/lang/Object;
.source "MmsSmsLogExternalMessagesLogic.java"


# instance fields
.field private final a:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/orca/cache/DataCache;

.field private final d:Lcom/facebook/orca/database/DbParticipantsSerialization;

.field private final e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

.field private final f:Lcom/facebook/orca/database/DbPropertyUtil;

.field private final g:Lcom/facebook/orca/common/util/Clock;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Ljavax/inject/Provider;Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Lcom/facebook/orca/database/DbParticipantsSerialization;Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;Lcom/facebook/orca/database/DbPropertyUtil;Lcom/facebook/orca/common/util/Clock;)V
    .locals 0
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
            "Lcom/facebook/orca/cache/DataCache;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/orca/database/ThreadsDatabaseSupplier;",
            "Lcom/facebook/orca/database/DbParticipantsSerialization;",
            "Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;",
            "Lcom/facebook/orca/database/DbPropertyUtil;",
            "Lcom/facebook/orca/common/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->c:Lcom/facebook/orca/cache/DataCache;

    .line 47
    iput-object p2, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->b:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->a:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    .line 49
    iput-object p4, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    .line 50
    iput-object p5, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    .line 51
    iput-object p6, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->f:Lcom/facebook/orca/database/DbPropertyUtil;

    .line 52
    iput-object p7, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->g:Lcom/facebook/orca/common/util/Clock;

    .line 53
    return-void
.end method

.method private c()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->h:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(J)I
    .locals 5
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->a:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v1}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT msg_id, sender FROM messages WHERE sent_internally_time = 0 and timestamp_ms > ?"

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 111
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v2}, Lcom/facebook/orca/threads/MessagingIdUtil;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/facebook/orca/threads/MessagingIdUtil;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 131
    :goto_1
    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const/4 v0, -0x1

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->h:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    iget-object v2, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->g:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v2}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 75
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->f:Lcom/facebook/orca/database/DbPropertyUtil;

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-static {v1}, Lcom/facebook/orca/database/DbProperties;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/facebook/orca/database/DbPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v1

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v3, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->h:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v0, v3, v4, v5}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v3

    .line 88
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->a(J)I

    move-result v0

    .line 91
    iget-object v5, p0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v6, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->h:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v5, v6, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    goto :goto_0
.end method
