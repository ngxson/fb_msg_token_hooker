.class Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;
.super Lcom/google/common/collect/Synchronized$SynchronizedSet;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 838
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 839
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 876
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 877
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 881
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 886
    if-ne p1, p0, :cond_0

    .line 887
    const/4 v0, 0x1

    .line 890
    :goto_0
    return v0

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 890
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 843
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 844
    new-instance v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;-><init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 894
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 895
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 899
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 900
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 904
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 905
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 906
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 866
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 867
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 871
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 872
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
