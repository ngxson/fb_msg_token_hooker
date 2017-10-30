.class final Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;
.super Ljava/io/FilterInputStream;
.source "AnalyticsOrcaHttpClientObserver.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;

    .line 144
    new-instance v0, Lcom/google/common/io/CountingInputStream;

    invoke-direct {v0, p2}, Lcom/google/common/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    return-void
.end method

.method private declared-synchronized a()V
    .locals 7

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/google/common/io/CountingInputStream;

    invoke-virtual {v0}, Lcom/google/common/io/CountingInputStream;->a()J

    move-result-wide v0

    .line 175
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;

    invoke-static {v2}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->a(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;

    iget-object v2, v2, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-static {v2}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;->c(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;)Lcom/facebook/orca/analytics/NetworkDataLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;

    invoke-static {v3}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->b(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;)Ljava/net/URI;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;

    invoke-static {v4}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->c(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;

    invoke-static {v5}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->a(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;)J

    move-result-wide v5

    sub-long v5, v0, v5

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/facebook/orca/analytics/NetworkDataLogger;->a(Ljava/net/URI;Ljava/lang/String;J)V

    .line 177
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->a:Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;

    invoke-static {v2, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;->a(Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public read()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 150
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->a()V

    .line 151
    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 157
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->a()V

    .line 158
    return v0
.end method

.method public skip(J)J
    .locals 2
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 164
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver$BytesCountingEntity$MyCountingInputStream;->a()V

    .line 165
    return-wide v0
.end method
