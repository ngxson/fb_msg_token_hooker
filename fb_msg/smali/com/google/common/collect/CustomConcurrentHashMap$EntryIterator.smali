.class final Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;
.super Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CustomConcurrentHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 3816
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3820
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;->e()Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3816
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
