.class Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController$2;
.super Ljava/lang/Object;
.source "AnimatingListViewScrollStateController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;


# direct methods
.method constructor <init>(Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController$2;->a:Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;

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
    .line 44
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController$2;->a:Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;

    invoke-static {v0, p2}, Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;->a(Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;I)V

    .line 36
    return-void
.end method
