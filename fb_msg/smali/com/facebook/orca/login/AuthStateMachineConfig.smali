.class public Lcom/facebook/orca/login/AuthStateMachineConfig;
.super Ljava/lang/Object;
.source "AuthStateMachineConfig.java"


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/login/AuthFragmentConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/login/LogoutFragment$Config;

.field private final c:Lcom/facebook/orca/login/AuthDataStoreProxy;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;Lcom/facebook/orca/login/LogoutFragment$Config;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/facebook/orca/login/AuthDataStoreProxy;

    iget-boolean v1, p2, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;->b:Z

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/login/AuthDataStoreProxy;-><init>(Lcom/facebook/orca/auth/AuthDataStore;Z)V

    iput-object v0, p0, Lcom/facebook/orca/login/AuthStateMachineConfig;->c:Lcom/facebook/orca/login/AuthDataStoreProxy;

    .line 98
    iget-object v0, p2, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;->a:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/facebook/orca/login/AuthStateMachineConfig;->a:Lcom/google/common/collect/ImmutableMap;

    .line 99
    iput-object p3, p0, Lcom/facebook/orca/login/AuthStateMachineConfig;->b:Lcom/facebook/orca/login/LogoutFragment$Config;

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/auth/AuthDataStore;Lcom/google/common/collect/ImmutableMap;Lcom/facebook/orca/login/LogoutFragment$Config;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/auth/AuthDataStore;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/login/AuthFragmentConfig;",
            ">;",
            "Lcom/facebook/orca/login/LogoutFragment$Config;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/facebook/orca/login/AuthDataStoreProxy;

    invoke-direct {v0, p1}, Lcom/facebook/orca/login/AuthDataStoreProxy;-><init>(Lcom/facebook/orca/auth/AuthDataStore;)V

    iput-object v0, p0, Lcom/facebook/orca/login/AuthStateMachineConfig;->c:Lcom/facebook/orca/login/AuthDataStoreProxy;

    .line 88
    iput-object p2, p0, Lcom/facebook/orca/login/AuthStateMachineConfig;->a:Lcom/google/common/collect/ImmutableMap;

    .line 89
    iput-object p3, p0, Lcom/facebook/orca/login/AuthStateMachineConfig;->b:Lcom/facebook/orca/login/LogoutFragment$Config;

    .line 90
    return-void
.end method

.method public static a(Lcom/facebook/orca/login/AuthFragmentConfig;Lcom/facebook/orca/login/AuthFragmentConfig;Lcom/facebook/orca/login/AuthFragmentConfig;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/login/AuthFragmentConfig",
            "<",
            "Lcom/facebook/orca/login/FirstPartySsoFragment;",
            ">;",
            "Lcom/facebook/orca/login/AuthFragmentConfig",
            "<",
            "Lcom/facebook/orca/login/PasswordCredentialsFragment;",
            ">;",
            "Lcom/facebook/orca/login/AuthFragmentConfig",
            "<",
            "Lcom/facebook/orca/login/LoginApprovalFragment;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/login/AuthFragmentConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const-class v1, Lcom/facebook/orca/login/FirstPartySsoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/login/PasswordCredentialsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/login/LoginApprovalFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/login/AuthDataStoreProxy;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/login/AuthStateMachineConfig;->c:Lcom/facebook/orca/login/AuthDataStoreProxy;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/facebook/orca/login/AuthFragmentConfig;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/orca/login/AuthFragmentBase;",
            ">;)",
            "Lcom/facebook/orca/login/AuthFragmentConfig;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/login/AuthStateMachineConfig;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/login/AuthFragmentConfig;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/login/LogoutFragment$Config;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/login/AuthStateMachineConfig;->b:Lcom/facebook/orca/login/LogoutFragment$Config;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;

    iget-object v1, p0, Lcom/facebook/orca/login/AuthStateMachineConfig;->a:Lcom/google/common/collect/ImmutableMap;

    iget-object v2, p0, Lcom/facebook/orca/login/AuthStateMachineConfig;->c:Lcom/facebook/orca/login/AuthDataStoreProxy;

    invoke-virtual {v2}, Lcom/facebook/orca/login/AuthDataStoreProxy;->h()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;-><init>(Lcom/google/common/collect/ImmutableMap;Z)V

    return-object v0
.end method
