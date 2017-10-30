.class public Lcom/facebook/orca/database/AddressBookPeriodicRunner;
.super Ljava/lang/Object;
.source "AddressBookPeriodicRunner.java"


# static fields
.field private static l:Z

.field private static m:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/AlarmManager;

.field private final c:Lcom/facebook/orca/database/DbUsersPropertyUtil;

.field private final d:Lcom/facebook/orca/auth/AuthDataStore;

.field private final e:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final f:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

.field private final g:Z

.field private h:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private i:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile j:Z

.field private volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:Z

    .line 56
    sput-boolean v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->m:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/ops/OrcaServiceOperation;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:J

    .line 65
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->c:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    .line 67
    iput-object p4, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->d:Lcom/facebook/orca/auth/AuthDataStore;

    .line 68
    iput-object p2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b:Landroid/app/AlarmManager;

    .line 69
    iput-object p5, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 70
    iput-boolean p6, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g:Z

    .line 71
    new-instance v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    invoke-direct {v0, p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    iput-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    .line 73
    new-instance v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    invoke-virtual {p5, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 109
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 116
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i()V

    return-void
.end method

.method private declared-synchronized b(Z)V
    .locals 5
    .parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->k:Z

    if-nez v0, :cond_0

    .line 138
    iget-boolean v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g:Z

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    if-eqz p1, :cond_2

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:J

    .line 152
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    iget-object v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:J

    add-long/2addr v1, v3

    .line 155
    iget-object v3, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->j:Z

    return p1
.end method

.method private g()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 165
    iget-object v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->d:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v2}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v2

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    sget-boolean v2, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->l:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 169
    goto :goto_0

    .line 170
    :cond_2
    sget-boolean v2, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->m:Z

    if-nez v2, :cond_0

    .line 174
    iget-wide v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 175
    iget-object v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->c:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v3, Lcom/facebook/orca/database/DbProperties;->c:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:J

    .line 179
    :cond_3
    iget-wide v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :cond_4
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method private declared-synchronized h()V
    .locals 4

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:J

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->c:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->c:Lcom/facebook/orca/database/DbUserPropertyKey;

    iget-wide v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:J

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 4

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 196
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:J

    .line 200
    :goto_0
    iget-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:J

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:J

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 198
    :cond_0
    const-wide/16 v0, 0x2

    :try_start_1
    iget-wide v2, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f:Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a(Z)V

    .line 98
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a(Z)V

    .line 106
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 205
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->i:J

    .line 206
    return-void
.end method

.method declared-synchronized e()V
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method f()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    iget-object v1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->e:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "sync_address_book"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
