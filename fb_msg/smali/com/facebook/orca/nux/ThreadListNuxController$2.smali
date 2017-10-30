.class Lcom/facebook/orca/nux/ThreadListNuxController$2;
.super Ljava/lang/Object;
.source "ThreadListNuxController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/nux/ThreadListNuxController;


# direct methods
.method constructor <init>(Lcom/facebook/orca/nux/ThreadListNuxController;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/facebook/orca/nux/ThreadListNuxController$2;->a:Lcom/facebook/orca/nux/ThreadListNuxController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController$2;->a:Lcom/facebook/orca/nux/ThreadListNuxController;

    invoke-static {v0}, Lcom/facebook/orca/nux/ThreadListNuxController;->b(Lcom/facebook/orca/nux/ThreadListNuxController;)Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController$2;->a:Lcom/facebook/orca/nux/ThreadListNuxController;

    invoke-static {v0}, Lcom/facebook/orca/nux/ThreadListNuxController;->c(Lcom/facebook/orca/nux/ThreadListNuxController;)Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a()V

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController$2;->a:Lcom/facebook/orca/nux/ThreadListNuxController;

    invoke-static {v0}, Lcom/facebook/orca/nux/ThreadListNuxController;->d(Lcom/facebook/orca/nux/ThreadListNuxController;)V

    .line 113
    return-void
.end method
