.class final Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpResponseInterceptor;
.super Ljava/lang/Object;
.source "AnalyticsOrcaHttpClientObserver.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# instance fields
.field final synthetic a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpResponseInterceptor;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpResponseInterceptor;-><init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpResponseInterceptor;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->b(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpResponseInterceptor;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->b(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;->a(Lorg/apache/http/HttpMessage;)J

    move-result-wide v3

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpResponseInterceptor;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->b(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;->b(Lorg/apache/http/HttpMessage;)J

    move-result-wide v5

    .line 101
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 102
    cmp-long v0, v5, v8

    if-gez v0, :cond_0

    .line 103
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    .line 105
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpResponseInterceptor;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-static {v1}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->a(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpResponseInterceptor;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->c(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Lcom/facebook/orca/analytics/NetworkDataLogger;

    move-result-object v0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/orca/analytics/NetworkDataLogger;->a(Ljava/net/URI;Ljava/lang/String;JJ)V

    .line 109
    cmp-long v0, v5, v8

    if-gez v0, :cond_1

    .line 112
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;

    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpResponseInterceptor;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-direct {v0, v3, v7, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;-><init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;Lorg/apache/http/HttpEntity;Ljava/net/URI;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 114
    :cond_1
    return-void
.end method
