.class public Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;
.super Landroid/view/View;
.source "AudioRecordVolumeIndicatorView.java"


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;

.field private g:[Z

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0xa

    sput v0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a:I

    .line 16
    const/16 v0, 0x96

    sput v0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x64

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->e:Landroid/os/Handler;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->c:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->d:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->d:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    const/16 v0, 0x1b

    iput v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->k:I

    .line 51
    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->k:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->g:[Z

    .line 54
    iput v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->m:I

    .line 57
    iput v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->h:I

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)I
    .locals 1
    .parameter

    .prologue
    .line 13
    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->k:I

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->f:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)[Z
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->g:[Z

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->b:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;-><init>(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->f:Ljava/lang/Runnable;

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    int-to-float v0, p1

    iput v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->i:F

    .line 116
    int-to-float v0, p2

    iput v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->j:F

    .line 117
    return-void
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->m:I

    return v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    const/4 v1, 0x0

    .line 65
    const/16 v0, 0x18

    .line 66
    const/16 v3, 0x15c

    move v2, v1

    move v1, v0

    .line 67
    :goto_0
    if-ge v1, v3, :cond_1

    .line 68
    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->i:F

    float-to-double v4, v0

    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->h:I

    int-to-double v6, v0

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->j:F

    float-to-double v5, v0

    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->h:I

    int-to-double v7, v0

    int-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v5, v5

    const/high16 v6, 0x4000

    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->g:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->c:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 67
    add-int/lit8 v0, v1, 0xc

    move v1, v0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->d:Landroid/graphics/Paint;

    goto :goto_1

    .line 75
    :cond_1
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput p1, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->m:I

    .line 106
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    :cond_0
    iput p1, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->l:I

    .line 89
    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->k:I

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->m:I

    div-int v3, v0, v2

    move v2, v1

    .line 90
    :goto_0
    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->k:I

    if-ge v2, v0, :cond_2

    .line 91
    iget-object v4, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->g:[Z

    if-gt v2, v3, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v4, v2

    .line 90
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 91
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
