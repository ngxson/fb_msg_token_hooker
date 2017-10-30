.class Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationForAppProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ServicesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/ops/OrcaServiceOperation;",
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
    .line 81
    iput-object p1, p0, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationForAppProvider;->a:Lcom/facebook/orca/server/ServicesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/server/ServicesModule;Lcom/facebook/orca/server/ServicesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationForAppProvider;-><init>(Lcom/facebook/orca/server/ServicesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/ops/OrcaServiceOperation;
    .locals 4

    .prologue
    .line 86
    new-instance v2, Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v0, p0, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationForAppProvider;->a:Lcom/facebook/orca/server/ServicesModule;

    invoke-static {v0}, Lcom/facebook/orca/server/ServicesModule;->a(Lcom/facebook/orca/server/ServicesModule;)Landroid/content/Context;

    move-result-object v3

    const-class v0, Lcom/facebook/orca/server/OrcaServiceRegistry;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationForAppProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationForAppProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;-><init>(Landroid/content/Context;Lcom/facebook/orca/server/OrcaServiceRegistry;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationForAppProvider;->a()Lcom/facebook/orca/ops/OrcaServiceOperation;

    move-result-object v0

    return-object v0
.end method
