.class Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;
.super Ljava/lang/Object;
.source "AudioRecordVolumeIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field final synthetic b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 127
    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->a:I

    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move v0, v1

    .line 129
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->b(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)[Z

    move-result-object v2

    aput-boolean v1, v2, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->invalidate()V

    .line 147
    :goto_1
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->c(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->b()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->a:I

    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)I

    move-result v2

    if-gt v0, v2, :cond_3

    move v0, v1

    .line 137
    :goto_2
    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 138
    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->b(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)[Z

    move-result-object v4

    iget v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->a:I

    if-ne v0, v2, :cond_2

    move v2, v3

    :goto_3
    aput-boolean v2, v4, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v2, v1

    .line 138
    goto :goto_3

    :cond_3
    move v0, v1

    .line 141
    :goto_4
    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 142
    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->b(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)[Z

    move-result-object v4

    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v5, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->a:I

    iget-object v6, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v6}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v2, v5

    if-ne v0, v2, :cond_4

    move v2, v3

    :goto_5
    aput-boolean v2, v4, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v2, v1

    .line 142
    goto :goto_5

    .line 145
    :cond_5
    iget v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->a:I

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a(Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->b()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->c()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->a:I

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView$1;->b:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->invalidate()V

    goto/16 :goto_1
.end method
