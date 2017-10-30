.class Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationFactoryProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ServicesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/ops/OrcaServiceOperationFactory;",
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
    .line 94
    iput-object p1, p0, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationFactoryProvider;->a:Lcom/facebook/orca/server/ServicesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/server/ServicesModule;Lcom/facebook/orca/server/ServicesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationFactoryProvider;-><init>(Lcom/facebook/orca/server/ServicesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/ops/OrcaServiceOperationFactory;
    .locals 4

    .prologue
    .line 99
    new-instance v3, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationFactoryProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/orca/server/OrcaServiceRegistry;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationFactoryProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v2, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationFactoryProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;-><init>(Landroid/content/Context;Lcom/facebook/orca/server/OrcaServiceRegistry;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationFactoryProvider;->a()Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    move-result-object v0

    return-object v0
.end method
