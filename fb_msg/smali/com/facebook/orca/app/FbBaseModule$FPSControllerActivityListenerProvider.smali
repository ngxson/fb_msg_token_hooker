.class Lcom/facebook/orca/app/FbBaseModule$FPSControllerActivityListenerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;",
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
    .line 280
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$FPSControllerActivityListenerProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$FPSControllerActivityListenerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;
    .locals 1

    .prologue
    .line 285
    const-class v0, Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$FPSControllerActivityListenerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-virtual {v0}, Lcom/facebook/orca/common/diagnostics/FPSController;->a()Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$FPSControllerActivityListenerProvider;->a()Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;

    move-result-object v0

    return-object v0
.end method
