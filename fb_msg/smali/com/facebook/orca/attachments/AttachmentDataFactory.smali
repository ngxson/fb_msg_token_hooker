.class public Lcom/facebook/orca/attachments/AttachmentDataFactory;
.super Ljava/lang/Object;
.source "AttachmentDataFactory.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/auth/AuthDataStore;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-string v0, "_[ts]\\.jpg$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "\\/[ts]([^/]+\\.jpg)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b:Ljava/util/regex/Pattern;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/auth/AuthDataStore;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
            ">;",
            "Lcom/facebook/orca/auth/AuthDataStore;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d:Ljavax/inject/Provider;

    .line 54
    iput-object p2, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->e:Lcom/facebook/orca/auth/AuthDataStore;

    .line 55
    iput-object p3, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->f:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/TitanAttachmentInfo;)Landroid/net/Uri;
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->a()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 364
    const-string v1, "method/messaging.getAttachment"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 365
    const-string v1, "mid"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 366
    if-eqz p2, :cond_0

    .line 367
    const-string v1, "aid"

    invoke-virtual {p2}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 372
    :goto_0
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->e:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v2}, Lcom/facebook/orca/auth/AuthDataStore;->c()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 374
    const-string v1, "format"

    const-string v2, "binary"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 375
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 370
    :cond_0
    const-string v1, "aid"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 2
    .parameter

    .prologue
    .line 293
    new-instance v0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->b(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->f()Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/TitanAttachmentInfo;)Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 313
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaResource;

    .line 317
    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/media/MediaResource$Type;->PHOTO:Lcom/facebook/orca/media/MediaResource$Type;

    if-ne v2, v3, :cond_1

    .line 318
    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v0

    .line 322
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Ljava/lang/String;Lcom/facebook/orca/threads/TitanAttachmentInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 323
    new-instance v2, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->b(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->c(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    .line 328
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->f()Lcom/facebook/orca/threads/TitanAttachmentInfo$ImageData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {p2}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->f()Lcom/facebook/orca/threads/TitanAttachmentInfo$ImageData;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Lcom/facebook/orca/threads/TitanAttachmentInfo$ImageData;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->a(I)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/TitanAttachmentInfo$ImageData;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->b(I)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    .line 334
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->f()Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/share/ShareMedia;)Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 3
    .parameter

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;

    move-result-object v0

    .line 301
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;

    move-result-object v1

    .line 302
    new-instance v2, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->b(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->f()Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/OtherAttachmentData;
    .locals 5
    .parameter

    .prologue
    .line 350
    const-string v0, "mms_media"

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 353
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 354
    invoke-static {v1, v2}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 355
    new-instance v1, Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->a(J)I

    move-result v3

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/orca/attachments/OtherAttachmentData;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/TitanAttachmentInfo;)Lcom/facebook/orca/attachments/OtherAttachmentData;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 339
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Ljava/lang/String;Lcom/facebook/orca/threads/TitanAttachmentInfo;)Landroid/net/Uri;

    move-result-object v0

    .line 340
    new-instance v1, Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->e()I

    move-result v3

    invoke-virtual {p2}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/orca/attachments/OtherAttachmentData;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private c(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 393
    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMedia;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/facebook/orca/share/ShareMedia;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMedia;->d()Ljava/lang/String;

    move-result-object v0

    .line 399
    sget-object v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 400
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    const-string v0, "_n.jpg"

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_0
    sget-object v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->r()Landroid/net/Uri;

    move-result-object v0

    .line 389
    :goto_0
    return-object v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->a()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 383
    const-string v1, "method/messaging.getAttachment"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 384
    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 385
    const-string v1, "hash"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 386
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/orca/attachments/AttachmentDataFactory;->e:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v2}, Lcom/facebook/orca/auth/AuthDataStore;->c()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 388
    const-string v1, "format"

    const-string v2, "binary"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 389
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/share/ShareMedia;)Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 2
    .parameter

    .prologue
    .line 286
    const-string v0, "photo"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/share/ShareMedia;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/threads/Message;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 101
    :goto_0
    return v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/TitanAttachmentInfo;

    .line 72
    invoke-virtual {v0}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    const-string v4, "image/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 74
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaResource;

    .line 79
    sget-object v4, Lcom/facebook/orca/media/MediaResource$Type;->PHOTO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/orca/media/MediaResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 80
    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 85
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaResource;

    .line 86
    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v0

    sget-object v4, Lcom/facebook/orca/media/MediaResource$Type;->PHOTO:Lcom/facebook/orca/media/MediaResource$Type;

    if-ne v0, v4, :cond_6

    move v0, v1

    .line 87
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 101
    goto/16 :goto_0
.end method

.method public b(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/ImageAttachmentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/TitanAttachmentInfo;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/TitanAttachmentInfo;

    .line 119
    invoke-virtual {v0}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 120
    if-eqz v3, :cond_2

    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/TitanAttachmentInfo;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaResource;

    .line 126
    sget-object v3, Lcom/facebook/orca/media/MediaResource$Type;->PHOTO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/media/MediaResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 127
    invoke-direct {p0, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_2

    .line 132
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 135
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaResource;

    .line 136
    invoke-direct {p0, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/ImageAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_3

    .line 150
    :cond_6
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public c(Lcom/facebook/orca/threads/Message;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 165
    :goto_0
    return v0

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/TitanAttachmentInfo;

    .line 160
    invoke-virtual {v0}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_1

    const-string v3, "audio/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 165
    goto :goto_0
.end method

.method public d(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/OtherAttachmentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 174
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/TitanAttachmentInfo;

    .line 176
    invoke-virtual {v0}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 177
    if-eqz v3, :cond_1

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/TitanAttachmentInfo;)Lcom/facebook/orca/attachments/OtherAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Lcom/facebook/orca/threads/Message;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 201
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/TitanAttachmentInfo;

    .line 190
    invoke-virtual {v0}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_1

    const-string v4, "image/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 192
    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaResource;

    .line 197
    sget-object v4, Lcom/facebook/orca/media/MediaResource$Type;->PHOTO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/orca/media/MediaResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 198
    goto :goto_0

    :cond_4
    move v0, v1

    .line 201
    goto :goto_0
.end method

.method public f(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/OtherAttachmentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 209
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/TitanAttachmentInfo;

    .line 211
    invoke-virtual {v0}, Lcom/facebook/orca/threads/TitanAttachmentInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 212
    if-eqz v3, :cond_1

    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/TitanAttachmentInfo;)Lcom/facebook/orca/attachments/OtherAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 217
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaResource;

    .line 218
    sget-object v3, Lcom/facebook/orca/media/MediaResource$Type;->PHOTO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/media/MediaResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 220
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/OtherAttachmentData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 221
    :catch_0
    move-exception v0

    goto :goto_2

    .line 226
    :cond_4
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method
