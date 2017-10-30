.class public Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;
.super Ljava/lang/Object;
.source "GeocodingForMessageLocationExecutor.java"


# instance fields
.field private final a:Lcom/facebook/orca/location/LocationCache;

.field private final b:Lcom/facebook/orca/location/GeocodingExecutor;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/location/LocationCache;Lcom/facebook/orca/location/GeocodingExecutor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;->a:Lcom/facebook/orca/location/LocationCache;

    .line 29
    iput-object p2, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;->b:Lcom/facebook/orca/location/GeocodingExecutor;

    .line 30
    return-void
.end method

.method private a()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/location/GeolocationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;->a:Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {v0}, Lcom/facebook/orca/location/LocationCache;->a()Landroid/location/Location;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v1, Lcom/facebook/orca/location/GeocodingParameters;

    invoke-static {v0}, Lcom/facebook/orca/location/Coordinates;->a(Landroid/location/Location;)Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/location/GeocodingParameters;-><init>(Lcom/facebook/orca/location/Coordinates;Z)V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;->b:Lcom/facebook/orca/location/GeocodingExecutor;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/GeocodingExecutor;->a(Lcom/facebook/orca/location/GeocodingParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/location/Coordinates;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/location/Coordinates;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/location/GeolocationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/facebook/orca/location/GeocodingParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/location/GeocodingParameters;-><init>(Lcom/facebook/orca/location/Coordinates;Z)V

    .line 67
    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;->b:Lcom/facebook/orca/location/GeocodingExecutor;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/location/GeocodingExecutor;->a(Lcom/facebook/orca/location/GeocodingParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/location/Coordinates;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/location/Coordinates;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/location/GeocodingForMessageLocationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;->b(Lcom/facebook/orca/location/Coordinates;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 43
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->a([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor$1;-><init>(Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
