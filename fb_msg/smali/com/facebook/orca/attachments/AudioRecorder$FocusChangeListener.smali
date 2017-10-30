.class Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/AudioRecorder;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/attachments/AudioRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/attachments/AudioRecorder;Lcom/facebook/orca/attachments/AudioRecorder$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;-><init>(Lcom/facebook/orca/attachments/AudioRecorder;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->j(Lcom/facebook/orca/attachments/AudioRecorder;)Lcom/facebook/orca/common/util/AndroidThreadUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 302
    packed-switch p1, :pswitch_data_0

    .line 313
    :goto_0
    :pswitch_0
    return-void

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->a(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/net/Uri;

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
