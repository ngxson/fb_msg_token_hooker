.class final Lcom/google/common/collect/SortedTreeMultiset$RemoveModifier;
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
    .line 358
    iput-object p1, p0, Lcom/google/common/collect/SortedTreeMultiset$RemoveModifier;->a:Lcom/google/common/collect/SortedTreeMultiset;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;-><init>(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/SortedTreeMultiset$1;)V

    .line 359
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 360
    iput p2, p0, Lcom/google/common/collect/SortedTreeMultiset$RemoveModifier;->c:I

    .line 361
    return-void

    .line 359
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
    .line 355
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/SortedTreeMultiset$RemoveModifier;-><init>(Lcom/google/common/collect/SortedTreeMultiset;I)V

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 2
    .parameter

    .prologue
    .line 365
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/common/collect/SortedTreeMultiset$RemoveModifier;->c:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
