.class Lcom/facebook/orca/app/FbBaseModule$HandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/facebook/orca/app/FbBaseModule$HandlerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 435
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$HandlerProvider;->a()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
