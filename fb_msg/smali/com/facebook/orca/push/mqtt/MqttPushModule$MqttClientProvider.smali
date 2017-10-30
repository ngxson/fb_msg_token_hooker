.class Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttClientProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MqttPushModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/mqtt/MqttClient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/MqttPushModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttClientProvider;->a:Lcom/facebook/orca/push/mqtt/MqttPushModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;Lcom/facebook/orca/push/mqtt/MqttPushModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttClientProvider;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/mqtt/MqttClient;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 84
    const-class v0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttClientProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;->b()Ljava/lang/String;

    move-result-object v4

    .line 85
    const-class v0, Lcom/facebook/orca/config/MqttConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttClientProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/facebook/orca/config/MqttConfig;

    .line 86
    if-nez v8, :cond_0

    move-object v0, v1

    .line 99
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const-class v0, Lcom/facebook/orca/auth/UserTokenCredentials;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttClientProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/orca/auth/UserTokenCredentials;

    .line 90
    if-nez v6, :cond_1

    move-object v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_1
    const-class v0, Lcom/facebook/orca/mqtt/MqttSsl;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttClientProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/facebook/orca/mqtt/MqttSsl;

    .line 94
    new-instance v0, Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v8}, Lcom/facebook/orca/config/MqttConfig;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/facebook/orca/config/MqttConfig;->b()I

    move-result v2

    invoke-virtual {v8}, Lcom/facebook/orca/config/MqttConfig;->c()Z

    move-result v3

    invoke-virtual {v6}, Lcom/facebook/orca/auth/UserTokenCredentials;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/facebook/orca/auth/UserTokenCredentials;->b()Ljava/lang/String;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    const-class v10, Lcom/facebook/orca/annotations/UserAgentString;

    invoke-virtual {p0, v7, v10}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttClientProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/facebook/orca/config/MqttConfig;->d()S

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    int-to-short v8, v8

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/mqtt/MqttParameters;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    .line 99
    new-instance v1, Lcom/facebook/orca/mqtt/MqttClient;

    invoke-direct {v1, v9, v0}, Lcom/facebook/orca/mqtt/MqttClient;-><init>(Lcom/facebook/orca/mqtt/MqttSsl;Lcom/facebook/orca/mqtt/MqttParameters;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttClientProvider;->a()Lcom/facebook/orca/mqtt/MqttClient;

    move-result-object v0

    return-object v0
.end method
