.class Lcom/facebook/orca/push/C2dmPushManager$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "C2dmPushManager.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/C2dmPushManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/C2dmPushManager;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/orca/push/C2dmPushManager$1;->a:Lcom/facebook/orca/push/C2dmPushManager;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager$1;->a:Lcom/facebook/orca/push/C2dmPushManager;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/C2dmPushManager;->a(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/push/C2dmPushManager$1;->a:Lcom/facebook/orca/push/C2dmPushManager;

    invoke-static {v0, p1}, Lcom/facebook/orca/push/C2dmPushManager;->a(Lcom/facebook/orca/push/C2dmPushManager;Lcom/facebook/orca/server/OperationResult;)V

    .line 114
    return-void
.end method
