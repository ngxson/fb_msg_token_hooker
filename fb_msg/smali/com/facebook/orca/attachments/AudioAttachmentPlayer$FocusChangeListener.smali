.class Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;
.super Ljava/lang/Object;
.source "AudioAttachmentPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;-><init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Lcom/facebook/orca/common/util/AndroidThreadUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 168
    packed-switch p1, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c()V

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->j(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z

    .line 186
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d()V

    goto :goto_0

    .line 190
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a()V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
