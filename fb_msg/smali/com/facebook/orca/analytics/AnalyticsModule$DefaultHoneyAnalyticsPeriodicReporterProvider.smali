.class Lcom/facebook/orca/analytics/AnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;",
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
    .line 252
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;
    .locals 4

    .prologue
    .line 257
    new-instance v2, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;

    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Lcom/facebook/orca/analytics/AnalyticsModule;)Landroid/content/Context;

    move-result-object v3

    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;-><init>(Landroid/content/Context;Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/analytics/AnalyticsConfig;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;->a()Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;

    move-result-object v0

    return-object v0
.end method
