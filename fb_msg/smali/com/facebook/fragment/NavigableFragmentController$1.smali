.class Lcom/facebook/fragment/NavigableFragmentController$1;
.super Ljava/lang/Object;
.source "NavigableFragmentController.java"

# interfaces
.implements Lcom/facebook/fragment/ReportingFragment$Listener;


# instance fields
.field final synthetic a:Lcom/facebook/fragment/NavigableFragmentController;


# direct methods
.method constructor <init>(Lcom/facebook/fragment/NavigableFragmentController;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/fragment/NavigableFragmentController$1;->a:Lcom/facebook/fragment/NavigableFragmentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController$1;->a:Lcom/facebook/fragment/NavigableFragmentController;

    invoke-static {v0, p1}, Lcom/facebook/fragment/NavigableFragmentController;->a(Lcom/facebook/fragment/NavigableFragmentController;Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public a(Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController$1;->a:Lcom/facebook/fragment/NavigableFragmentController;

    invoke-static {v0, p1, p2}, Lcom/facebook/fragment/NavigableFragmentController;->a(Lcom/facebook/fragment/NavigableFragmentController;Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V

    .line 65
    return-void
.end method
