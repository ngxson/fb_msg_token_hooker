.class final enum Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "UnsignedLongs.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<[J>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    new-instance v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    sget-object v1, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;
    .locals 1
    .parameter

    .prologue
    .line 156
    const-class v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->compare([J[J)I

    move-result v0

    return v0
.end method

.method public compare([J[J)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 161
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 162
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 163
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 164
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v0

    .line 167
    :goto_1
    return v0

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    goto :goto_1
.end method