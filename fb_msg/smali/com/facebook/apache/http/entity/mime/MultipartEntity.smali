.class public Lcom/facebook/apache/http/entity/mime/MultipartEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Lcom/facebook/apache/http/entity/mime/HttpMultipart;

.field private final c:Lorg/apache/http/Header;

.field private d:J

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    sget-object v0, Lcom/facebook/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lcom/facebook/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, v0, v1, v1}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;-><init>(Lcom/facebook/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/facebook/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a()Ljava/lang/String;

    move-result-object p2

    .line 78
    :cond_0
    if-nez p1, :cond_1

    .line 79
    sget-object p1, Lcom/facebook/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lcom/facebook/apache/http/entity/mime/HttpMultipartMode;

    .line 81
    :cond_1
    new-instance v0, Lcom/facebook/apache/http/entity/mime/HttpMultipart;

    const-string v1, "form-data"

    invoke-direct {v0, v1, p3, p2, p1}, Lcom/facebook/apache/http/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/HttpMultipartMode;)V

    iput-object v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->b:Lcom/facebook/apache/http/entity/mime/HttpMultipart;

    .line 82
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-virtual {p0, p2, p3}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/Header;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->e:Z

    .line 86
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 121
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1e

    .line 122
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 123
    sget-object v4, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a:[C

    sget-object v5, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a:[C

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    if-eqz p2, :cond_0

    .line 112
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/apache/http/entity/mime/FormBodyPart;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->b:Lcom/facebook/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/entity/mime/HttpMultipart;->a(Lcom/facebook/apache/http/entity/mime/FormBodyPart;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->e:Z

    .line 131
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    invoke-direct {v0, p1, p2}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Lcom/facebook/apache/http/entity/mime/FormBodyPart;)V

    .line 135
    return-void
.end method

.method public consumeContent()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->e:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->b:Lcom/facebook/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/HttpMultipart;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->d:J

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->e:Z

    .line 160
    :cond_0
    iget-wide v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->d:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 6

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->b:Lcom/facebook/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/HttpMultipart;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    .line 139
    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->b()Lcom/facebook/apache/http/entity/mime/content/ContentBody;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lcom/facebook/apache/http/entity/mime/content/ContentBody;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->b:Lcom/facebook/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/entity/mime/HttpMultipart;->a(Ljava/io/OutputStream;)V

    .line 186
    return-void
.end method