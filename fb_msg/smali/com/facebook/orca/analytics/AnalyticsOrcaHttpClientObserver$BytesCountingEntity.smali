.class final Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "AnalyticsOrcaHttpClientObserver.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

.field private final b:Ljava/net/URI;

.field private final c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/io/InputStream;

.field private f:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;Lorg/apache/http/HttpEntity;Ljava/net/URI;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    .line 125
    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->d:J

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->e:Ljava/io/InputStream;

    .line 126
    iput-object p3, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->b:Ljava/net/URI;

    .line 127
    iput-object p4, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->c:Ljava/lang/String;

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;)J
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;)Ljava/net/URI;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->b:Ljava/net/URI;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->e:Ljava/io/InputStream;

    if-eq v0, v1, :cond_0

    .line 136
    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->e:Ljava/io/InputStream;

    .line 137
    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;-><init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->f:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->f:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;

    return-object v0
.end method
