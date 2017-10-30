.class Lcom/facebook/orca/push/mqtt/OrcaPushModule$MqttPushServiceManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaPushModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;",
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
    .line 137
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule$MqttPushServiceManagerProvider;->a:Lcom/facebook/orca/push/mqtt/OrcaPushModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;Lcom/facebook/orca/push/mqtt/OrcaPushModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$MqttPushServiceManagerProvider;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;
    .locals 7

    .prologue
    .line 141
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule$MqttPushServiceManagerProvider;->a:Lcom/facebook/orca/push/mqtt/OrcaPushModule;

    invoke-static {v1}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->a(Lcom/facebook/orca/push/mqtt/OrcaPushModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/app/UserActivityManager;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$MqttPushServiceManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/app/UserActivityManager;

    const-class v3, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$MqttPushServiceManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/auth/AuthDataStore;

    const-class v4, Ljava/lang/Boolean;

    const-class v5, Lcom/facebook/orca/annotations/IsPersistentPushServiceEnabledForUser;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$MqttPushServiceManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    const-class v6, Lcom/facebook/orca/annotations/IsPersistentPushServiceEnabledForApp;

    invoke-virtual {p0, v5, v6}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$MqttPushServiceManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;-><init>(Landroid/content/Context;Lcom/facebook/app/UserActivityManager;Lcom/facebook/orca/auth/AuthDataStore;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$MqttPushServiceManagerProvider;->a()Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    move-result-object v0

    return-object v0
.end method
