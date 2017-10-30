.class Lcom/facebook/orca/app/FbBaseModule$AppInitCompleteInitializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/AppInitCompleteInitializer;",
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
    .line 523
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$AppInitCompleteInitializerProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$AppInitCompleteInitializerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/AppInitCompleteInitializer;
    .locals 2

    .prologue
    .line 528
    new-instance v1, Lcom/facebook/orca/app/AppInitCompleteInitializer;

    const-class v0, Lcom/facebook/orca/app/AppInitLock;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$AppInitCompleteInitializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/AppInitLock;

    invoke-direct {v1, v0}, Lcom/facebook/orca/app/AppInitCompleteInitializer;-><init>(Lcom/facebook/orca/app/AppInitLock;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$AppInitCompleteInitializerProvider;->a()Lcom/facebook/orca/app/AppInitCompleteInitializer;

    move-result-object v0

    return-object v0
.end method
