.class Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsEventProcessor;",
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
    .line 173
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/AnalyticsEventProcessor;
    .locals 9

    .prologue
    .line 177
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/facebook/orca/annotations/MeUserId;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    const-class v3, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    const-class v4, Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/analytics/AnalyticsStorage;

    const-class v5, Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;

    const-class v6, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    const-class v7, Lcom/facebook/orca/app/AppInitLock;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/app/AppInitLock;

    const-class v8, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/common/util/Clock;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;Lcom/facebook/orca/analytics/AnalyticsStorage;Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;Lcom/facebook/orca/app/AppInitLock;Lcom/facebook/orca/common/util/Clock;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;->a()Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    move-result-object v0

    return-object v0
.end method
