.class Lcom/facebook/orca/app/MessengerAppModule$OrcaLogInitializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/OrcaLogInitializer;",
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
    .line 461
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$OrcaLogInitializerProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$OrcaLogInitializerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/OrcaLogInitializer;
    .locals 2

    .prologue
    .line 465
    new-instance v1, Lcom/facebook/orca/app/OrcaLogInitializer;

    const-class v0, Lcom/facebook/orca/debug/FbLogImpl;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaLogInitializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/FbLogImpl;

    invoke-direct {v1, v0}, Lcom/facebook/orca/app/OrcaLogInitializer;-><init>(Lcom/facebook/orca/debug/FbLogImpl;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaLogInitializerProvider;->a()Lcom/facebook/orca/app/OrcaLogInitializer;

    move-result-object v0

    return-object v0
.end method
