.class Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttConfigProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaPushModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/config/MqttConfig;",
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
    .line 113
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttConfigProvider;->a:Lcom/facebook/orca/push/mqtt/OrcaPushModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;Lcom/facebook/orca/push/mqtt/OrcaPushModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttConfigProvider;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/config/MqttConfig;
    .locals 1

    .prologue
    .line 117
    const-class v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaConfig;->f()Lcom/facebook/orca/config/MqttConfig;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttConfigProvider;->a()Lcom/facebook/orca/config/MqttConfig;

    move-result-object v0

    return-object v0
.end method
