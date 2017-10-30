.class Lcom/facebook/orca/app/MessagesModule$GeocodingDeferrableProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/location/GeocodingExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$GeocodingDeferrableProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1194
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$GeocodingDeferrableProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/location/GeocodingExecutor;
    .locals 4

    .prologue
    .line 1197
    new-instance v3, Lcom/facebook/orca/location/GeocodingExecutor;

    const-class v0, Landroid/location/Geocoder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$GeocodingDeferrableProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geocoder;

    const-class v1, Lcom/facebook/orca/location/GeocodingCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$GeocodingDeferrableProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/location/GeocodingCache;

    const-class v2, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$GeocodingDeferrableProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/location/GeocodingExecutor;-><init>(Landroid/location/Geocoder;Lcom/facebook/orca/location/GeocodingCache;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$GeocodingDeferrableProvider;->a()Lcom/facebook/orca/location/GeocodingExecutor;

    move-result-object v0

    return-object v0
.end method
