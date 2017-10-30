.class final Lcom/google/common/cache/CustomConcurrentHashMap$ComputedException;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/CustomConcurrentHashMap$ComputedValue",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 3315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3316
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedException;->a:Ljava/lang/Exception;

    .line 3317
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3321
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedException;->a:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
