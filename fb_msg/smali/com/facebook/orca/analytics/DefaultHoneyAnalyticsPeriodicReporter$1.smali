.class Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "DefaultHoneyAnalyticsPeriodicReporter.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field final synthetic b:Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;


# direct methods
.method constructor <init>(Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter$1;->b:Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;

    iput-object p2, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 39
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 34
    return-void
.end method
