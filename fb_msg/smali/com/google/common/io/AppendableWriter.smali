.class Lcom/google/common/io/AppendableWriter;
.super Ljava/io/Writer;
.source "AppendableWriter.java"


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private b:Z


# direct methods
.method private a()V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/google/common/io/AppendableWriter;->b:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot write to a closed writer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    .line 95
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 96
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    .line 101
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 102
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    .line 108
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 109
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/common/io/AppendableWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/common/io/AppendableWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/AppendableWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/io/AppendableWriter;->b:Z

    .line 67
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->a:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->a:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 70
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    .line 60
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->a:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->a:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 63
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    .line 79
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 80
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    .line 84
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 85
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    .line 90
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->a:Ljava/lang/Appendable;

    add-int v1, p2, p3

    invoke-interface {v0, p1, p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 91
    return-void
.end method

.method public write([CII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->a()V

    .line 55
    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->a:Ljava/lang/Appendable;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 56
    return-void
.end method
