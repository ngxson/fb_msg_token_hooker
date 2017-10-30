.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final a:Ljava/net/Inet4Address;

.field private static final b:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->a:Ljava/net/Inet4Address;

    .line 124
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->b:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 189
    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'%s\' is not an IP string literal."

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'%s\' is extremely broken."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 228
    move v1, v0

    move v2, v0

    .line 230
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 232
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_1

    move v1, v3

    .line 230
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    const/16 v6, 0x3a

    if-ne v5, v6, :cond_3

    .line 235
    if-eqz v1, :cond_2

    move-object v0, v4

    .line 256
    :goto_2
    return-object v0

    :cond_2
    move v2, v3

    .line 238
    goto :goto_1

    .line 239
    :cond_3
    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-object v0, v4

    .line 240
    goto :goto_2

    .line 245
    :cond_4
    if-eqz v2, :cond_6

    .line 246
    if-eqz v1, :cond_5

    .line 247
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 248
    if-nez p0, :cond_5

    move-object v0, v4

    .line 249
    goto :goto_2

    .line 252
    :cond_5
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->d(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    .line 253
    :cond_6
    if-eqz v1, :cond_7

    .line 254
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->c(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v4

    .line 256
    goto :goto_2
.end method

.method private static c(Ljava/lang/String;)[B
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x4

    .line 260
    const-string v1, "\\."

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 261
    array-length v1, v3

    if-eq v1, v4, :cond_0

    .line 274
    :goto_0
    return-object v0

    .line 265
    :cond_0
    new-array v1, v4, [B

    .line 267
    const/4 v2, 0x0

    :goto_1
    :try_start_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 268
    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->f(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 274
    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)[B
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 279
    const-string v0, ":"

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 280
    array-length v0, v6

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    array-length v0, v6

    const/16 v2, 0x9

    if-le v0, v2, :cond_1

    :cond_0
    move-object v0, v3

    .line 337
    :goto_0
    return-object v0

    .line 286
    :cond_1
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 287
    :goto_1
    array-length v5, v6

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_4

    .line 288
    aget-object v5, v6, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 289
    if-ltz v2, :cond_2

    move-object v0, v3

    .line 290
    goto :goto_0

    :cond_2
    move v2, v0

    .line 287
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_4
    if-ltz v2, :cond_7

    .line 301
    array-length v0, v6

    sub-int/2addr v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 302
    aget-object v0, v6, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v0, v2, -0x1

    if-eqz v0, :cond_6

    move-object v0, v3

    .line 303
    goto :goto_0

    :cond_5
    move v0, v2

    .line 305
    :cond_6
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_e

    add-int/lit8 v5, v5, -0x1

    if-eqz v5, :cond_e

    move-object v0, v3

    .line 306
    goto :goto_0

    .line 311
    :cond_7
    array-length v0, v6

    move v5, v0

    move v0, v4

    .line 317
    :goto_2
    add-int v7, v5, v0

    rsub-int/lit8 v7, v7, 0x8

    .line 318
    if-ltz v2, :cond_9

    if-lt v7, v1, :cond_a

    .line 323
    :cond_8
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move v1, v4

    .line 325
    :goto_3
    if-ge v1, v5, :cond_b

    .line 326
    :try_start_0
    aget-object v8, v6, v1

    invoke-static {v8}, Lcom/google/common/net/InetAddresses;->g(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 318
    :cond_9
    if-eqz v7, :cond_8

    :cond_a
    move-object v0, v3

    .line 319
    goto :goto_0

    :cond_b
    move v1, v4

    .line 328
    :goto_4
    if-ge v1, v7, :cond_c

    .line 329
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 331
    :cond_c
    :goto_5
    if-lez v0, :cond_d

    .line 332
    array-length v1, v6

    sub-int/2addr v1, v0

    aget-object v1, v6, v1

    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->g(Ljava/lang/String;)S

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 334
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 335
    goto :goto_0

    .line 337
    :cond_d
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    move v9, v5

    move v5, v0

    move v0, v9

    goto :goto_2
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 341
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 342
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 343
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 345
    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 350
    :goto_0
    return-object v0

    .line 348
    :cond_0
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)B
    .locals 3
    .parameter

    .prologue
    .line 355
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 358
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 361
    :cond_1
    int-to-byte v0, v0

    return v0
.end method

.method private static g(Ljava/lang/String;)S
    .locals 2
    .parameter

    .prologue
    .line 366
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 367
    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 368
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 370
    :cond_0
    int-to-short v0, v0

    return v0
.end method
