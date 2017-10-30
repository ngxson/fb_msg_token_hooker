.class Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerActivityListenerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/UserInteractionController$ActivityListener;",
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
    .line 298
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerActivityListenerProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerActivityListenerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/UserInteractionController$ActivityListener;
    .locals 1

    .prologue
    .line 303
    const-class v0, Lcom/facebook/orca/app/UserInteractionController;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerActivityListenerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/UserInteractionController;

    invoke-virtual {v0}, Lcom/facebook/orca/app/UserInteractionController;->a()Lcom/facebook/orca/app/UserInteractionController$ActivityListener;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$UserInteractionControllerActivityListenerProvider;->a()Lcom/facebook/orca/app/UserInteractionController$ActivityListener;

    move-result-object v0

    return-object v0
.end method
