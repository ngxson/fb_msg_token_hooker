.class Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpRequestProcessorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaHttpModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/http/OrcaHttpModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpRequestProcessorProvider;->a:Lcom/facebook/orca/common/http/OrcaHttpModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpRequestProcessorProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;
    .locals 3

    .prologue
    .line 134
    new-instance v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpRequestProcessorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/http/OrcaHttpClient;

    const-class v1, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpRequestProcessorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;-><init>(Lcom/facebook/orca/common/http/OrcaHttpClient;Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpRequestProcessorProvider;->a()Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    move-result-object v0

    return-object v0
.end method
