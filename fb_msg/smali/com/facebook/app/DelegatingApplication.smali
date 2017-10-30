.class public abstract Lcom/facebook/app/DelegatingApplication;
.super Landroid/app/Application;
.source "DelegatingApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/app/ApplicationLike;",
        ">",
        "Landroid/app/Application;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/app/ApplicationLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/app/DelegatingApplication;->a:Lcom/facebook/app/ApplicationLike;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/facebook/app/DelegatingApplication;->a()Lcom/facebook/app/ApplicationLike;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/app/DelegatingApplication;->a:Lcom/facebook/app/ApplicationLike;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a()Lcom/facebook/app/ApplicationLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Lcom/facebook/app/DelegatingApplication;->b()V

    .line 54
    invoke-direct {p0}, Lcom/facebook/app/DelegatingApplication;->d()V

    .line 55
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected c()Lcom/facebook/app/ApplicationLike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/app/DelegatingApplication;->d()V

    .line 47
    iget-object v0, p0, Lcom/facebook/app/DelegatingApplication;->a:Lcom/facebook/app/ApplicationLike;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 60
    invoke-direct {p0}, Lcom/facebook/app/DelegatingApplication;->d()V

    .line 61
    iget-object v0, p0, Lcom/facebook/app/DelegatingApplication;->a:Lcom/facebook/app/ApplicationLike;

    invoke-virtual {v0}, Lcom/facebook/app/ApplicationLike;->b()V

    .line 62
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 67
    invoke-direct {p0}, Lcom/facebook/app/DelegatingApplication;->d()V

    .line 68
    iget-object v0, p0, Lcom/facebook/app/DelegatingApplication;->a:Lcom/facebook/app/ApplicationLike;

    invoke-virtual {v0}, Lcom/facebook/app/ApplicationLike;->c()V

    .line 69
    return-void
.end method
