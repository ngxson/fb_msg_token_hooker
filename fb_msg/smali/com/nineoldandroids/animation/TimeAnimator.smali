.class public Lcom/nineoldandroids/animation/TimeAnimator;
.super Lcom/nineoldandroids/animation/ValueAnimator;
.source "TimeAnimator.java"


# instance fields
.field private h:Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 15
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->i:J

    .line 67
    return-void
.end method


# virtual methods
.method a(F)V
    .locals 0
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method b()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method b(J)Z
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 19
    iget v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->d:I

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->d:I

    .line 21
    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->c:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 22
    iput-wide p1, p0, Lcom/nineoldandroids/animation/TimeAnimator;->b:J

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->h:Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_1

    .line 30
    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->b:J

    sub-long v2, p1, v0

    .line 31
    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->i:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 32
    :goto_1
    iput-wide p1, p0, Lcom/nineoldandroids/animation/TimeAnimator;->i:J

    .line 33
    iget-object v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->h:Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;->a(Lcom/nineoldandroids/animation/TimeAnimator;JJ)V

    .line 35
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_2
    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->c:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->b:J

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->c:J

    goto :goto_0

    .line 31
    :cond_3
    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->i:J

    sub-long v4, p1, v0

    goto :goto_1
.end method
