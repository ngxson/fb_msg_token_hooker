.class public Lcom/facebook/widget/BetterGridView;
.super Landroid/widget/GridView;
.source "BetterGridView.java"

# interfaces
.implements Lcom/facebook/widget/ScrollableView;


# instance fields
.field private a:Lcom/facebook/widget/listeners/BetterViewListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/listeners/BetterViewListener",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/widget/BetterGridView;->a:Lcom/facebook/widget/listeners/BetterViewListener;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/listeners/BetterViewListener;->b(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/widget/BetterGridView;->a:Lcom/facebook/widget/listeners/BetterViewListener;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/listeners/BetterViewListener;->a(Ljava/lang/Object;)V

    .line 41
    return-void
.end method
