.class final Lcom/google/common/collect/SortedTreeMultiset;
.super Lcom/google/common/collect/AbstractSortedMultiset;
.source "SortedTreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/common/collect/GeneralRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/GeneralRange",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;>;"
        }
    .end annotation
.end field

.field private final transient d:Lcom/google/common/collect/BstPathFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstPathFactory",
            "<",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;",
            "Lcom/google/common/collect/BstInOrderPath",
            "<",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;>;>;"
        }
    .end annotation
.end field

.field private final transient e:Lcom/google/common/collect/BstAggregate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstAggregate",
            "<",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;>;"
        }
    .end annotation
.end field

.field private final transient f:Lcom/google/common/collect/BstAggregate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstAggregate",
            "<",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;>;"
        }
    .end annotation
.end field

.field private final transient g:Lcom/google/common/collect/BstNodeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstNodeFactory",
            "<",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/GeneralRange;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/GeneralRange",
            "<TE;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 182
    invoke-static {}, Lcom/google/common/collect/BstInOrderPath;->a()Lcom/google/common/collect/BstPathFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->d:Lcom/google/common/collect/BstPathFactory;

    .line 290
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SortedTreeMultiset$3;-><init>(Lcom/google/common/collect/SortedTreeMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->e:Lcom/google/common/collect/BstAggregate;

    .line 302
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset$4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SortedTreeMultiset$4;-><init>(Lcom/google/common/collect/SortedTreeMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->f:Lcom/google/common/collect/BstAggregate;

    .line 314
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset$5;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SortedTreeMultiset$5;-><init>(Lcom/google/common/collect/SortedTreeMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->g:Lcom/google/common/collect/BstNodeFactory;

    .line 86
    iput-object p1, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    .line 87
    iput-object p2, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    return-void
.end method

.method private a(Lcom/google/common/collect/SortedTreeMultiset$Node;)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;)I"
        }
    .end annotation

    .prologue
    .line 283
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/SortedTreeMultiset$Node;->b(Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/SortedTreeMultiset$Node;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/common/collect/SortedTreeMultiset;->a(Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.MultisetModifier;)I"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->e:Lcom/google/common/collect/BstAggregate;

    invoke-static {v0}, Lcom/google/common/collect/BstCountBasedBalancePolicies;->a(Lcom/google/common/collect/BstAggregate;)Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SortedTreeMultiset;->g:Lcom/google/common/collect/BstNodeFactory;

    invoke-static {p2, v0, v1}, Lcom/google/common/collect/BstMutationRule;->a(Lcom/google/common/collect/BstModifier;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;)Lcom/google/common/collect/BstMutationRule;

    move-result-object v1

    .line 133
    invoke-virtual {p0}, Lcom/google/common/collect/SortedTreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstNode;

    invoke-static {v2, v1, v0, p1}, Lcom/google/common/collect/BstOperations;->a(Ljava/util/Comparator;Lcom/google/common/collect/BstMutationRule;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Lcom/google/common/collect/BstMutationResult;->a()Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/BstMutationResult;->b()Lcom/google/common/collect/BstNode;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/BstMutationResult;->c()Lcom/google/common/collect/BstNode;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    .line 140
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/SortedTreeMultiset$Node;->a(Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/SortedTreeMultiset;)Lcom/google/common/collect/GeneralRange;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    return-object v0
.end method

.method private a(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstInOrderPath",
            "<",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;>;",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/SortedTreeMultiset$1;-><init>(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)V

    .line 215
    new-instance v1, Lcom/google/common/collect/SortedTreeMultiset$2;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/SortedTreeMultiset$2;-><init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method private b(Lcom/google/common/collect/SortedTreeMultiset$Node;)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;)I"
        }
    .end annotation

    .prologue
    .line 287
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/SortedTreeMultiset$Node;->c(Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/SortedTreeMultiset$Node;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/common/collect/SortedTreeMultiset;->b(Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 114
    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/SortedTreeMultiset;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/GeneralRange;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/common/collect/SortedTreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstNode;

    invoke-static {v3, v0, v2}, Lcom/google/common/collect/BstOperations;->a(Ljava/util/Comparator;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    .line 121
    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/common/collect/SortedTreeMultiset$Node;->a(Lcom/google/common/collect/SortedTreeMultiset$Node;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    if-nez p2, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/common/collect/SortedTreeMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->c(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 150
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset$AddModifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/common/collect/SortedTreeMultiset$AddModifier;-><init>(Lcom/google/common/collect/SortedTreeMultiset;ILcom/google/common/collect/SortedTreeMultiset$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/SortedTreeMultiset;->a(Ljava/lang/Object;Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->c(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 172
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset$ConditionalSetCountModifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/google/common/collect/SortedTreeMultiset$ConditionalSetCountModifier;-><init>(Lcom/google/common/collect/SortedTreeMultiset;IILcom/google/common/collect/SortedTreeMultiset$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/SortedTreeMultiset;->a(Ljava/lang/Object;Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 155
    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    if-nez p2, :cond_2

    .line 158
    invoke-virtual {p0, p1}, Lcom/google/common/collect/SortedTreeMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 161
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/SortedTreeMultiset;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/GeneralRange;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/common/collect/SortedTreeMultiset$RemoveModifier;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/google/common/collect/SortedTreeMultiset$RemoveModifier;-><init>(Lcom/google/common/collect/SortedTreeMultiset;ILcom/google/common/collect/SortedTreeMultiset$1;)V

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/SortedTreeMultiset;->a(Ljava/lang/Object;Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object p1
.end method

.method public c(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->c(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 179
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset$SetCountModifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/common/collect/SortedTreeMultiset$SetCountModifier;-><init>(Lcom/google/common/collect/SortedTreeMultiset;ILcom/google/common/collect/SortedTreeMultiset$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/SortedTreeMultiset;->a(Ljava/lang/Object;Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset;->a:Ljava/util/Comparator;

    invoke-static {v2, p1, p2}, Lcom/google/common/collect/GeneralRange;->a(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/GeneralRange;->a(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/SortedTreeMultiset;-><init>(Lcom/google/common/collect/GeneralRange;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v0
.end method

.method c()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    .line 188
    iget-object v1, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    iget-object v3, p0, Lcom/google/common/collect/SortedTreeMultiset;->d:Lcom/google/common/collect/BstPathFactory;

    invoke-static {v1, v2, v3, v0}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    .line 190
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/SortedTreeMultiset;->a(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    .line 242
    iget-object v1, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset;->e:Lcom/google/common/collect/BstAggregate;

    invoke-static {v2}, Lcom/google/common/collect/BstCountBasedBalancePolicies;->b(Lcom/google/common/collect/BstAggregate;)Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/SortedTreeMultiset;->g:Lcom/google/common/collect/BstNodeFactory;

    invoke-static {v1, v2, v3, v0}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/SortedTreeMultiset$Node;

    .line 245
    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 248
    :cond_0
    return-void
.end method

.method d()I
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    .line 103
    iget-object v1, p0, Lcom/google/common/collect/SortedTreeMultiset;->e:Lcom/google/common/collect/BstAggregate;

    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstNode;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset;->a:Ljava/util/Comparator;

    invoke-static {v2, p1, p2}, Lcom/google/common/collect/GeneralRange;->b(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/GeneralRange;->a(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/SortedTreeMultiset;-><init>(Lcom/google/common/collect/GeneralRange;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v0
.end method

.method k()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    .line 196
    iget-object v1, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    iget-object v3, p0, Lcom/google/common/collect/SortedTreeMultiset;->d:Lcom/google/common/collect/BstPathFactory;

    invoke-static {v1, v2, v3, v0}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    .line 198
    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/SortedTreeMultiset;->a(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    .line 109
    iget-object v1, p0, Lcom/google/common/collect/SortedTreeMultiset;->f:Lcom/google/common/collect/BstAggregate;

    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset;->b:Lcom/google/common/collect/GeneralRange;

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/BstRangeOps;->a(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstNode;)I

    move-result v0

    return v0
.end method
