.class public Lcom/facebook/orca/location/GeocodingParameters;
.super Ljava/lang/Object;
.source "GeocodingParameters.java"


# instance fields
.field private final a:Lcom/facebook/orca/location/Coordinates;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/location/Coordinates;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/facebook/orca/location/GeocodingParameters;->a:Lcom/facebook/orca/location/Coordinates;

    .line 14
    iput-boolean p2, p0, Lcom/facebook/orca/location/GeocodingParameters;->b:Z

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/location/Coordinates;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/orca/location/GeocodingParameters;->a:Lcom/facebook/orca/location/Coordinates;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/facebook/orca/location/GeocodingParameters;->b:Z

    return v0
.end method
