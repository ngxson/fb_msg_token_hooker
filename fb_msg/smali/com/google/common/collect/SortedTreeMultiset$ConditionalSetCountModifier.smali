.class final Lcom/google/common/collect/SortedTreeMultiset$ConditionalSetCountModifier;
.super Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;
.source "SortedTreeMultiset.java"


# instance fields
.field final synthetic a:Lcom/google/common/collect/SortedTreeMultiset;

.field private final c:I

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 387
    iput-object p1, p0, Lcom/google/common/collect/SortedTreeMultiset$ConditionalSetCountModifier;->a:Lcom/google/common/collect/SortedTreeMultiset;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;-><init>(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/SortedTreeMultiset$1;)V

    .line 388
    if-ltz p3, :cond_0

    move v2, v0

    :goto_0
    if-ltz p2, :cond_1

    :goto_1
    and-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 389
    iput p2, p0, Lcom/google/common/collect/SortedTreeMultiset$ConditionalSetCountModifier;->c:I

    .line 390
    iput p3, p0, Lcom/google/common/collect/SortedTreeMultiset$ConditionalSetCountModifier;->d:I

    .line 391
    return-void

    :cond_0
    move v2, v1

    .line 388
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;IILcom/google/common/collect/SortedTreeMultiset$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/SortedTreeMultiset$ConditionalSetCountModifier;-><init>(Lcom/google/common/collect/SortedTreeMultiset;II)V

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 1
    .parameter

    .prologue
    .line 395
    iget v0, p0, Lcom/google/common/collect/SortedTreeMultiset$ConditionalSetCountModifier;->c:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/google/common/collect/SortedTreeMultiset$ConditionalSetCountModifier;->d:I

    :cond_0
    return p1
.end method
