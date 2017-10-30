.class public Lcom/facebook/orca/analytics/AnalyticsModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "AnalyticsModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule;->a:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseSupplierProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseSupplierProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 46
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDbSchemaPartProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDbSchemaPartProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 49
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsPropertyUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsPropertyUtilProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 51
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsStorageProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsStorageProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 54
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 57
    const-class v0, Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticCountersProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticCountersProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 60
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 63
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 66
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerActivityListenerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerActivityListenerProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 69
    const-class v0, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 71
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 74
    const-class v0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 77
    const-class v0, Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$SendAnalyticLogsMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$SendAnalyticLogsMethodProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 80
    const-class v0, Lcom/facebook/orca/performance/PerformanceLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$PerformanceLoggerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$PerformanceLoggerProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 83
    const-class v0, Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 85
    const-class v0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 88
    const-class v0, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$ReliabilityAnalyticsLoggerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$ReliabilityAnalyticsLoggerProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 91
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsOrcaHttpClientObserverProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsOrcaHttpClientObserverProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 94
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpClientObserver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsOrcaHttpClientObserver;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 96
    const-class v0, Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$NetworkDataLogUtilsProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$NetworkDataLogUtilsProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 101
    const-class v0, Lcom/facebook/orca/analytics/NetworkDataLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 102
    return-void
.end method
