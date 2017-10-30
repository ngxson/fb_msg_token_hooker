.class public Lcom/facebook/orca/push/mqtt/adaptive/ProbabilisticEstimator;
.super Ljava/lang/Object;
.source "ProbabilisticEstimator.java"

# interfaces
.implements Lcom/facebook/orca/push/mqtt/adaptive/Estimator;


# instance fields
.field private a:I

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/orca/push/mqtt/adaptive/ProbabilisticEstimator;->a:I

    .line 80
    const-wide v0, 0x3f5a36e2eb1c432dL

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/adaptive/ProbabilisticEstimator;->b:D

    return-void
.end method
