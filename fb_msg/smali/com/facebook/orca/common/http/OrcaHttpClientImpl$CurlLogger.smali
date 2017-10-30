.class Lcom/facebook/orca/common/http/OrcaHttpClientImpl$CurlLogger;
.super Ljava/lang/Object;
.source "OrcaHttpClientImpl.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/http/OrcaHttpClientImpl;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$CurlLogger;->a:Lcom/facebook/orca/common/http/OrcaHttpClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;Lcom/facebook/orca/common/http/OrcaHttpClientImpl$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$CurlLogger;-><init>(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$CurlLogger;->a:Lcom/facebook/orca/common/http/OrcaHttpClientImpl;

    invoke-static {v0}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->b(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;)Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;->a(Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 276
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;->a(Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;Ljava/lang/String;)V

    .line 278
    :cond_0
    return-void
.end method
