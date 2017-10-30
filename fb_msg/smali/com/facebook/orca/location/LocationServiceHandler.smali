.class public Lcom/facebook/orca/location/LocationServiceHandler;
.super Ljava/lang/Object;
.source "LocationServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


# instance fields
.field private final a:Lcom/facebook/orca/location/LocateUserExecutor;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/location/LocateUserExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/location/LocationServiceHandler;->a:Lcom/facebook/orca/location/LocateUserExecutor;

    .line 30
    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    const-string v1, "getDeviceLocationParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/GetDeviceLocationParams;

    .line 48
    iget-object v1, p0, Lcom/facebook/orca/location/LocationServiceHandler;->a:Lcom/facebook/orca/location/LocateUserExecutor;

    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->c()Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/location/LocateUserExecutor;->a(Lcom/facebook/orca/server/GetDeviceLocationParams;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/facebook/orca/location/LocationServiceHandler$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/location/LocationServiceHandler$1;-><init>(Lcom/facebook/orca/location/LocationServiceHandler;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/facebook/orca/server/FutureOperationResult;

    invoke-direct {v1, v0}, Lcom/facebook/orca/server/FutureOperationResult;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    .line 36
    const-string v1, "get_device_location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/LocationServiceHandler;->b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
