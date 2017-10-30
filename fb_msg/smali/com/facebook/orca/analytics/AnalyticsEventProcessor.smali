.class public Lcom/facebook/orca/analytics/AnalyticsEventProcessor;
.super Ljava/lang/Object;
.source "AnalyticsEventProcessor.java"


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
.field private b:J

.field private c:J

.field private d:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

.field private final f:Lcom/facebook/orca/analytics/AnalyticsStorage;

.field private final g:Lcom/facebook/orca/app/AppInitLock;

.field private final h:Lcom/facebook/orca/common/util/Clock;

.field private final i:Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;

.field private final j:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

.field private k:Z

.field private final l:Lcom/facebook/orca/analytics/AnalyticsSession;

.field private final m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:J

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;Lcom/facebook/orca/analytics/AnalyticsStorage;Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;Lcom/facebook/orca/app/AppInitLock;Lcom/facebook/orca/common/util/Clock;)V
    .locals 4
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
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;",
            "Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;",
            "Lcom/facebook/orca/analytics/AnalyticsStorage;",
            "Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;",
            "Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;",
            "Lcom/facebook/orca/app/AppInitLock;",
            "Lcom/facebook/orca/common/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b:J

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c:J

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->k:Z

    .line 53
    iput-wide v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->n:J

    .line 54
    iput-wide v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->o:J

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->p:I

    .line 66
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->m:Ljavax/inject/Provider;

    .line 67
    iput-object p2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    .line 68
    iput-object p4, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->f:Lcom/facebook/orca/analytics/AnalyticsStorage;

    .line 69
    iput-object p7, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->g:Lcom/facebook/orca/app/AppInitLock;

    .line 70
    iput-object p8, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->h:Lcom/facebook/orca/common/util/Clock;

    .line 71
    iput-object p5, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->i:Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;

    .line 72
    iput-object p6, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->j:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    .line 73
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-direct {v0, p2, p3, p4}, Lcom/facebook/orca/analytics/AnalyticsSession;-><init>(Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;Lcom/facebook/orca/analytics/AnalyticsStorage;)V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    .line 77
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 253
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->n:J

    .line 254
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->a:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 255
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->g()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c(J)V

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->j:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->h()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d(J)V

    .line 225
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->j:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b(JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 227
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsEventProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b()V

    return-void
.end method

.method private a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 163
    const-string v0, "session_timeout"

    invoke-virtual {p1, v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->g:Lcom/facebook/orca/app/AppInitLock;

    invoke-virtual {v0}, Lcom/facebook/orca/app/AppInitLock;->b()V

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsSession;->f()V

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsSession;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsSession;->j()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->f:Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->p:I

    .line 121
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/32 v1, 0xa8c0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 122
    if-eqz v0, :cond_1

    .line 124
    const-string v1, "BACKGROUND_AUTO_SET"

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 128
    :cond_2
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 130
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 131
    invoke-virtual {v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a(JLjava/lang/String;)V

    .line 134
    :cond_3
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 135
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 136
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c()V

    .line 138
    const-string v1, "resume_upload"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->k:Z

    .line 142
    :cond_4
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->j()V

    .line 145
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d()V

    .line 152
    :cond_5
    :goto_1
    const-string v1, "stop_upload"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->k:Z

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    goto :goto_0

    .line 146
    :cond_6
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->i()V

    .line 149
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private b(J)V
    .locals 2
    .parameter

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->o:J

    .line 268
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->g:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 269
    return-void
.end method

.method private b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 167
    iget v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->p:I

    int-to-long v1, v1

    const-wide/16 v3, 0x32

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    const-string v1, "truncate_batch"

    invoke-virtual {p1, v1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->h:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 176
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->h:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    .line 231
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->f()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 233
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->f:Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {v2}, Lcom/facebook/orca/analytics/AnalyticsStorage;->d()V

    .line 235
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b(J)V

    .line 237
    :cond_1
    return-void
.end method

.method private c(J)V
    .locals 2
    .parameter

    .prologue
    .line 290
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b:J

    .line 291
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->f:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 292
    return-void
.end method

.method private c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->f:Lcom/facebook/orca/analytics/AnalyticsStorage;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/analytics/AnalyticsStorage;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsSession;->e()V

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsSession;->b(J)V

    .line 183
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->e()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->p:I

    .line 185
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->k:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->h:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a(J)V

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->f:Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;->d()V

    .line 245
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a:Ljava/lang/Class;

    const-string v1, "Uploading analytics report"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->i:Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;->a()V

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->p:I

    .line 250
    :cond_0
    return-void
.end method

.method private d(J)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c:J

    .line 302
    return-void
.end method

.method private d(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 188
    const/4 v1, 0x0

    .line 189
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v2}, Lcom/facebook/orca/analytics/AnalyticsSession;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 201
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsSession;->a(Ljava/lang/String;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsSession;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 205
    return-void

    .line 192
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v3}, Lcom/facebook/orca/analytics/AnalyticsSession;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private e()J
    .locals 4

    .prologue
    .line 258
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->a:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->n:J

    .line 263
    :cond_0
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->n:J

    return-wide v0
.end method

.method private e(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    const-string v0, "key_ui_event"

    invoke-virtual {p1, v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v2}, Lcom/facebook/orca/analytics/AnalyticsSession;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsSession;->a(J)V

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->l:Lcom/facebook/orca/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsSession;->g()V

    .line 215
    :cond_1
    return-void
.end method

.method private f()J
    .locals 4

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->g:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->o:J

    .line 277
    :cond_0
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->o:J

    return-wide v0
.end method

.method private g()J
    .locals 4

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->e:Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsDbProperties;->f:Lcom/facebook/orca/analytics/AnalyticsDbPropertyKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b:J

    .line 286
    :cond_0
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->b:J

    return-wide v0
.end method

.method private h()J
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsEventProcessor$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor$1;-><init>(Lcom/facebook/orca/analytics/AnalyticsEventProcessor;)V

    const-string v2, "AnalyticsEventProcessor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method
