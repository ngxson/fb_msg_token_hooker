.class Lcom/facebook/orca/analytics/AnalyticsLogger$1;
.super Ljava/lang/Object;
.source "AnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/facebook/orca/analytics/AnalyticsLogger;


# direct methods
.method constructor <init>(Lcom/facebook/orca/analytics/AnalyticsLogger;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$1;->b:Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-wide p2, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$1;->b:Lcom/facebook/orca/analytics/AnalyticsLogger;

    iget-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$1;->a:J

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;J)V

    .line 227
    return-void
.end method
