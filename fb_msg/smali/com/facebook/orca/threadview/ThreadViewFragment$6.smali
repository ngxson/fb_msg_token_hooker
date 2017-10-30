.class Lcom/facebook/orca/threadview/ThreadViewFragment$6;
.super Ljava/lang/Object;
.source "ThreadViewFragment.java"

# interfaces
.implements Lcom/facebook/orca/mutators/LeaveThreadDialogFragment$LeaveThreadListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threads/ThreadSummary;

.field final synthetic b:Lcom/facebook/orca/users/User;

.field final synthetic c:Lcom/facebook/orca/threadview/ThreadViewFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/users/User;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$6;->c:Lcom/facebook/orca/threadview/ThreadViewFragment;

    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$6;->a:Lcom/facebook/orca/threads/ThreadSummary;

    iput-object p3, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$6;->b:Lcom/facebook/orca/users/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 865
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$6;->c:Lcom/facebook/orca/threadview/ThreadViewFragment;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$6;->a:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment$6;->b:Lcom/facebook/orca/users/User;

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/users/User;)V

    .line 866
    return-void
.end method
