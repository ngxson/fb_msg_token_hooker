.class final Lcom/google/common/collect/SortedTreeMultiset$Node;
.super Lcom/google/common/collect/BstNode;
.source "SortedTreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/BstNode",
        "<TE;",
        "Lcom/google/common/collect/SortedTreeMultiset",
        "<TE;>.Node;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/SortedTreeMultiset;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/lang/Object;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 278
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/SortedTreeMultiset$Node;-><init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/lang/Object;ILcom/google/common/collect/SortedTreeMultiset$Node;Lcom/google/common/collect/SortedTreeMultiset$Node;)V

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/lang/Object;ILcom/google/common/collect/SortedTreeMultiset$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/SortedTreeMultiset$Node;-><init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/lang/Object;ILcom/google/common/collect/SortedTreeMultiset$Node;Lcom/google/common/collect/SortedTreeMultiset$Node;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;)V"
        }
    .end annotation

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/common/collect/SortedTreeMultiset$Node;->a:Lcom/google/common/collect/SortedTreeMultiset;

    .line 270
    invoke-virtual {p1, p2}, Lcom/google/common/collect/SortedTreeMultiset;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lcom/google/common/collect/BstNode;-><init>(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)V

    .line 271
    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 272
    iput p3, p0, Lcom/google/common/collect/SortedTreeMultiset$Node;->b:I

    .line 273
    invoke-static {p1, p4}, Lcom/google/common/collect/SortedTreeMultiset;->a(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    add-int/2addr v0, p3

    invoke-static {p1, p5}, Lcom/google/common/collect/SortedTreeMultiset;->a(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/SortedTreeMultiset$Node;->c:I

    .line 274
    invoke-static {p1, p4}, Lcom/google/common/collect/SortedTreeMultiset;->b(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, p5}, Lcom/google/common/collect/SortedTreeMultiset;->b(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/SortedTreeMultiset$Node;->d:I

    .line 275
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/lang/Object;ILcom/google/common/collect/SortedTreeMultiset$Node;Lcom/google/common/collect/SortedTreeMultiset$Node;Lcom/google/common/collect/SortedTreeMultiset$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct/range {p0 .. p5}, Lcom/google/common/collect/SortedTreeMultiset$Node;-><init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/lang/Object;ILcom/google/common/collect/SortedTreeMultiset$Node;Lcom/google/common/collect/SortedTreeMultiset$Node;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/SortedTreeMultiset$Node;)I
    .locals 1
    .parameter

    .prologue
    .line 264
    iget v0, p0, Lcom/google/common/collect/SortedTreeMultiset$Node;->b:I

    return v0
.end method

.method static synthetic b(Lcom/google/common/collect/SortedTreeMultiset$Node;)I
    .locals 1
    .parameter

    .prologue
    .line 264
    iget v0, p0, Lcom/google/common/collect/SortedTreeMultiset$Node;->c:I

    return v0
.end method

.method static synthetic c(Lcom/google/common/collect/SortedTreeMultiset$Node;)I
    .locals 1
    .parameter

    .prologue
    .line 264
    iget v0, p0, Lcom/google/common/collect/SortedTreeMultiset$Node;->d:I

    return v0
.end method
