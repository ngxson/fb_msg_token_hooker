.class Lcom/facebook/orca/app/FbBaseModule$FPSControllerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/diagnostics/FPSController;",
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
    .line 272
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$FPSControllerProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$FPSControllerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/diagnostics/FPSController;
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-direct {v0}, Lcom/facebook/orca/common/diagnostics/FPSController;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$FPSControllerProvider;->a()Lcom/facebook/orca/common/diagnostics/FPSController;

    move-result-object v0

    return-object v0
.end method
