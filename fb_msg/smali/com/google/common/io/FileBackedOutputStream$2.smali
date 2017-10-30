.class Lcom/google/common/io/FileBackedOutputStream$2;
.super Ljava/lang/Object;
.source "FileBackedOutputStream.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/io/FileBackedOutputStream;


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream$2;->a:Lcom/google/common/io/FileBackedOutputStream;

    invoke-static {v0}, Lcom/google/common/io/FileBackedOutputStream;->a(Lcom/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/common/io/FileBackedOutputStream$2;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
