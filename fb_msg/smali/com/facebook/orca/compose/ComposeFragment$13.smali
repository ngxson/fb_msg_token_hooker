.class Lcom/facebook/orca/compose/ComposeFragment$13;
.super Ljava/lang/Object;
.source "ComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/ComposeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment$13;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1108
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$13;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment;Z)Z

    .line 1109
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$13;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0, v1, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment;ZZ)V

    .line 1110
    return-void
.end method
