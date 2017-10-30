.class final Lcom/facebook/orca/app/FbBaseModule$1;
.super Ljava/lang/Object;
.source "FbBaseModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ExecutionList$UncaughtExceptionHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-static {p1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
