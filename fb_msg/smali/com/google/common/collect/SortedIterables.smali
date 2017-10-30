.class final Lcom/google/common/collect/SortedIterables;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/google/common/collect/SortedIterables$2;

    invoke-direct {v0}, Lcom/google/common/collect/SortedIterables$2;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Comparator;Ljava/util/Iterator;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Iterator",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 72
    return-object v0
.end method

.method private static a(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;[TE;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 102
    array-length v1, p1

    if-nez v1, :cond_0

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    move v1, v0

    .line 106
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 107
    aget-object v2, p1, v0

    add-int/lit8 v3, v1, -0x1

    aget-object v3, p1, v3

    invoke-interface {p0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 108
    if-eqz v2, :cond_1

    .line 109
    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v0

    aput-object v3, p1, v1

    move v1, v2

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_2
    array-length v0, p1

    if-ge v1, v0, :cond_3

    .line 113
    invoke-static {p1, v1}, Lcom/google/common/collect/ObjectArrays;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 115
    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 50
    check-cast p1, Ljava/util/SortedSet;

    .line 51
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/google/common/collect/Ordering;->d()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 55
    :cond_1
    instance-of v0, p1, Lcom/google/common/collect/SortedIterable;

    if-eqz v0, :cond_2

    .line 56
    check-cast p1, Lcom/google/common/collect/SortedIterable;

    invoke-interface {p1}, Lcom/google/common/collect/SortedIterable;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/Comparator;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 82
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_3

    .line 83
    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->f()Ljava/util/Set;

    move-result-object v0

    .line 85
    :goto_0
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 86
    invoke-static {p0, v0}, Lcom/google/common/collect/SortedIterables;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Ljava/util/Set;

    .line 97
    :goto_1
    return-object v0

    .line 89
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 93
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/Iterables;->d(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 94
    invoke-static {p0, v0}, Lcom/google/common/collect/SortedIterables;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    invoke-static {v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 97
    :cond_2
    invoke-static {p0, v1}, Lcom/google/common/collect/SortedIterables;->a(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method public static c(Ljava/util/Comparator;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 135
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 136
    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 137
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->d_()Ljava/util/Set;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->d_()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    invoke-static {p0}, Lcom/google/common/collect/Ordering;->a(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/SortedIterables$1;

    invoke-direct {v2}, Lcom/google/common/collect/SortedIterables$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Ordering;->a(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 149
    :cond_1
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 151
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    check-cast p1, Ljava/util/Collection;

    .line 158
    :goto_1
    invoke-static {p1}, Lcom/google/common/collect/SortedIterables;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 155
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 159
    :cond_3
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    const/4 v2, 0x0

    .line 161
    const/4 v0, 0x0

    .line 162
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 163
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 164
    if-lez v3, :cond_5

    .line 165
    invoke-interface {p0, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_4

    .line 166
    add-int/lit8 v0, v3, 0x1

    :goto_3
    move v3, v0

    .line 174
    goto :goto_2

    .line 168
    :cond_4
    invoke-static {v2, v3}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    move v0, v1

    .line 170
    goto :goto_3

    :cond_5
    move-object v2, v0

    move v0, v1

    .line 174
    goto :goto_3

    .line 177
    :cond_6
    if-lez v3, :cond_7

    .line 178
    invoke-static {v2, v3}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v0, v4

    .line 180
    goto :goto_0

    .line 182
    :cond_8
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->a(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 183
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 184
    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset;->d_()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method
