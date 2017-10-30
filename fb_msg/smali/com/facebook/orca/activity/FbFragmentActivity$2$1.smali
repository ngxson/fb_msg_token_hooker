.class Lcom/facebook/orca/activity/FbFragmentActivity$2$1;
.super Ljava/lang/Object;
.source "FbFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/dispose/Disposable;

.field final synthetic b:Lcom/facebook/orca/activity/FbFragmentActivity$2;


# direct methods
.method constructor <init>(Lcom/facebook/orca/activity/FbFragmentActivity$2;Lcom/facebook/dispose/Disposable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/facebook/orca/activity/FbFragmentActivity$2$1;->b:Lcom/facebook/orca/activity/FbFragmentActivity$2;

    iput-object p2, p0, Lcom/facebook/orca/activity/FbFragmentActivity$2$1;->a:Lcom/facebook/dispose/Disposable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity$2$1;->b:Lcom/facebook/orca/activity/FbFragmentActivity$2;

    iget-object v0, v0, Lcom/facebook/orca/activity/FbFragmentActivity$2;->a:Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-static {v0}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Lcom/facebook/orca/activity/FbFragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity$2$1;->b:Lcom/facebook/orca/activity/FbFragmentActivity$2;

    iget-object v0, v0, Lcom/facebook/orca/activity/FbFragmentActivity$2;->a:Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-static {v0}, Lcom/facebook/orca/activity/FbFragmentActivity;->b(Lcom/facebook/orca/activity/FbFragmentActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/activity/FbFragmentActivity$2$1;->a:Lcom/facebook/dispose/Disposable;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 300
    :cond_0
    return-void
.end method
