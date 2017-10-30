.class Lcom/facebook/orca/app/FbBaseModule$GeocoderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/location/Geocoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/FbBaseModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/FbBaseModule;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$GeocoderProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$GeocoderProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Geocoder;
    .locals 2

    .prologue
    .line 599
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/facebook/orca/app/FbBaseModule$GeocoderProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-static {v1}, Lcom/facebook/orca/app/FbBaseModule;->b(Lcom/facebook/orca/app/FbBaseModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$GeocoderProvider;->a()Landroid/location/Geocoder;

    move-result-object v0

    return-object v0
.end method
