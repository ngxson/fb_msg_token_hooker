.class public Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaPushModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/mqtt/IProvideSubscribeTopics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/OrcaPushModule;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;->a:Lcom/facebook/orca/push/mqtt/OrcaPushModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/mqtt/IProvideSubscribeTopics;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider$1;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;->a()Lcom/facebook/orca/push/mqtt/IProvideSubscribeTopics;

    move-result-object v0

    return-object v0
.end method
