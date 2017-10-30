.class Lcom/facebook/orca/server/ServicesModule$OrcaServiceQueueManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ServicesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/server/OrcaServiceQueueManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/ServicesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/server/ServicesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/orca/server/ServicesModule$OrcaServiceQueueManagerProvider;->a:Lcom/facebook/orca/server/ServicesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/server/ServicesModule;Lcom/facebook/orca/server/ServicesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceQueueManagerProvider;-><init>(Lcom/facebook/orca/server/ServicesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/OrcaServiceQueueManager;
    .locals 3

    .prologue
    .line 54
    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueueManager;

    iget-object v0, p0, Lcom/facebook/orca/server/ServicesModule$OrcaServiceQueueManagerProvider;->a:Lcom/facebook/orca/server/ServicesModule;

    invoke-static {v0}, Lcom/facebook/orca/server/ServicesModule;->a(Lcom/facebook/orca/server/ServicesModule;)Landroid/content/Context;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/server/OrcaServiceRegistry;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceQueueManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceRegistry;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/server/OrcaServiceQueueManager;-><init>(Landroid/content/Context;Lcom/facebook/orca/server/OrcaServiceRegistry;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceQueueManagerProvider;->a()Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-result-object v0

    return-object v0
.end method
