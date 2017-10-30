.class Lcom/facebook/orca/app/MessagesModule$FetchRolloutsMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;",
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
    .line 1702
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$FetchRolloutsMethodProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1702
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$FetchRolloutsMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;
    .locals 2

    .prologue
    .line 1706
    new-instance v1, Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

    const-class v0, Lcom/facebook/orca/rollout/OrcaRolloutManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$FetchRolloutsMethodProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/rollout/OrcaRolloutManager;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;-><init>(Lcom/facebook/orca/rollout/OrcaRolloutManager;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$FetchRolloutsMethodProvider;->a()Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

    move-result-object v0

    return-object v0
.end method
