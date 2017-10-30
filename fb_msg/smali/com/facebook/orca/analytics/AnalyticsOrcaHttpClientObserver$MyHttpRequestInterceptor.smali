.class final Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpRequestInterceptor;
.super Ljava/lang/Object;
.source "AnalyticsOrcaHttpClientObserver.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpRequestInterceptor;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpRequestInterceptor;

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpRequestInterceptor;->b:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpRequestInterceptor;-><init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 71
    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 74
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    const-string v0, "http.target_host"

    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 78
    if-eqz v0, :cond_1

    .line 80
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpRequestInterceptor;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-static {v1}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->a(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpRequestInterceptor;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-static {v1}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->b(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;->a(Lorg/apache/http/client/methods/HttpUriRequest;)J

    move-result-wide v1

    .line 89
    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpRequestInterceptor;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-static {v3}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->c(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Lcom/facebook/orca/analytics/NetworkDataLogger;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/facebook/orca/analytics/NetworkDataLogger;->a(Ljava/net/URI;J)V

    .line 91
    :cond_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 83
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpRequestInterceptor;->b:Ljava/lang/Class;

    const-string v3, "Invalid URI"

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
