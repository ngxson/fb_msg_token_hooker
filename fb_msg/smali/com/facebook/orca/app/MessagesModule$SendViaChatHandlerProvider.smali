.class Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/SendViaChatHandler;",
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
    .line 1467
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1467
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/methods/SendViaChatHandler;
    .locals 6

    .prologue
    .line 1471
    new-instance v0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-class v3, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/push/common/PushDeserialization;

    const-class v4, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    const-class v5, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;-><init>(Landroid/content/Context;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/push/common/PushDeserialization;Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;->a()Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    move-result-object v0

    return-object v0
.end method
