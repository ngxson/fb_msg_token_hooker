.class Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;
.super Ljava/lang/Object;
.source "OrcaServiceOperationFactory.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/ops/OrcaServiceOperationFactory$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-static {p2}, Lcom/facebook/orca/server/IOrcaService$Stub;->a(Landroid/os/IBinder;)Lcom/facebook/orca/server/IOrcaService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/server/IOrcaService;)Lcom/facebook/orca/server/IOrcaService;

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->c(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/server/IOrcaService;)Lcom/facebook/orca/server/IOrcaService;

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Z)Z

    .line 178
    return-void
.end method
