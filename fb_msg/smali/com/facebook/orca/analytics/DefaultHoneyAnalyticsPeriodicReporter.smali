.class public Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;
.super Ljava/lang/Object;
.source "DefaultHoneyAnalyticsPeriodicReporter.java"

# interfaces
.implements Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;
.implements Lcom/facebook/orca/app/INeedInit;


# instance fields
.field private final a:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final b:Lcom/facebook/orca/analytics/AnalyticsConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/analytics/AnalyticsConfig;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 28
    iput-object p3, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;->b:Lcom/facebook/orca/analytics/AnalyticsConfig;

    .line 30
    new-instance v0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter$1;

    invoke-direct {v0, p0, p2}, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter$1;-><init>(Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    invoke-virtual {p2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;->b:Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsConfig;->a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;->b:Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsConfig;->a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE_AND_SAMPLED:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-ne v0, v1, :cond_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v1, "analytics_upload"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
