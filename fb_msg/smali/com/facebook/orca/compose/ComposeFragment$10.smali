.class Lcom/facebook/orca/compose/ComposeFragment$10;
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
    .line 702
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment$10;->b:Lcom/facebook/orca/compose/ComposeFragment;

    iput-object p2, p0, Lcom/facebook/orca/compose/ComposeFragment$10;->a:Lcom/facebook/orca/attachments/MediaAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 705
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$10;->b:Lcom/facebook/orca/compose/ComposeFragment;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment$10;->a:Lcom/facebook/orca/attachments/MediaAttachment;

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->b(Lcom/facebook/orca/compose/ComposeFragment;Lcom/facebook/orca/attachments/MediaAttachment;)V

    .line 706
    return-void
.end method
