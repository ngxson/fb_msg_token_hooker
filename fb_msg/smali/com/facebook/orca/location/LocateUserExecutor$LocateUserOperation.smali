.class Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "LocateUserExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/location/LocateUserExecutor;

.field private final b:Lcom/facebook/orca/server/GetDeviceLocationParams;

.field private final c:Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$MyLocationListener;

.field private d:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

.field private e:Landroid/location/Location;

.field private f:Z


# direct methods
.method constructor <init>(Lcom/facebook/orca/location/LocateUserExecutor;Lcom/facebook/orca/server/GetDeviceLocationParams;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a:Lcom/facebook/orca/location/LocateUserExecutor;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->b:Lcom/facebook/orca/server/GetDeviceLocationParams;

    .line 67
    iput-object p3, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->d:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    .line 68
    invoke-static {p1}, Lcom/facebook/orca/location/LocateUserExecutor;->a(Lcom/facebook/orca/location/LocateUserExecutor;)Lcom/facebook/orca/location/LocationCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/location/LocationCache;->a()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    .line 69
    new-instance v0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$MyLocationListener;-><init>(Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;Lcom/facebook/orca/location/LocateUserExecutor$1;)V

    iput-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->c:Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$MyLocationListener;

    .line 71
    const-string v0, "network"

    invoke-direct {p0, v0}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a(Ljava/lang/String;)V

    .line 72
    const-string v0, "gps"

    invoke-direct {p0, v0}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e()V

    .line 77
    invoke-static {p1}, Lcom/facebook/orca/location/LocateUserExecutor;->b(Lcom/facebook/orca/location/LocateUserExecutor;)Lcom/facebook/orca/common/util/AndroidThreadUtil;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$1;-><init>(Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;Lcom/facebook/orca/location/LocateUserExecutor;)V

    invoke-virtual {p2}, Lcom/facebook/orca/server/GetDeviceLocationParams;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;J)V

    .line 83
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a:Lcom/facebook/orca/location/LocateUserExecutor;

    iget-object v1, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/location/LocateUserExecutor;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    invoke-static {}, Lcom/facebook/orca/location/LocateUserExecutor;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Got better location. Accuracy: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iput-object p1, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a:Lcom/facebook/orca/location/LocateUserExecutor;

    invoke-static {v0}, Lcom/facebook/orca/location/LocateUserExecutor;->a(Lcom/facebook/orca/location/LocateUserExecutor;)Lcom/facebook/orca/location/LocationCache;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/LocationCache;->a(Landroid/location/Location;)V

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e()V

    .line 100
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->b:Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-virtual {v1}, Lcom/facebook/orca/server/GetDeviceLocationParams;->b()J

    move-result-wide v1

    long-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 101
    invoke-direct {p0}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->c()V

    .line 105
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a(Z)V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a(Landroid/location/Location;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a:Lcom/facebook/orca/location/LocateUserExecutor;

    invoke-static {v0}, Lcom/facebook/orca/location/LocateUserExecutor;->c(Lcom/facebook/orca/location/LocateUserExecutor;)Landroid/location/LocationManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->c:Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$MyLocationListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 87
    return-void
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-boolean v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->f:Z

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x0

    .line 128
    if-eqz p1, :cond_4

    .line 129
    invoke-static {}, Lcom/facebook/orca/location/LocateUserExecutor;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Timed out waiting for location"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v1

    .line 139
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/facebook/orca/location/LocateUserExecutor;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Finished"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 141
    iput-boolean v1, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->f:Z

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a:Lcom/facebook/orca/location/LocateUserExecutor;

    invoke-static {v0}, Lcom/facebook/orca/location/LocateUserExecutor;->d(Lcom/facebook/orca/location/LocateUserExecutor;)Lcom/facebook/orca/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    .line 143
    iget-object v2, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 145
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_4
    iget-object v2, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iget-object v3, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->b:Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-virtual {v3}, Lcom/facebook/orca/server/GetDeviceLocationParams;->b()J

    move-result-wide v3

    long-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 134
    invoke-static {}, Lcom/facebook/orca/location/LocateUserExecutor;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Location requirement met"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v1

    .line 135
    goto :goto_1

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a:Lcom/facebook/orca/location/LocateUserExecutor;

    invoke-static {v0}, Lcom/facebook/orca/location/LocateUserExecutor;->c(Lcom/facebook/orca/location/LocateUserExecutor;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->c:Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation$MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 91
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->c()V

    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->a(Z)V

    .line 111
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->d:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->d:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    iget-object v1, p0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;->e:Landroid/location/Location;

    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/server/OrcaServiceProgressCallback;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_0
.end method
