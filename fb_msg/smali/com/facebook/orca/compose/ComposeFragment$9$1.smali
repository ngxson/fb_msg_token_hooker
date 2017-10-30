.class Lcom/facebook/orca/compose/ComposeFragment$9$1;
.super Ljava/lang/Object;
.source "ComposeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/AudioPlayerView;

.field final synthetic b:Lcom/facebook/orca/compose/ComposeFragment$9;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeFragment$9;Lcom/facebook/orca/attachments/AudioPlayerView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment$9$1;->b:Lcom/facebook/orca/compose/ComposeFragment$9;

    iput-object p2, p0, Lcom/facebook/orca/compose/ComposeFragment$9$1;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$9$1;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->a()V

    .line 693
    return-void
.end method
