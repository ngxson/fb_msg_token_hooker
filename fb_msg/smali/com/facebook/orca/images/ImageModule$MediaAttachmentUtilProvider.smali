.class Lcom/facebook/orca/images/ImageModule$MediaAttachmentUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ImageModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/attachments/MediaAttachmentUtil;",
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
    .line 90
    iput-object p1, p0, Lcom/facebook/orca/images/ImageModule$MediaAttachmentUtilProvider;->a:Lcom/facebook/orca/images/ImageModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageModule$MediaAttachmentUtilProvider;-><init>(Lcom/facebook/orca/images/ImageModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/attachments/MediaAttachmentUtil;
    .locals 4

    .prologue
    .line 94
    new-instance v3, Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    const-class v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/images/ImageModule$MediaAttachmentUtilProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/images/ImageModule$MediaAttachmentUtilProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    const-class v2, Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/images/ImageModule$MediaAttachmentUtilProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/attachments/MediaAttachmentUtil;-><init>(Landroid/content/Context;Lcom/facebook/orca/attachments/ImageAttachmentDecoder;Lcom/facebook/orca/images/ImageScalingUtil;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageModule$MediaAttachmentUtilProvider;->a()Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    move-result-object v0

    return-object v0
.end method
