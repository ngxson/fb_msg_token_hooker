.class Lcom/facebook/orca/app/FbBaseModule$ObjectMapperProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/fasterxml/jackson/databind/ObjectMapper;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/facebook/orca/app/FbBaseModule$ObjectMapperProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 2

    .prologue
    .line 476
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$ObjectMapperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    .line 477
    new-instance v0, Lcom/fasterxml/jackson/datatype/guava/GuavaModule;

    invoke-direct {v0}, Lcom/fasterxml/jackson/datatype/guava/GuavaModule;-><init>()V

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 478
    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$ObjectMapperProvider;->a()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method
