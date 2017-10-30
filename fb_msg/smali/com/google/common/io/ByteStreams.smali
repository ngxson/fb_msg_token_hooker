.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v2, 0x1

    .line 116
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 118
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    :try_start_1
    invoke-static {v0, v1}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 121
    const/4 v2, 0x0

    .line 124
    :try_start_2
    invoke-static {v1, v2}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V

    return-wide v3

    .line 124
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :catchall_1
    move-exception v1

    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V

    throw v1
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 189
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 190
    const-wide/16 v0, 0x0

    .line 192
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 193
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 199
    return-wide v0

    .line 196
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 197
    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 198
    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 678
    :goto_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_2

    .line 679
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 680
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 682
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 683
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 685
    :cond_0
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    :goto_1
    move-wide p1, v0

    .line 689
    goto :goto_0

    .line 687
    :cond_1
    sub-long v0, p1, v0

    goto :goto_1

    .line 690
    :cond_2
    return-void
.end method

.method public static a(Ljava/io/InputStream;[B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 641
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;[BII)V

    .line 642
    return-void
.end method

.method public static a(Ljava/io/InputStream;[BII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 660
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->b(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 661
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 663
    :cond_0
    return-void
.end method

.method public static a(Lcom/google/common/io/InputSupplier;)[B
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 247
    const/4 v1, 0x1

    .line 248
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 250
    :try_start_0
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 251
    const/4 v2, 0x0

    .line 254
    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V

    return-object v1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 1
    .parameter

    .prologue
    .line 234
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 236
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;[BII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 800
    if-gez p3, :cond_0

    .line 801
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_0
    const/4 v0, 0x0

    .line 804
    :goto_0
    if-ge v0, p3, :cond_1

    .line 805
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 806
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 811
    :cond_1
    return v0

    .line 809
    :cond_2
    add-int/2addr v0, v1

    .line 810
    goto :goto_0
.end method
