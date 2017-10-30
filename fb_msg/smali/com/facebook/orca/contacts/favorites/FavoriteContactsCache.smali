.class public Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;
.super Ljava/lang/Object;
.source "FavoriteContactsCache.java"


# instance fields
.field private a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:Lcom/facebook/orca/common/util/Clock;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/Clock;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->c:Lcom/facebook/orca/common/util/Clock;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->b:J

    .line 25
    return-void
.end method

.method private declared-synchronized d()V
    .locals 4

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->a:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->a:Lcom/google/common/collect/ImmutableList;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->b:J

    .line 30
    return-void
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
    .line 33
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->a:Lcom/google/common/collect/ImmutableList;

    .line 34
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/google/common/collect/ImmutableList;
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
    .line 38
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->d()V

    .line 39
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->a:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()J
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
