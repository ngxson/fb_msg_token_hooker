.class Lcom/facebook/chatheads/RecentTaskChangeDetector$1;
.super Ljava/lang/Object;
.source "RecentTaskChangeDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/RecentTaskChangeDetector;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/RecentTaskChangeDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector$1;->a:Lcom/facebook/chatheads/RecentTaskChangeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector$1;->a:Lcom/facebook/chatheads/RecentTaskChangeDetector;

    invoke-static {v0}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->a(Lcom/facebook/chatheads/RecentTaskChangeDetector;)V

    .line 53
    iget-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector$1;->a:Lcom/facebook/chatheads/RecentTaskChangeDetector;

    invoke-static {v0}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->b(Lcom/facebook/chatheads/RecentTaskChangeDetector;)V

    .line 54
    return-void
.end method
