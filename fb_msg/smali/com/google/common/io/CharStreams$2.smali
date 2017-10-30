.class final Lcom/google/common/io/CharStreams$2;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStreamReader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/io/InputSupplier;

.field final synthetic b:Ljava/nio/charset/Charset;


# virtual methods
.method public a()Ljava/io/InputStreamReader;
    .locals 3

    .prologue
    .line 91
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v0, p0, Lcom/google/common/io/CharStreams$2;->a:Lcom/google/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/InputSupplier;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/common/io/CharStreams$2;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$2;->a()Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method
