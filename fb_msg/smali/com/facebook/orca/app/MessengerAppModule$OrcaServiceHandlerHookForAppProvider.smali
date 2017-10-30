.class Lcom/facebook/orca/app/MessengerAppModule$OrcaServiceHandlerHookForAppProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessengerAppModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$OrcaServiceHandlerHookForAppProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$OrcaServiceHandlerHookForAppProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;
    .locals 3

    .prologue
    .line 547
    new-instance v2, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;

    const-class v0, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaServiceHandlerHookForAppProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaDataManager;

    const-class v1, Lcom/facebook/orca/push/PushInitializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule$OrcaServiceHandlerHookForAppProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/push/PushInitializer;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;-><init>(Lcom/facebook/orca/app/OrcaDataManager;Lcom/facebook/orca/push/PushInitializer;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaServiceHandlerHookForAppProvider;->a()Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;

    move-result-object v0

    return-object v0
.end method
