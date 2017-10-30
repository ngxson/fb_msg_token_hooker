.class public Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "AnalyticsLogger.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/analytics/AnalyticsLogger;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/analytics/AnalyticsLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 476
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    move-object v0, p1

    check-cast v0, Lcom/facebook/orca/activity/FbActivityish;

    invoke-static {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V

    .line 477
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/AnalyticsLogger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;Z)Z

    .line 479
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v1, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/net/NetworkInfo;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/content/Context;)V

    .line 483
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/AnalyticsLogger;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 499
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->d(Lcom/facebook/orca/analytics/AnalyticsLogger;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 500
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;I)V

    .line 502
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    check-cast p1, Lcom/facebook/orca/activity/FbActivityish;

    invoke-static {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V

    .line 488
    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    check-cast p1, Lcom/facebook/orca/activity/FbActivityish;

    invoke-static {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V

    .line 472
    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 492
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    check-cast p1, Lcom/facebook/orca/activity/FbActivityish;

    invoke-static {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->d(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V

    .line 493
    return-void
.end method
