.class Lcom/facebook/orca/compose/ComposeFragment$9;
.super Ljava/lang/Object;
.source "ComposeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/MediaAttachment;

.field final synthetic b:Lcom/facebook/orca/compose/ComposeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeFragment;Lcom/facebook/orca/attachments/MediaAttachment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment$9;->b:Lcom/facebook/orca/compose/ComposeFragment;

    iput-object p2, p0, Lcom/facebook/orca/compose/ComposeFragment$9;->a:Lcom/facebook/orca/attachments/MediaAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 678
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$9;->b:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 679
    sget v0, Lcom/facebook/R$layout;->orca_audio_preview:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 681
    sget v0, Lcom/facebook/R$id;->orca_audio_player:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AudioPlayerView;

    .line 683
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/attachments/AudioPlayerView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 684
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment$9;->a:Lcom/facebook/orca/attachments/MediaAttachment;

    invoke-virtual {v2}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/attachments/AudioPlayerView;->setUri(Landroid/net/Uri;)V

    .line 686
    sget v2, Lcom/facebook/R$string;->audio_recorder_playback_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 687
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 688
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 689
    new-instance v2, Lcom/facebook/orca/compose/ComposeFragment$9$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/compose/ComposeFragment$9$1;-><init>(Lcom/facebook/orca/compose/ComposeFragment$9;Lcom/facebook/orca/attachments/AudioPlayerView;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 696
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 697
    return-void
.end method
