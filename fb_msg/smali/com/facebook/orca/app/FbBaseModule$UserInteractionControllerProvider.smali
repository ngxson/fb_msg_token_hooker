.class Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/UserInteractionController;",
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
    .line 289
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/UserInteractionController;
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/facebook/orca/app/UserInteractionController;

    invoke-direct {v0}, Lcom/facebook/orca/app/UserInteractionController;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerProvider;->a()Lcom/facebook/orca/app/UserInteractionController;

    move-result-object v0

    return-object v0
.end method
