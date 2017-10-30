.class Lcom/facebook/orca/threadlist/ThreadListActivity$6;
.super Ljava/lang/Object;
.source "ThreadListActivity.java"

# interfaces
.implements Lcom/facebook/orca/nux/ThreadListNuxController$OnNuxFinishedListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/ThreadListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$6;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$6;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->setRequestedOrientation(I)V

    .line 314
    return-void
.end method
