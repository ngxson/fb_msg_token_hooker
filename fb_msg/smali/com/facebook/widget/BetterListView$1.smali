.class Lcom/facebook/widget/BetterListView$1;
.super Ljava/lang/Object;
.source "BetterListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/BetterListView;


# direct methods
.method constructor <init>(Lcom/facebook/widget/BetterListView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/widget/BetterListView$1;->a:Lcom/facebook/widget/BetterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/widget/BetterListView$1;->a:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0, p2}, Lcom/facebook/widget/BetterListView;->a(I)V

    .line 64
    return-void
.end method
