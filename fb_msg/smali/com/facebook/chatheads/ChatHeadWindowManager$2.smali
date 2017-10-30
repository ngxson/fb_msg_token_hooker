.class Lcom/facebook/chatheads/ChatHeadWindowManager$2;
.super Ljava/lang/Object;
.source "ChatHeadWindowManager.java"

# interfaces
.implements Lcom/facebook/chatheads/RecentTaskChangeDetector$OnRecentTaskChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadWindowManager;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$2;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$2;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadWindowManager;Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 115
    return-void
.end method
