.class final Lcom/google/common/cache/CustomConcurrentHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
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
    .line 4159
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$KeySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 4188
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$KeySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->clear()V

    .line 4189
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$KeySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 4173
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$KeySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4163
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$KeyIterator;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$KeySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-direct {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$KeyIterator;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 4183
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$KeySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4168
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$KeySet;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
