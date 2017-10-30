.class public Lcom/facebook/orca/media/MediaDownloader;
.super Ljava/lang/Object;
.source "MediaDownloader.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/facebook/orca/media/MediaDownloader;

    sput-object v0, Lcom/facebook/orca/media/MediaDownloader;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/facebook/orca/media/MediaDownloader;->c:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/facebook/orca/media/MediaDownloader;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 145
    iput-object p3, p0, Lcom/facebook/orca/media/MediaDownloader;->d:Ljava/lang/String;

    .line 146
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 264
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    .line 180
    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_6

    .line 181
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, v3}, Lcom/facebook/orca/media/MediaDownloader;->g(Landroid/net/Uri;)V

    .line 183
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/media/MediaDownloader;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    iget-object v5, p0, Lcom/facebook/orca/media/MediaDownloader;->d:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 187
    const/16 v6, 0x12e

    if-ne v5, v6, :cond_3

    .line 188
    const-string v5, "Location"

    invoke-interface {v0, v5}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 189
    array-length v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    .line 190
    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    invoke-direct {p0, v3, v0}, Lcom/facebook/orca/media/MediaDownloader;->a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 194
    :cond_0
    const-string v3, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v5, "attachment.fbsbx.com"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "http"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 199
    :cond_1
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 180
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    goto/16 :goto_0

    .line 203
    :cond_2
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->OTHER:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    .line 213
    :goto_1
    return-object v0

    .line 204
    :cond_3
    const/16 v1, 0xc8

    if-ne v5, v1, :cond_4

    .line 205
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Lorg/apache/http/HttpEntity;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    goto :goto_1

    .line 206
    :cond_4
    const/16 v0, 0x194

    if-ne v5, v0, :cond_5

    .line 207
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->NOT_FOUND:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    goto :goto_1

    .line 210
    :cond_5
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->OTHER:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    goto :goto_1

    .line 213
    :cond_6
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->OTHER:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    goto :goto_1
.end method

.method private c(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    .locals 2
    .parameter

    .prologue
    .line 217
    const-string v0, "com.android.contacts"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaDownloader;->d(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaDownloader;->e(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/orca/media/MediaDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 228
    invoke-static {v0, p1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 230
    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->NOT_FOUND:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Ljava/io/InputStream;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/orca/media/MediaDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    .line 239
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->NOT_FOUND:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Ljava/io/InputStream;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    goto :goto_0
.end method

.method private f(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    .locals 2
    .parameter

    .prologue
    .line 246
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Ljava/io/InputStream;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    return-object v0
.end method

.method private g(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 255
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    .locals 4
    .parameter

    .prologue
    .line 156
    :try_start_0
    const-string v0, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaDownloader;->b(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 158
    :cond_1
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaDownloader;->c(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_2
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaDownloader;->f(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_3
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader;->a:Ljava/lang/Class;

    const-string v1, "Unsupported scheme: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->UNSUPPORTED_URI:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    sget-object v1, Lcom/facebook/orca/media/MediaDownloader;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException downloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->IO_EXCEPTION:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a(Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;

    move-result-object v0

    goto :goto_0
.end method
