.class Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationExecutorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;",
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
    .line 1204
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationExecutorProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1204
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationExecutorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;
    .locals 3

    .prologue
    .line 1208
    new-instance v2, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;

    const-class v0, Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationExecutorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/LocationCache;

    const-class v1, Lcom/facebook/orca/location/GeocodingExecutor;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationExecutorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/location/GeocodingExecutor;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;-><init>(Lcom/facebook/orca/location/LocationCache;Lcom/facebook/orca/location/GeocodingExecutor;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationExecutorProvider;->a()Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;

    move-result-object v0

    return-object v0
.end method
