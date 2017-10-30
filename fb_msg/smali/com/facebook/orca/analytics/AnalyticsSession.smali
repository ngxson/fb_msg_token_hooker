.class Lcom/facebook/orca/analytics/AnalyticsSession;
.super Ljava/lang/Object;
.source "AnalyticsSession.java"


# instance fields
.field private final a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

.field private final b:Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

.field private final c:Lcom/facebook/orca/analytics/AnalyticsStorage;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Z

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>(Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;Lcom/facebook/orca/analytics/AnalyticsStorage;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->h:Z

    .line 33
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    .line 34
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    .line 40
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    .line 41
    iput-object p2, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->b:Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    .line 42
    iput-object p3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->c:Lcom/facebook/orca/analytics/AnalyticsStorage;

    .line 43
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 154
    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    .line 156
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->f:J

    .line 157
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->g:J

    .line 158
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->h:Z

    .line 160
    iput-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    .line 161
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->l()V

    .line 162
    return-void
.end method

.method private declared-synchronized l()V
    .locals 4

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "marauder_session_id"

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    const-string v1, "marauder_batch_id"

    iget-wide v2, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_0
    :try_start_1
    const-string v1, "marauder_session_id"

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    const-string v1, "marauder_batch_id"

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->f:J

    .line 63
    return-void
.end method

.method public a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 8
    .parameter

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->h:Z

    if-nez v0, :cond_0

    .line 137
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->c:Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/orca/analytics/AnalyticsStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 141
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->g()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->h:Z

    .line 143
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->l()V

    .line 145
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->j()V

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->k()V

    .line 119
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->l()V

    .line 122
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->g()V

    .line 123
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->g:J

    .line 71
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->f:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    return-wide v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    .line 79
    return-void
.end method

.method public f()V
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->b:Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->c:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->d:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->b:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->f:J

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->e:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    .line 92
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 96
    return-void

    .line 94
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public g()V
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->b:Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->c:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->d:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->b:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    iget-wide v3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->f:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->a:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v2, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->e:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    iget-wide v3, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 107
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->c:Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;->a()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->h:Z

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsSession;->j:J

    .line 133
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->i()V

    .line 149
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->k()V

    .line 150
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsSession;->g()V

    .line 151
    return-void
.end method
