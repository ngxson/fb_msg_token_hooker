.class final Lcom/google/common/io/CharStreams$3;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/io/OutputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/OutputSupplier",
        "<",
        "Ljava/io/OutputStreamWriter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/io/OutputSupplier;

.field final synthetic b:Ljava/nio/charset/Charset;


# virtual methods
.method public a()Ljava/io/OutputStreamWriter;
    .locals 3

    .prologue
    .line 111
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v0, p0, Lcom/google/common/io/CharStreams$3;->a:Lcom/google/common/io/OutputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/OutputSupplier;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/common/io/CharStreams$3;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$3;->a()Ljava/io/OutputStreamWriter;

    move-result-object v0

    return-object v0
.end method
