.class public Lcom/facebook/common/util/UiThreadExecutor;
.super Ljava/lang/Object;
.source "UiThreadExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Lcom/facebook/orca/common/util/AndroidThreadUtil;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/common/util/UiThreadExecutor;->a:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 18
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/common/util/UiThreadExecutor;->a:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0, p1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->d(Ljava/lang/Runnable;)V

    .line 23
    return-void
.end method
