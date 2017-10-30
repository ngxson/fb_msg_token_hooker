.class public Lcom/facebook/orca/common/util/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/facebook/orca/common/util/RingBuffer;->b:I

    .line 16
    iput v0, p0, Lcom/facebook/orca/common/util/RingBuffer;->c:I

    .line 17
    iput v0, p0, Lcom/facebook/orca/common/util/RingBuffer;->d:I

    .line 20
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/orca/common/util/RingBuffer;->a:[Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/facebook/orca/common/util/RingBuffer;->b:I

    return v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 40
    iget v0, p0, Lcom/facebook/orca/common/util/RingBuffer;->b:I

    if-gt v0, p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 43
    :cond_0
    iget v0, p0, Lcom/facebook/orca/common/util/RingBuffer;->c:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/facebook/orca/common/util/RingBuffer;->a:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Lcom/facebook/orca/common/util/RingBuffer;->a:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method
