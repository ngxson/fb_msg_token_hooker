.class Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaPushModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/OrcaPushModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->a:Lcom/facebook/orca/push/mqtt/OrcaPushModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;Lcom/facebook/orca/push/mqtt/OrcaPushModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;
    .locals 11

    .prologue
    .line 155
    new-instance v0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;

    const-class v1, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/auth/AuthDataStore;

    new-instance v2, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider$1;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;)V

    invoke-static {v2}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const-class v3, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/push/common/PushDeserialization;

    const-class v4, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v5, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/presence/PresenceManager;

    const-class v6, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v7, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v6, v7}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v6

    const-class v7, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-class v8, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-class v9, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0, v9}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v10, Landroid/content/res/Resources;

    invoke-virtual {p0, v10}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/Resources;

    invoke-direct/range {v0 .. v10}, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;-><init>(Lcom/facebook/orca/auth/AuthDataStore;Ljava/util/Set;Lcom/facebook/orca/push/common/PushDeserialization;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/presence/PresenceManager;Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;Lcom/fasterxml/jackson/databind/ObjectMapper;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;->a()Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;

    move-result-object v0

    return-object v0
.end method
