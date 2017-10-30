.class Lcom/facebook/orca/images/ImageModule$ImageAttachmentDecoderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ImageModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/attachments/ImageAttachmentDecoder;",
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
    .line 102
    iput-object p1, p0, Lcom/facebook/orca/images/ImageModule$ImageAttachmentDecoderProvider;->a:Lcom/facebook/orca/images/ImageModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageModule$ImageAttachmentDecoderProvider;-><init>(Lcom/facebook/orca/images/ImageModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/attachments/ImageAttachmentDecoder;
    .locals 3

    .prologue
    .line 106
    new-instance v1, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    const-class v0, Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/images/ImageModule$ImageAttachmentDecoderProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageModule$ImageAttachmentDecoderProvider;->a()Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    move-result-object v0

    return-object v0
.end method
