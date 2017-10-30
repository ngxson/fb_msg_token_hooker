.class public Lcom/facebook/orca/auth/OrcaAuthDataStore;
.super Lcom/facebook/orca/auth/AuthDataStoreBase;
.source "OrcaAuthDataStore.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private final f:Landroid/telephony/TelephonyManager;

.field private final g:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

.field private h:Lcom/facebook/orca/users/User;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/users/UserSerialization;Lcom/facebook/orca/debug/OrcaErrorReporter;Ljavax/inject/Provider;Ljavax/inject/Provider;Landroid/telephony/TelephonyManager;Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)V
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
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Lcom/facebook/orca/users/UserSerialization;",
            "Lcom/facebook/orca/debug/OrcaErrorReporter;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/telephony/TelephonyManager;",
            "Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p3, p2}, Lcom/facebook/orca/auth/AuthDataStoreBase;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/debug/OrcaErrorReporter;Lcom/facebook/orca/users/UserSerialization;)V

    .line 44
    iput-object p4, p0, Lcom/facebook/orca/auth/OrcaAuthDataStore;->d:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/facebook/orca/auth/OrcaAuthDataStore;->e:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/facebook/orca/auth/OrcaAuthDataStore;->f:Landroid/telephony/TelephonyManager;

    .line 47
    iput-object p7, p0, Lcom/facebook/orca/auth/OrcaAuthDataStore;->g:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    .line 48
    return-void
.end method

.method private declared-synchronized g()Lcom/facebook/orca/users/User;
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/auth/OrcaAuthDataStore;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/auth/OrcaAuthDataStore;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/auth/OrcaAuthDataStore;->h:Lcom/facebook/orca/users/User;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/auth/OrcaAuthDataStore;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/facebook/orca/auth/OrcaAuthDataStore;->g:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    const-string v1, "Me"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/OrcaAuthDataStore;->h:Lcom/facebook/orca/users/User;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/auth/OrcaAuthDataStore;->h:Lcom/facebook/orca/users/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized d()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/facebook/orca/auth/AuthDataStoreBase;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/facebook/orca/auth/OrcaAuthDataStore;->g()Lcom/facebook/orca/users/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 57
    :cond_0
    monitor-exit p0

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/auth/OrcaAuthDataStore;->g()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/facebook/orca/auth/AuthDataStoreBase;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/auth/OrcaAuthDataStore;->c()Lcom/facebook/orca/auth/FacebookCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

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
