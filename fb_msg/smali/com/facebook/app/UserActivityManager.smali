.class public Lcom/facebook/app/UserActivityManager;
.super Ljava/lang/Object;
.source "UserActivityManager.java"


# instance fields
.field private final a:Lcom/facebook/orca/app/ActivityBroadcaster;

.field private final b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final c:Lcom/facebook/orca/common/util/Clock;

.field private final d:Landroid/app/KeyguardManager;

.field private final e:Lcom/facebook/app/UserActivityManager$MyActivityListener;

.field private volatile f:Z

.field private volatile g:J

.field private volatile h:J

.field private volatile i:J


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/ActivityBroadcaster;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/common/util/Clock;Landroid/app/KeyguardManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/app/UserActivityManager;->a:Lcom/facebook/orca/app/ActivityBroadcaster;

    .line 47
    iput-object p2, p0, Lcom/facebook/app/UserActivityManager;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 48
    iput-object p3, p0, Lcom/facebook/app/UserActivityManager;->c:Lcom/facebook/orca/common/util/Clock;

    .line 49
    iput-object p4, p0, Lcom/facebook/app/UserActivityManager;->d:Landroid/app/KeyguardManager;

    .line 50
    new-instance v0, Lcom/facebook/app/UserActivityManager$MyActivityListener;

    invoke-direct {v0, p0}, Lcom/facebook/app/UserActivityManager$MyActivityListener;-><init>(Lcom/facebook/app/UserActivityManager;)V

    iput-object v0, p0, Lcom/facebook/app/UserActivityManager;->e:Lcom/facebook/app/UserActivityManager$MyActivityListener;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/facebook/app/UserActivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/app/UserActivityManager;->h()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/app/UserActivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/app/UserActivityManager;->g()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/app/UserActivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/app/UserActivityManager;->i()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/app/UserActivityManager;->f:Z

    .line 56
    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/app/UserActivityManager;->h:J

    .line 57
    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->a:Lcom/facebook/orca/app/ActivityBroadcaster;

    const-string v1, "com.facebook.app.USER_MAYBE_BECAME_ACTIVE_OR_INACTIVE"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/ActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/app/UserActivityManager;->f:Z

    .line 63
    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/app/UserActivityManager;->g:J

    .line 64
    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->a:Lcom/facebook/orca/app/ActivityBroadcaster;

    const-string v1, "com.facebook.app.USER_MAYBE_BECAME_ACTIVE_OR_INACTIVE"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/ActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 69
    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/app/UserActivityManager;->i:J

    .line 70
    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->a:Lcom/facebook/orca/app/ActivityBroadcaster;

    const-string v1, "com.facebook.app.USER_MAYBE_BECAME_ACTIVE_OR_INACTIVE"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/ActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->d:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/facebook/app/UserActivityManager;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/app/UserActivityManager;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/facebook/app/UserActivityManager;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/app/UserActivityManager;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/app/UserActivityManager;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x2710

    const/4 v0, 0x1

    .line 125
    iget-object v1, p0, Lcom/facebook/app/UserActivityManager;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v1

    .line 126
    iget-wide v3, p0, Lcom/facebook/app/UserActivityManager;->i:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v3, p0, Lcom/facebook/app/UserActivityManager;->f:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/facebook/app/UserActivityManager;->g:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/facebook/app/UserActivityManager;->f:Z

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/facebook/app/UserActivityManager;->i:J

    return-wide v0
.end method

.method public f()Lcom/facebook/app/UserActivityManager$MyActivityListener;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/app/UserActivityManager;->e:Lcom/facebook/app/UserActivityManager$MyActivityListener;

    return-object v0
.end method
