.class final enum Lcom/google/common/primitives/Ints$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "Ints.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/Ints$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<[I>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/Ints$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/Ints$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    new-instance v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/Ints$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Ints$LexicographicalComparator;

    .line 399
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/Ints$LexicographicalComparator;

    sget-object v1, Lcom/google/common/primitives/Ints$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Ints$LexicographicalComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Ints$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Ints$LexicographicalComparator;
    .locals 1
    .parameter

    .prologue
    .line 399
    const-class v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/Ints$LexicographicalComparator;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Ints$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Ints$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Ints$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 399
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Ints$LexicographicalComparator;->compare([I[I)I

    move-result v0

    return v0
.end method

.method public compare([I[I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 404
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 405
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 406
    aget v0, p1, v1

    aget v3, p2, v1

    invoke-static {v0, v3}, Lcom/google/common/primitives/Ints;->a(II)I

    move-result v0

    .line 407
    if-eqz v0, :cond_0

    .line 411
    :goto_1
    return v0

    .line 405
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 411
    :cond_1
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    goto :goto_1
.end method
