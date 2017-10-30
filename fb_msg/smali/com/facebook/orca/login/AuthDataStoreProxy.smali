.class public Lcom/facebook/orca/login/AuthDataStoreProxy;
.super Ljava/lang/Object;
.source "AuthDataStoreProxy.java"

# interfaces
.implements Lcom/facebook/orca/auth/AuthDataStore;


# instance fields
.field private final a:Lcom/facebook/orca/auth/AuthDataStore;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/auth/AuthDataStore;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/login/AuthDataStoreProxy;-><init>(Lcom/facebook/orca/auth/AuthDataStore;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/auth/AuthDataStore;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->a:Lcom/facebook/orca/auth/AuthDataStore;

    .line 36
    iput-boolean p2, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->b:Z

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/auth/FacebookCredentials;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->a:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0, p1}, Lcom/facebook/orca/auth/AuthDataStore;->a(Lcom/facebook/orca/auth/FacebookCredentials;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->b:Z

    .line 89
    return-void
.end method

.method public a(Lcom/facebook/orca/users/User;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->a:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0, p1}, Lcom/facebook/orca/auth/AuthDataStore;->a(Lcom/facebook/orca/users/User;)V

    .line 94
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->a:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/facebook/orca/users/User;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->a:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0, p1}, Lcom/facebook/orca/auth/AuthDataStore;->b(Lcom/facebook/orca/users/User;)V

    .line 99
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->a:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/facebook/orca/auth/FacebookCredentials;
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->b:Z

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->a:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->c()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->b:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->a:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->a:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->e()V

    .line 54
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->b:Z

    .line 41
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->b:Z

    .line 45
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/facebook/orca/login/AuthDataStoreProxy;->b:Z

    return v0
.end method
