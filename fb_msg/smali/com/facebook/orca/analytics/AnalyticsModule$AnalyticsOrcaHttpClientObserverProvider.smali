.class Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsOrcaHttpClientObserverProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/analytics/AnalyticsModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsOrcaHttpClientObserverProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsOrcaHttpClientObserverProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;
    .locals 3

    .prologue
    .line 279
    new-instance v2, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    const-class v0, Lcom/facebook/orca/analytics/NetworkDataLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsOrcaHttpClientObserverProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/NetworkDataLogger;

    const-class v1, Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsOrcaHttpClientObserverProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;-><init>(Lcom/facebook/orca/analytics/NetworkDataLogger;Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsOrcaHttpClientObserverProvider;->a()Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    move-result-object v0

    return-object v0
.end method
