.class Lcom/facebook/orca/activity/FbFragmentActivity$2;
.super Ljava/lang/Object;
.source "FbFragmentActivity.java"

# interfaces
.implements Lcom/facebook/dispose/DisposeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/activity/FbFragmentActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/activity/FbFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/facebook/orca/activity/FbFragmentActivity$2;->a:Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/dispose/Disposable;)V
    .locals 2
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity$2;->a:Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-static {v0}, Lcom/facebook/orca/activity/FbFragmentActivity;->c(Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/common/util/AndroidThreadUtil;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/activity/FbFragmentActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity$2$1;-><init>(Lcom/facebook/orca/activity/FbFragmentActivity$2;Lcom/facebook/dispose/Disposable;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method
