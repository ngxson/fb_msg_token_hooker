.class public Lcom/facebook/orca/login/OrcaAuthStateMachineConfig;
.super Ljava/lang/Object;
.source "OrcaAuthStateMachineConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/orca/auth/AuthDataStore;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/facebook/orca/ops/OperationProgressIndicator;)Lcom/facebook/orca/login/AuthStateMachineConfig;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Lcom/facebook/orca/login/AuthFragmentConfig;

    const-class v1, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;

    invoke-direct {v0, v1, p1}, Lcom/facebook/orca/login/AuthFragmentConfig;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    new-instance v1, Lcom/facebook/orca/login/AuthFragmentConfig;

    const-class v2, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;

    invoke-direct {v1, v2, p3}, Lcom/facebook/orca/login/AuthFragmentConfig;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    new-instance v2, Lcom/facebook/orca/login/AuthFragmentConfig;

    const-class v3, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;

    invoke-direct {v2, v3, p4}, Lcom/facebook/orca/login/AuthFragmentConfig;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/login/AuthStateMachineConfig;->a(Lcom/facebook/orca/login/AuthFragmentConfig;Lcom/facebook/orca/login/AuthFragmentConfig;Lcom/facebook/orca/login/AuthFragmentConfig;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 37
    const-class v1, Lcom/facebook/orca/login/SilentLoginFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/login/AuthFragmentConfig;

    const-class v3, Lcom/facebook/orca/login/OrcaSilentLoginViewGroup;

    invoke-direct {v2, v3, p2}, Lcom/facebook/orca/login/AuthFragmentConfig;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 39
    new-instance v1, Lcom/facebook/orca/login/AuthStateMachineConfig;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    new-instance v2, Lcom/facebook/orca/login/LogoutFragment$Config;

    invoke-direct {v2, p5}, Lcom/facebook/orca/login/LogoutFragment$Config;-><init>(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/facebook/orca/login/AuthStateMachineConfig;-><init>(Lcom/facebook/orca/auth/AuthDataStore;Lcom/google/common/collect/ImmutableMap;Lcom/facebook/orca/login/LogoutFragment$Config;)V

    return-object v1
.end method
