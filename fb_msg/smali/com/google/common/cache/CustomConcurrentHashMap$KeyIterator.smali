.class final Lcom/google/common/cache/CustomConcurrentHashMap$KeyIterator;
.super Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CustomConcurrentHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/cache/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CustomConcurrentHashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 4083
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$KeyIterator;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 4087
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$KeyIterator;->e()Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
