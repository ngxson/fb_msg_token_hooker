.class Lcom/facebook/orca/app/MessagesModule$C2dmPushTransportProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/C2dmPushManager;",
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
    .line 1590
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$C2dmPushTransportProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1590
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$C2dmPushTransportProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/C2dmPushManager;
    .locals 6

    .prologue
    .line 1594
    new-instance v0, Lcom/facebook/orca/push/C2dmPushManager;

    const-class v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$C2dmPushTransportProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    const-class v2, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v3, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/orca/app/MessagesModule$C2dmPushTransportProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    const-class v3, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$C2dmPushTransportProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/auth/AuthDataStore;

    const-class v4, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$C2dmPushTransportProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/net/OrcaNetworkManager;

    const-class v5, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$C2dmPushTransportProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/push/C2dmPushManager;-><init>(Lcom/facebook/orca/push/c2dm/C2DMRegistrar;Ljavax/inject/Provider;Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/analytics/AnalyticsLogger;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1590
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$C2dmPushTransportProvider;->a()Lcom/facebook/orca/push/C2dmPushManager;

    move-result-object v0

    return-object v0
.end method
