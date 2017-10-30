.class public Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;
.super Ljava/lang/Object;
.source "AnalyticsOrcaHttpClientObserver.java"

# interfaces
.implements Lcom/facebook/orca/common/http/OrcaHttpClientObserver;


# instance fields
.field private final a:Lcom/facebook/orca/analytics/NetworkDataLogger;

.field private final b:Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/analytics/NetworkDataLogger;Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->a:Lcom/facebook/orca/analytics/NetworkDataLogger;

    .line 45
    iput-object p2, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->b:Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->c:Ljava/util/Map;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->b:Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Lcom/facebook/orca/analytics/NetworkDataLogger;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->a:Lcom/facebook/orca/analytics/NetworkDataLogger;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/http/protocol/HttpRequestInterceptorList;Lorg/apache/http/protocol/HttpResponseInterceptorList;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->a:Lcom/facebook/orca/analytics/NetworkDataLogger;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpRequestInterceptor;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpRequestInterceptor;-><init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$1;)V

    invoke-interface {p1, v0}, Lorg/apache/http/protocol/HttpRequestInterceptorList;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 61
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpResponseInterceptor;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$MyHttpResponseInterceptor;-><init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$1;)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lorg/apache/http/protocol/HttpResponseInterceptorList;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V

    goto :goto_0
.end method
