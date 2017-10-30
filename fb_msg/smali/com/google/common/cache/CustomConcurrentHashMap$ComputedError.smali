.class final Lcom/google/common/cache/CustomConcurrentHashMap$ComputedError;
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
.field final a:Ljava/lang/Error;


# direct methods
.method constructor <init>(Ljava/lang/Error;)V
    .locals 0
    .parameter

    .prologue
    .line 3331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3332
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedError;->a:Ljava/lang/Error;

    .line 3333
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
    .line 3337
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionError;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ComputedError;->a:Ljava/lang/Error;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v0
.end method
