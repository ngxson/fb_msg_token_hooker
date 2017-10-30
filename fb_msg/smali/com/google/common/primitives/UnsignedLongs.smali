.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final a:[J

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/16 v1, 0x25

    .line 353
    new-array v0, v1, [J

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->a:[J

    .line 354
    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->b:[I

    .line 355
    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->c:[I

    .line 357
    new-instance v1, Ljava/math/BigInteger;

    const-string v0, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 358
    const/4 v0, 0x2

    :goto_0
    const/16 v2, 0x24

    if-gt v0, v2, :cond_0

    .line 359
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->a:[J

    int-to-long v3, v0

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->b(JJ)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 360
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->b:[I

    int-to-long v3, v0

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->c(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v2, v0

    .line 361
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->c:[I

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JJ)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->a(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->a(JJ)I

    move-result v0

    return v0
.end method

.method private static a(J)J
    .locals 2
    .parameter

    .prologue
    .line 59
    const-wide/high16 v0, -0x8000

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static b(JJ)J
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    .line 180
    cmp-long v3, p2, v1

    if-gez v3, :cond_1

    .line 181
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v0

    if-gez v0, :cond_0

    move-wide v0, v1

    .line 201
    :goto_0
    return-wide v0

    .line 184
    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    cmp-long v1, p0, v1

    if-ltz v1, :cond_2

    .line 190
    div-long v0, p0, p2

    goto :goto_0

    .line 199
    :cond_2
    ushr-long v1, p0, v0

    div-long/2addr v1, p2

    shl-long/2addr v1, v0

    .line 200
    mul-long v3, v1, p2

    sub-long v3, p0, v3

    .line 201
    invoke-static {v3, v4, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v3

    if-ltz v3, :cond_3

    :goto_1
    int-to-long v3, v0

    add-long v0, v1, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c(JJ)J
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    .line 213
    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 214
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v0

    if-gez v0, :cond_0

    .line 234
    :goto_0
    return-wide p0

    .line 217
    :cond_0
    sub-long/2addr p0, p2

    goto :goto_0

    .line 222
    :cond_1
    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    .line 223
    rem-long/2addr p0, p2

    goto :goto_0

    .line 232
    :cond_2
    ushr-long v2, p0, v4

    div-long/2addr v2, p2

    shl-long/2addr v2, v4

    .line 233
    mul-long/2addr v2, p2

    sub-long v2, p0, v2

    .line 234
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v4

    if-ltz v4, :cond_3

    :goto_1
    sub-long p0, v2, p2

    goto :goto_0

    :cond_3
    move-wide p2, v0

    goto :goto_1
.end method
