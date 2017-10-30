.class Lcom/facebook/orca/images/ImageModule$ImageCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ImageModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/ImageCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/ImageModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/images/ImageModule;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/images/ImageModule$ImageCacheProvider;->a:Lcom/facebook/orca/images/ImageModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageModule$ImageCacheProvider;-><init>(Lcom/facebook/orca/images/ImageModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/images/ImageCache;
    .locals 6

    .prologue
    .line 71
    const-class v0, Landroid/app/ActivityManager;

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/images/ImageModule$ImageCacheProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/ActivityManager;

    .line 72
    new-instance v0, Lcom/facebook/orca/images/ImageCache;

    const-class v1, Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/images/ImageModule$ImageCacheProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/images/ImageModule$ImageCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    const-class v3, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/images/ImageModule$ImageCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    const-class v4, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/images/ImageModule$ImageCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/images/ImageCache;-><init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaAttachmentFactory;Lcom/facebook/orca/attachments/ImageAttachmentDecoder;Lcom/facebook/orca/common/util/Clock;I)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageModule$ImageCacheProvider;->a()Lcom/facebook/orca/images/ImageCache;

    move-result-object v0

    return-object v0
.end method
