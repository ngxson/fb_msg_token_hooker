.class Lcom/facebook/orca/camera/gallery/ImageListUber$DescendingComparator;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/camera/gallery/ImageListUber$1;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/facebook/orca/camera/gallery/ImageListUber$DescendingComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 245
    iget-wide v0, p1, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->b:J

    iget-wide v2, p2, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 246
    iget-wide v0, p1, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->b:J

    iget-wide v2, p2, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    .line 246
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 248
    :cond_1
    iget v0, p1, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->a:I

    iget v1, p2, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 242
    check-cast p1, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;

    check-cast p2, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/camera/gallery/ImageListUber$DescendingComparator;->a(Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;)I

    move-result v0

    return v0
.end method
