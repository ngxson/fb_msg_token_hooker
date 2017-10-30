.class Lcom/facebook/orca/analytics/AnalyticsModule$SendAnalyticLogsMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;",
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
    .line 244
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule$SendAnalyticLogsMethodProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$SendAnalyticLogsMethodProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;

    invoke-direct {v0}, Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$SendAnalyticLogsMethodProvider;->a()Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;

    move-result-object v0

    return-object v0
.end method
