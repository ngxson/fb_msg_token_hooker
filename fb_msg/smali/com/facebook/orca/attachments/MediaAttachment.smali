.class public Lcom/facebook/orca/attachments/MediaAttachment;
.super Ljava/lang/Object;
.source "MediaAttachment.java"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/media/MediaResource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/media/MediaResource;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-class v0, Lcom/facebook/orca/attachments/MediaAttachment;

    iput-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->a:Ljava/lang/Class;

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/media/MediaResource;

    .line 34
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/media/MediaResource;

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "content"

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file"

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 36
    return-void

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/media/MediaResource;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/media/MediaResource;

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/media/MediaResource;

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "content"

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 58
    :cond_0
    const-string v1, "file"

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected scheme"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/google/common/io/InputSupplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/media/MediaResource;

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "content"

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Lcom/facebook/orca/attachments/MediaAttachment$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/attachments/MediaAttachment$1;-><init>(Lcom/facebook/orca/attachments/MediaAttachment;)V

    .line 80
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const-string v1, "file"

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/io/Files;->a(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected scheme"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/facebook/orca/attachments/MediaAttachment$2;->a:[I

    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/media/MediaResource;

    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaResource$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->a:Ljava/lang/Class;

    const-string v1, "Unexpected attachment type"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unexpected attachment type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :pswitch_0
    const-string v0, "me/photos"

    .line 98
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "me/videos"

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->a:Ljava/lang/Class;

    const-string v1, "Audio shares are not implemented"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Audio shares are not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
