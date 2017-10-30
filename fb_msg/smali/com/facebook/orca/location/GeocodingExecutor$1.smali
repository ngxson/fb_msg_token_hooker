.class Lcom/facebook/orca/location/GeocodingExecutor$1;
.super Ljava/lang/Object;
.source "GeocodingExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/facebook/orca/location/GeolocationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/location/GeocodingParameters;

.field final synthetic b:Lcom/facebook/orca/location/GeocodingExecutor;


# direct methods
.method constructor <init>(Lcom/facebook/orca/location/GeocodingExecutor;Lcom/facebook/orca/location/GeocodingParameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingExecutor$1;->b:Lcom/facebook/orca/location/GeocodingExecutor;

    iput-object p2, p0, Lcom/facebook/orca/location/GeocodingExecutor$1;->a:Lcom/facebook/orca/location/GeocodingParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/location/GeolocationInfo;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingExecutor$1;->b:Lcom/facebook/orca/location/GeocodingExecutor;

    iget-object v1, p0, Lcom/facebook/orca/location/GeocodingExecutor$1;->a:Lcom/facebook/orca/location/GeocodingParameters;

    invoke-static {v0, v1}, Lcom/facebook/orca/location/GeocodingExecutor;->a(Lcom/facebook/orca/location/GeocodingExecutor;Lcom/facebook/orca/location/GeocodingParameters;)Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/location/GeocodingExecutor$1;->a()Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v0

    return-object v0
.end method
