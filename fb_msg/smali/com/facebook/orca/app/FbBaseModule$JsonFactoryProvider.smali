.class Lcom/facebook/orca/app/FbBaseModule$JsonFactoryProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/fasterxml/jackson/core/JsonFactory;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/facebook/orca/app/FbBaseModule$JsonFactoryProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .prologue
    .line 468
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$JsonFactoryProvider;->a()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    return-object v0
.end method
