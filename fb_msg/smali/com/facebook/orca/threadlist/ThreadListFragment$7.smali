.class Lcom/facebook/orca/threadlist/ThreadListFragment$7;
.super Ljava/lang/Object;
.source "ThreadListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threads/ThreadSummary;

.field final synthetic b:Lcom/facebook/orca/threadlist/ThreadListFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$7;->b:Lcom/facebook/orca/threadlist/ThreadListFragment;

    iput-object p2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$7;->a:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$7;->b:Lcom/facebook/orca/threadlist/ThreadListFragment;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$7;->a:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-static {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 499
    return-void
.end method
