.class final Lcom/google/common/collect/SortedTreeMultiset$SetCountModifier;
.super Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;
.source "SortedTreeMultiset.java"


# instance fields
.field final synthetic a:Lcom/google/common/collect/SortedTreeMultiset;

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/common/collect/SortedTreeMultiset$SetCountModifier;->a:Lcom/google/common/collect/SortedTreeMultiset;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;-><init>(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/SortedTreeMultiset$1;)V

    .line 373
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 374
    iput p2, p0, Lcom/google/common/collect/SortedTreeMultiset$SetCountModifier;->c:I

    .line 375
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;ILcom/google/common/collect/SortedTreeMultiset$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/SortedTreeMultiset$SetCountModifier;-><init>(Lcom/google/common/collect/SortedTreeMultiset;I)V

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 1
    .parameter

    .prologue
    .line 379
    iget v0, p0, Lcom/google/common/collect/SortedTreeMultiset$SetCountModifier;->c:I

    return v0
.end method
