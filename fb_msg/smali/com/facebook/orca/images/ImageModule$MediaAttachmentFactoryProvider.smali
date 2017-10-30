.class Lcom/facebook/orca/images/ImageModule$MediaAttachmentFactoryProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ImageModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/attachments/MediaAttachmentFactory;",
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
    .line 82
    iput-object p1, p0, Lcom/facebook/orca/images/ImageModule$MediaAttachmentFactoryProvider;->a:Lcom/facebook/orca/images/ImageModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageModule$MediaAttachmentFactoryProvider;-><init>(Lcom/facebook/orca/images/ImageModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/attachments/MediaAttachmentFactory;
    .locals 3

    .prologue
    .line 86
    new-instance v1, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    const-class v0, Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/images/ImageModule$MediaAttachmentFactoryProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageModule$MediaAttachmentFactoryProvider;->a()Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    move-result-object v0

    return-object v0
.end method
