.class public Lcom/facebook/orca/location/GeocodingCache;
.super Ljava/lang/Object;
.source "GeocodingCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:Lcom/facebook/orca/location/GeolocationInfo;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/location/LatitudeLongitude;",
            "Lcom/facebook/orca/location/GeolocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/location/LatitudeLongitude;",
            "Lcom/facebook/orca/location/GeolocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/location/Coordinates;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/facebook/orca/location/GeolocationInfo;

    invoke-direct {v0}, Lcom/facebook/orca/location/GeolocationInfo;-><init>()V

    sput-object v0, Lcom/facebook/orca/location/GeocodingCache;->a:Lcom/facebook/orca/location/GeolocationInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const-wide/16 v1, 0x384

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->b(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 38
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const-wide/16 v1, 0x708

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->b(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 42
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const-wide/16 v1, 0x258

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/MapMaker;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->b(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 46
    return-void
.end method

.method private a(Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 1
    .parameter

    .prologue
    .line 95
    sget-object v0, Lcom/facebook/orca/location/GeocodingCache;->a:Lcom/facebook/orca/location/GeolocationInfo;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private a(Ljava/util/concurrent/ConcurrentMap;Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/location/LatitudeLongitude;",
            "Lcom/facebook/orca/location/GeolocationInfo;",
            ">;",
            "Lcom/facebook/orca/location/Coordinates;",
            ")",
            "Lcom/facebook/orca/location/GeolocationInfo;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p2}, Lcom/facebook/orca/location/LatitudeLongitude;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/LatitudeLongitude;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/GeolocationInfo;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, v0}, Lcom/facebook/orca/location/GeocodingCache;->a(Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v8

    .line 125
    :goto_0
    return-object v8

    .line 113
    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/facebook/orca/location/GeolocationInfo;

    .line 114
    sget-object v0, Lcom/facebook/orca/location/GeocodingCache;->a:Lcom/facebook/orca/location/GeolocationInfo;

    if-eq v8, v0, :cond_1

    .line 117
    invoke-virtual {p2}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/facebook/orca/location/Coordinates;->c()D

    move-result-wide v2

    invoke-virtual {v8}, Lcom/facebook/orca/location/GeolocationInfo;->a()D

    move-result-wide v4

    invoke-virtual {v8}, Lcom/facebook/orca/location/GeolocationInfo;->b()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/facebook/orca/common/util/LocationUtils;->a(DDDD)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 125
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 0
    .parameter

    .prologue
    .line 99
    if-nez p1, :cond_0

    sget-object p1, Lcom/facebook/orca/location/GeocodingCache;->a:Lcom/facebook/orca/location/GeolocationInfo;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/location/GeocodingCache;->a(Ljava/util/concurrent/ConcurrentMap;Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 163
    return-void
.end method

.method public a(Lcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/location/GeolocationInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lcom/facebook/orca/location/LatitudeLongitude;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/LatitudeLongitude;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/facebook/orca/location/GeocodingCache;->b(Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public a(Lcom/facebook/orca/location/Coordinates;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public b(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/location/GeocodingCache;->a(Ljava/util/concurrent/ConcurrentMap;Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/location/GeolocationInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lcom/facebook/orca/location/LatitudeLongitude;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/location/LatitudeLongitude;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/facebook/orca/location/GeocodingCache;->b(Lcom/facebook/orca/location/GeolocationInfo;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public c(Lcom/facebook/orca/location/Coordinates;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/facebook/orca/location/Coordinates;

    .line 138
    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->c()D

    move-result-wide v2

    invoke-virtual {v8}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v4

    invoke-virtual {v8}, Lcom/facebook/orca/location/Coordinates;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/facebook/orca/common/util/LocationUtils;->a(DDDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingCache;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
