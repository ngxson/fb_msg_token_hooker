.class public Lcom/facebook/orca/common/ui/util/MultitouchResampler;
.super Ljava/lang/Object;
.source "MultitouchResampler.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
.end annotation


# instance fields
.field private a:[Lcom/facebook/orca/common/ui/util/Resampler;

.field private b:[I

.field private c:[Landroid/view/MotionEvent$PointerCoords;

.field private d:Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/util/MultitouchResampler;-><init>(Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, v3, [Lcom/facebook/orca/common/ui/util/Resampler;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->a:[Lcom/facebook/orca/common/ui/util/Resampler;

    .line 29
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->b:[I

    .line 30
    new-array v0, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->c:[Landroid/view/MotionEvent$PointerCoords;

    .line 31
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 32
    iget-object v1, p0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->a:[Lcom/facebook/orca/common/ui/util/Resampler;

    new-instance v2, Lcom/facebook/orca/common/ui/util/Resampler;

    invoke-direct {v2, p1}, Lcom/facebook/orca/common/ui/util/Resampler;-><init>(Z)V

    aput-object v2, v1, v0

    .line 33
    iget-object v1, p0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->c:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v4, v4, v1, v2}, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;-><init>(FFJ)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->d:Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;

    .line 36
    return-void
.end method

.method private final a(I)Lcom/facebook/orca/common/ui/util/Resampler;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->a:[Lcom/facebook/orca/common/ui/util/Resampler;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;IJ)Landroid/view/MotionEvent;
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 116
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_0

    .line 117
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->b:[I

    aput v3, v4, v2

    .line 119
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->a(I)Lcom/facebook/orca/common/ui/util/Resampler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->d:Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1, v4}, Lcom/facebook/orca/common/ui/util/Resampler;->a(JLcom/facebook/orca/common/ui/util/Resampler$SamplePoint;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->c:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->d:Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;

    invoke-virtual {v4}, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;->a()F

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->c:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->d:Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;

    invoke-virtual {v4}, Lcom/facebook/orca/common/ui/util/Resampler$SamplePoint;->b()F

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->b:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/orca/common/ui/util/MultitouchResampler;->c:[Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    move-wide/from16 v4, p3

    move/from16 v6, p2

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 128
    return-object v2

    .line 130
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "Cannot synthesize motion events on pre-GB devices"

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
