.class public Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;
.super Ljava/lang/Object;
.source "Resampler.java"


# instance fields
.field a:F

.field b:F

.field c:J


# direct methods
.method constructor <init>(FFJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;->a:F

    .line 234
    iput p2, p0, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;->b:F

    .line 235
    iput-wide p3, p0, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;->c:J

    .line 236
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;->a:F

    return v0
.end method

.method a(FFJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iput p1, p0, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;->a:F

    .line 240
    iput p2, p0, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;->b:F

    .line 241
    iput-wide p3, p0, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;->c:J

    .line 242
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;->b:F

    return v0
.end method
