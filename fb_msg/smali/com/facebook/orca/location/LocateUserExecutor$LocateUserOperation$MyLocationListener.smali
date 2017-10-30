.class Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$MyLocationListener;
.super Ljava/lang/Object;
.source "LocateUserExecutor.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$MyLocationListener;->a:Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;Lcom/facebook/orca/location/LocateUserExecutor$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$MyLocationListener;-><init>(Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$MyLocationListener;->a:Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;

    invoke-static {v0, p1}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a(Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;Landroid/location/Location;)V

    .line 156
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 170
    invoke-static {}, Lcom/facebook/orca/location/LocateUserExecutor;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 165
    invoke-static {}, Lcom/facebook/orca/location/LocateUserExecutor;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-static {}, Lcom/facebook/orca/location/LocateUserExecutor;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 161
    return-void
.end method
