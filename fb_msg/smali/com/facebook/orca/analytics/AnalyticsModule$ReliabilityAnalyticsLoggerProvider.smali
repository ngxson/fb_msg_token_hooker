.class Lcom/facebook/orca/analytics/AnalyticsModule$ReliabilityAnalyticsLoggerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;",
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
    .line 265
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule$ReliabilityAnalyticsLoggerProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$ReliabilityAnalyticsLoggerProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;
    .locals 2

    .prologue
    .line 270
    new-instance v1, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule$ReliabilityAnalyticsLoggerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-direct {v1, v0}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;-><init>(Lcom/facebook/orca/analytics/AnalyticsLogger;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$ReliabilityAnalyticsLoggerProvider;->a()Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    move-result-object v0

    return-object v0
.end method
