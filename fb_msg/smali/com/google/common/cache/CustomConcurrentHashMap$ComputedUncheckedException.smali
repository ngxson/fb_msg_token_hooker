.class final Lcom/google/common/cache/CustomConcurrentHashMap$ComputedUncheckedException;
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
.field final a:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Ljava/lang/RuntimeException;)V
    .locals 0
    .parameter

    .prologue
    .line 3299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3300
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedUncheckedException;->a:Ljava/lang/RuntimeException;

    .line 3301
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
    .line 3305
    new-instance v0, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedUncheckedException;->a:Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
