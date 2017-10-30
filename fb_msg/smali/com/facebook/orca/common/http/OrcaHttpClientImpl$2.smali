.class Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "OrcaHttpClientImpl.java"


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/facebook/orca/common/http/OrcaHttpClientImpl;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->b:Lcom/facebook/orca/common/http/OrcaHttpClientImpl;

    iput-object p4, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->a:Ljava/util/Set;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 113
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v1, "http.cookie-store"

    iget-object v2, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->b:Lcom/facebook/orca/common/http/OrcaHttpClientImpl;

    invoke-static {v2}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->a(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;)Lcom/facebook/orca/common/http/OrcaCookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 4

    .prologue
    .line 93
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v1

    .line 94
    invoke-static {}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->b()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 95
    new-instance v0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$CurlLogger;

    iget-object v2, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->b:Lcom/facebook/orca/common/http/OrcaHttpClientImpl;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$CurlLogger;-><init>(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;Lcom/facebook/orca/common/http/OrcaHttpClientImpl$1;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 96
    invoke-static {}, Lcom/facebook/orca/common/http/ClientGZipContentCompression;->a()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 97
    invoke-static {}, Lcom/facebook/orca/common/http/ClientGZipContentCompression;->b()Lorg/apache/http/HttpResponseInterceptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/http/OrcaHttpClientObserver;

    .line 102
    invoke-interface {v0, v1, v1}, Lcom/facebook/orca/common/http/OrcaHttpClientObserver;->a(Lorg/apache/http/protocol/HttpRequestInterceptorList;Lorg/apache/http/protocol/HttpResponseInterceptorList;)V

    goto :goto_0

    .line 105
    :cond_0
    return-object v1
.end method
