.class Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;
.super Ljava/lang/Object;
.source "ThreadListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/ThreadListFragment;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/threadlist/ThreadListFragment$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 576
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    add-int v1, p2, p3

    invoke-static {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Lcom/facebook/orca/threadlist/ThreadListFragment;I)I

    .line 577
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 560
    if-nez p2, :cond_1

    .line 561
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->c(Lcom/facebook/orca/threadlist/ThreadListFragment;)Lcom/facebook/orca/server/BackgroundRefreshRunner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Z)V

    .line 562
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    .line 563
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->d(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    .line 568
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->e(Lcom/facebook/orca/threadlist/ThreadListFragment;)Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->e(Lcom/facebook/orca/threadlist/ThreadListFragment;)Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;->a(Landroid/widget/AbsListView;I)V

    .line 571
    :cond_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->c(Lcom/facebook/orca/threadlist/ThreadListFragment;)Lcom/facebook/orca/server/BackgroundRefreshRunner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Z)V

    goto :goto_0
.end method
