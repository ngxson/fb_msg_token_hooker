.class Lcom/facebook/orca/app/FbBaseModule$ActivityBroadcasterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/ActivityBroadcaster;",
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
    .line 635
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$ActivityBroadcasterProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$ActivityBroadcasterProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/ActivityBroadcaster;
    .locals 2

    .prologue
    .line 639
    new-instance v0, Lcom/facebook/orca/app/ActivityBroadcaster;

    iget-object v1, p0, Lcom/facebook/orca/app/FbBaseModule$ActivityBroadcasterProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-static {v1}, Lcom/facebook/orca/app/FbBaseModule;->b(Lcom/facebook/orca/app/FbBaseModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/app/ActivityBroadcaster;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$ActivityBroadcasterProvider;->a()Lcom/facebook/orca/app/ActivityBroadcaster;

    move-result-object v0

    return-object v0
.end method
