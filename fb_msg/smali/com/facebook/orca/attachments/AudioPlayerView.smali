.class public Lcom/facebook/orca/attachments/AudioPlayerView;
.super Landroid/widget/RelativeLayout;
.source "AudioPlayerView.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/SeekBar;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final i:Ljava/lang/Runnable;

.field private final j:Ljava/text/DateFormat;

.field private k:Landroid/net/Uri;

.field private l:Lcom/facebook/orca/threads/Message;

.field private m:Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;

.field private n:Ljava/lang/String;

.field private o:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/facebook/orca/attachments/AudioPlayerView;

    sput-object v0, Lcom/facebook/orca/attachments/AudioPlayerView;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/R$layout;->orca_audio_player:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 84
    const-class v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    .line 85
    const-class v0, Landroid/os/Handler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->f:Landroid/os/Handler;

    .line 86
    sget v0, Lcom/facebook/R$id;->play_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->b:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcom/facebook/R$id;->audio_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->d:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/facebook/R$id;->audio_seek_bar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->c:Landroid/widget/SeekBar;

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->j:Ljava/text/DateFormat;

    .line 91
    new-instance v0, Lcom/facebook/orca/attachments/AudioPlayerView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/attachments/AudioPlayerView$1;-><init>(Lcom/facebook/orca/attachments/AudioPlayerView;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->g:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/facebook/orca/attachments/AudioPlayerView$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/attachments/AudioPlayerView$2;-><init>(Lcom/facebook/orca/attachments/AudioPlayerView;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 109
    new-instance v0, Lcom/facebook/orca/attachments/AudioPlayerView$3;

    invoke-direct {v0, p0}, Lcom/facebook/orca/attachments/AudioPlayerView$3;-><init>(Lcom/facebook/orca/attachments/AudioPlayerView;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->i:Ljava/lang/Runnable;

    .line 121
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->f()V

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioPlayerView;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->j:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioPlayerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AudioPlayerView;->setDuration(I)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/attachments/AudioPlayerView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->c:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/attachments/AudioPlayerView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/orca/attachments/AudioPlayerView;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/attachments/AudioPlayerView;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->j()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/attachments/AudioPlayerView;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->i()V

    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->k:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->l:Lcom/facebook/orca/threads/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->l:Lcom/facebook/orca/threads/Message;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->g()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->l:Lcom/facebook/orca/threads/Message;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->g()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->b:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4270

    invoke-static {v2, v3}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x420c

    invoke-static {v3, v4}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->setClickable(Z)V

    .line 148
    new-instance v0, Lcom/facebook/orca/attachments/AudioPlayerView$4;

    invoke-direct {v0, p0}, Lcom/facebook/orca/attachments/AudioPlayerView$4;-><init>(Lcom/facebook/orca/attachments/AudioPlayerView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/orca/attachments/AudioPlayerView$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/attachments/AudioPlayerView$5;-><init>(Lcom/facebook/orca/attachments/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/attachments/AudioPlayerView;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->g()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/orca/attachments/AudioPlayerView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 165
    sget-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$6;->a:[I

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->m:Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 167
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->k:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->l:Lcom/facebook/orca/threads/Message;

    iget-object v3, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->i:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Landroid/net/Uri;Lcom/facebook/orca/threads/Message;Ljava/lang/Runnable;Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d()V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c()V

    goto :goto_0

    .line 182
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->audio_player_error_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 188
    :pswitch_2
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->audio_player_unprepared_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic h(Lcom/facebook/orca/attachments/AudioPlayerView;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->k:Landroid/net/Uri;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    sget-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;->UNPREPARED:Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->m:Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;

    .line 237
    iput-object v2, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->n:Ljava/lang/String;

    .line 238
    iput-object v2, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->k:Landroid/net/Uri;

    .line 239
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->o:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->o:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->cancel(Z)Z

    .line 241
    iput-object v2, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->o:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;

    .line 243
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 266
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 269
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 271
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    sget v1, Lcom/facebook/R$id;->audio_name:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 276
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->c:Landroid/widget/SeekBar;

    new-instance v1, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;

    invoke-direct {v1, p0}, Lcom/facebook/orca/attachments/AudioPlayerView$AudioPlayerSeekBarChangeListener;-><init>(Lcom/facebook/orca/attachments/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 279
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10800af

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void

    .line 279
    :cond_0
    const v0, 0x10800b1

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    const v5, 0x10800b0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 290
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 295
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 296
    const/4 v1, 0x1

    sget v2, Lcom/facebook/R$id;->play_button:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 297
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 299
    sget-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$6;->a:[I

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->m:Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 301
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/R$string;->audio_message_length_suffix:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 307
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->d:Landroid/widget/TextView;

    sget v1, Lcom/facebook/R$string;->audio_message_default_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 308
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 312
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->d:Landroid/widget/TextView;

    sget v1, Lcom/facebook/R$string;->audio_message_error_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 313
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setDuration(I)V
    .locals 1
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->k:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AudioPlayerView;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->n:Ljava/lang/String;

    .line 328
    sget-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;->PREPARED:Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->m:Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;

    .line 329
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->b()V

    .line 330
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->e:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a()V

    .line 131
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->i()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->j()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;->ERROR:Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->m:Lcom/facebook/orca/attachments/AudioPlayerView$AudioState;

    .line 337
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->b()V

    .line 338
    return-void
.end method

.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->l:Lcom/facebook/orca/threads/Message;

    if-ne v0, p1, :cond_1

    .line 221
    if-nez p1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->h()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->l:Lcom/facebook/orca/threads/Message;

    .line 229
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioPlayerView;->h()V

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->k:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->k:Landroid/net/Uri;

    .line 208
    new-instance v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;-><init>(Lcom/facebook/orca/attachments/AudioPlayerView;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->o:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView;->o:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
