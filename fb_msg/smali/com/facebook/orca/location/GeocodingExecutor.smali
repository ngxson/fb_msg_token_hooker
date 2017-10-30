.class public Lcom/facebook/orca/location/GeocodingExecutor;
.super Ljava/lang/Object;
.source "GeocodingExecutor.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/location/Geocoder;

.field private final c:Lcom/facebook/orca/location/GeocodingCache;

.field private final d:Lcom/facebook/orca/common/util/AndroidThreadUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/orca/location/GeocodingExecutor;

    sput-object v0, Lcom/facebook/orca/location/GeocodingExecutor;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/location/Geocoder;Lcom/facebook/orca/location/GeocodingCache;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingExecutor;->b:Landroid/location/Geocoder;

    .line 37
    iput-object p2, p0, Lcom/facebook/orca/location/GeocodingExecutor;->c:Lcom/facebook/orca/location/GeocodingCache;

    .line 38
    iput-object p3, p0, Lcom/facebook/orca/location/GeocodingExecutor;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 39
    return-void
.end method

.method private a(Ljava/util/List;)Landroid/location/Address;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Landroid/location/Address;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 116
    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 122
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/location/GeocodingExecutor;Lcom/facebook/orca/location/GeocodingParameters;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/GeocodingExecutor;->b(Lcom/facebook/orca/location/GeocodingParameters;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/orca/location/GeocodingParameters;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 8
    .parameter

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingParameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v3

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingExecutor;->b:Landroid/location/Geocoder;

    invoke-virtual {v3}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v1

    invoke-virtual {v3}, Lcom/facebook/orca/location/Coordinates;->c()D

    move-result-wide v3

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/location/GeocodingExecutor;->a(Ljava/util/List;)Landroid/location/Address;

    move-result-object v7

    .line 85
    const/4 v0, 0x0

    .line 86
    if-eqz v7, :cond_0

    .line 87
    new-instance v0, Lcom/facebook/orca/location/GeolocationInfo;

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingParameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    invoke-virtual {v7}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/location/GeolocationInfo;-><init>(Lcom/facebook/orca/location/Coordinates;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingParameters;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingExecutor;->c:Lcom/facebook/orca/location/GeocodingCache;

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingParameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/location/GeocodingCache;->b(Lcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/location/GeolocationInfo;)V

    .line 104
    :goto_1
    sget-object v1, Lcom/facebook/orca/location/GeocodingExecutor;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geocoding complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 105
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Lcom/facebook/orca/location/GeocodingExecutor;->a:Ljava/lang/Class;

    const-string v2, "Failed to geocode"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingExecutor;->c:Lcom/facebook/orca/location/GeocodingCache;

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingParameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/location/GeocodingCache;->a(Lcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/location/GeolocationInfo;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/facebook/orca/location/GeocodingParameters;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/location/GeocodingParameters;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/location/GeolocationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingParameters;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingExecutor;->c:Lcom/facebook/orca/location/GeocodingCache;

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingParameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/GeocodingCache;->b(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v0

    .line 50
    :goto_0
    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingExecutor;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/location/GeocodingExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/location/GeocodingExecutor$1;-><init>(Lcom/facebook/orca/location/GeocodingExecutor;Lcom/facebook/orca/location/GeocodingParameters;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 58
    :goto_1
    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingExecutor;->c:Lcom/facebook/orca/location/GeocodingCache;

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingParameters;->a()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/GeocodingCache;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1
.end method
