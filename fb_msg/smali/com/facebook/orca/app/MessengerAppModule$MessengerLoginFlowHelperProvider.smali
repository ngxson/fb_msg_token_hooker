.class Lcom/facebook/orca/app/MessengerAppModule$MessengerLoginFlowHelperProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/activity/MessengerLoginFlowHelper;",
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
    .line 382
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$MessengerLoginFlowHelperProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$MessengerLoginFlowHelperProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/activity/MessengerLoginFlowHelper;
    .locals 5

    .prologue
    .line 386
    new-instance v4, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    const-class v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessengerAppModule$MessengerLoginFlowHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    const-class v1, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule$MessengerLoginFlowHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/config/OrcaConfig;

    const-class v2, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessengerAppModule$MessengerLoginFlowHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/cache/DataCache;

    const-class v3, Lcom/facebook/orca/common/util/VersionStringComparator;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessengerAppModule$MessengerLoginFlowHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/common/util/VersionStringComparator;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;-><init>(Lcom/facebook/orca/nux/OrcaNuxManager;Lcom/facebook/orca/config/OrcaConfig;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/common/util/VersionStringComparator;)V

    return-object v4
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$MessengerLoginFlowHelperProvider;->a()Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    move-result-object v0

    return-object v0
.end method
