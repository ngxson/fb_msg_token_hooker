.class Lcom/facebook/orca/analytics/AnalyticsLogger$2;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsLogger.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/analytics/AnalyticsLogger;


# direct methods
.method constructor <init>(Lcom/facebook/orca/analytics/AnalyticsLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$2;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger$2;->isInitialStickyBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$2;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$2;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    .line 448
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$2;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method
