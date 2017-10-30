.class Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$2;
.super Ljava/lang/Object;
.source "OrcaServiceOperationFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$2;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$2;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->g(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V

    .line 416
    return-void
.end method
