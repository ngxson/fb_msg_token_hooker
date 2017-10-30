.class Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$2;
.super Ljava/lang/Object;
.source "ThreadViewMessageFragmentTab.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$2;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 190
    instance-of v1, v0, Lcom/facebook/orca/threadview/RowItem;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$2;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    check-cast v0, Lcom/facebook/orca/threadview/RowItem;

    invoke-static {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Lcom/facebook/orca/threadview/RowItem;)V

    .line 193
    :cond_0
    return-void
.end method
