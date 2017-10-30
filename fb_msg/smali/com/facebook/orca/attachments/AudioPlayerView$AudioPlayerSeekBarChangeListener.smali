.class Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/AudioPlayerView;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lcom/facebook/orca/attachments/AudioPlayerView;)V
    .locals 1
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    invoke-static {p1}, Lcom/facebook/orca/attachments/AudioPlayerView;->a(Lcom/facebook/orca/attachments/AudioPlayerView;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->f()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->c:I

    .line 351
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->a(Lcom/facebook/orca/attachments/AudioPlayerView;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->b:Z

    .line 370
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->b:Z

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->a(Lcom/facebook/orca/attachments/AudioPlayerView;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c()V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->c(Lcom/facebook/orca/attachments/AudioPlayerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioPlayerView;->g(Lcom/facebook/orca/attachments/AudioPlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 356
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioPlayerView;->a(Lcom/facebook/orca/attachments/AudioPlayerView;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    move-result-object v1

    iget v2, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->c:I

    mul-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(I)V

    .line 357
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->c(Lcom/facebook/orca/attachments/AudioPlayerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioPlayerView;->g(Lcom/facebook/orca/attachments/AudioPlayerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->b:Z

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->a(Lcom/facebook/orca/attachments/AudioPlayerView;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d()V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->a(Lcom/facebook/orca/attachments/AudioPlayerView;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a()V

    goto :goto_0
.end method
