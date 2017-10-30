.class Lcom/facebook/orca/inject/ProvisioningDebugStack$StackEntry;
.super Ljava/lang/Object;
.source "ProvisioningDebugStack.java"


# instance fields
.field final a:Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

.field final b:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;Lcom/google/inject/Key;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackEntry;->a:Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    .line 28
    iput-object p2, p0, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackEntry;->b:Lcom/google/inject/Key;

    .line 29
    return-void
.end method
