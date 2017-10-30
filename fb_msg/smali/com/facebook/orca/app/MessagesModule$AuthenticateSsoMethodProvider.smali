.class Lcom/facebook/orca/app/MessagesModule$AuthenticateSsoMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;",
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
    .line 2056
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$AuthenticateSsoMethodProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2056
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AuthenticateSsoMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;
    .locals 2

    .prologue
    .line 2060
    new-instance v1, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$AuthenticateSsoMethodProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;-><init>(Lcom/facebook/orca/app/OrcaAppType;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2056
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$AuthenticateSsoMethodProvider;->a()Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    move-result-object v0

    return-object v0
.end method
