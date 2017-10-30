.class public Lcom/facebook/orca/auth/AuthDataStoreBase;
.super Ljava/lang/Object;
.source "AuthDataStoreBase.java"

# interfaces
.implements Lcom/facebook/orca/auth/AuthDataStore;


# instance fields
.field protected final a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field protected final b:Lcom/facebook/orca/users/UserSerialization;

.field protected final c:Lcom/facebook/orca/debug/OrcaErrorReporter;

.field private d:Lcom/facebook/orca/users/User;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/debug/OrcaErrorReporter;Lcom/facebook/orca/users/UserSerialization;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 34
    iput-object p2, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->c:Lcom/facebook/orca/debug/OrcaErrorReporter;

    .line 35
    iput-object p3, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 36
    return-void
.end method

.method private declared-synchronized f()Lcom/facebook/orca/users/User;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;

    if-eqz v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 113
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/AuthPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->b:Lcom/facebook/orca/users/UserSerialization;

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Z
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/auth/AuthDataStoreBase;->f()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/auth/AuthDataStoreBase;->c()Lcom/facebook/orca/auth/FacebookCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/facebook/orca/auth/FacebookCredentials;)V
    .locals 4
    .parameter

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/facebook/orca/prefs/AuthPrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 48
    sget-object v1, Lcom/facebook/orca/prefs/AuthPrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1}, Lcom/facebook/orca/auth/FacebookCredentials;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 49
    sget-object v1, Lcom/facebook/orca/prefs/AuthPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/users/User;)V
    .locals 3
    .parameter

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/User;)Ljava/lang/String;

    move-result-object v1

    .line 72
    sget-object v2, Lcom/facebook/orca/prefs/AuthPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v2, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 74
    iput-object p1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->c:Lcom/facebook/orca/debug/OrcaErrorReporter;

    iget-object v1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/debug/OrcaErrorReporter;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/auth/AuthDataStoreBase;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/facebook/orca/users/User;)V
    .locals 3
    .parameter

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;

    if-eqz v0, :cond_3

    .line 81
    new-instance v0, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->n()Lcom/facebook/common/util/TriState;

    move-result-object v1

    sget-object v2, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-ne v1, v2, :cond_0

    .line 83
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->t()Lcom/facebook/common/util/TriState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 88
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Z)V

    .line 92
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object p1

    .line 94
    :cond_3
    invoke-virtual {p0, p1}, Lcom/facebook/orca/auth/AuthDataStoreBase;->a(Lcom/facebook/orca/users/User;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/auth/AuthDataStoreBase;->c()Lcom/facebook/orca/auth/FacebookCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lcom/facebook/orca/auth/FacebookCredentials;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/AuthPrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v3, Lcom/facebook/orca/prefs/AuthPrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 57
    if-eqz v1, :cond_0

    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/facebook/orca/auth/FacebookCredentials;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/auth/FacebookCredentials;-><init>(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/auth/AuthDataStoreBase;->f()Lcom/facebook/orca/users/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->d:Lcom/facebook/orca/users/User;

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/auth/AuthDataStoreBase;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/facebook/orca/prefs/AuthPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
