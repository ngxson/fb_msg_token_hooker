.class public Lcom/facebook/orca/contacts/picker/FriendListPickerCache;
.super Ljava/lang/Object;
.source "FriendListPickerCache.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:Lcom/facebook/orca/common/util/Clock;

.field private final e:Lcom/facebook/orca/presence/PresenceManager;

.field private f:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private m:J


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/32 v2, 0x36ee80

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a:J

    .line 18
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->b:J

    .line 19
    iput-wide v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->c:J

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    .line 39
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->e:Lcom/facebook/orca/presence/PresenceManager;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/FriendListPickerCache;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->j:Z

    return p1
.end method

.method private f()V
    .locals 7

    .prologue
    const-wide/32 v5, 0x36ee80

    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->f:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->g:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    .line 101
    iput-object v4, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->f:Lcom/google/common/collect/ImmutableList;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->h:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->i:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 106
    iput-object v4, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->h:Lcom/google/common/collect/ImmutableList;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->l:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->m:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-lez v0, :cond_2

    .line 111
    iput-object v4, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->l:Lcom/google/common/collect/ImmutableList;

    .line 114
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->f()V

    .line 49
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->f:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->f:Lcom/google/common/collect/ImmutableList;

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->h:Lcom/google/common/collect/ImmutableList;

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->i:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->j:Z

    .line 56
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->k:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->e:Lcom/facebook/orca/presence/PresenceManager;

    new-instance v1, Lcom/facebook/orca/contacts/picker/FriendListPickerCache$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache$1;-><init>(Lcom/facebook/orca/contacts/picker/FriendListPickerCache;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->j:Z

    return v0
.end method

.method public declared-synchronized c()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->f()V

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->h:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->l:Lcom/google/common/collect/ImmutableList;

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->f()V

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->l:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->f:Lcom/google/common/collect/ImmutableList;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->h:Lcom/google/common/collect/ImmutableList;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->l:Lcom/google/common/collect/ImmutableList;

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->g:J

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->i:J

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->m:J

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
