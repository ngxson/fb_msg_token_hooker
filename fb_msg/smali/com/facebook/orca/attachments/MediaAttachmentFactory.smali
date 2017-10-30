.class public Lcom/facebook/orca/attachments/MediaAttachmentFactory;
.super Ljava/lang/Object;
.source "MediaAttachmentFactory.java"


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
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    sput-object v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    new-instance v0, Lcom/facebook/orca/attachments/MediaAttachment;

    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/facebook/orca/attachments/MediaAttachment;-><init>(Landroid/content/Context;Lcom/facebook/orca/media/MediaResource;)V

    return-object v0

    .line 42
    :cond_1
    new-instance v1, Lcom/facebook/orca/attachments/UnknownAttachmentTypeException;

    invoke-direct {v1, v0}, Lcom/facebook/orca/attachments/UnknownAttachmentTypeException;-><init>(Landroid/net/Uri;)V

    throw v1
.end method

.method public b(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;
    :try_end_0
    .catch Lcom/facebook/orca/attachments/UnknownAttachmentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    goto :goto_0
.end method
