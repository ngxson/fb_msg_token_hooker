.class Lcom/facebook/orca/attachments/MediaAttachment$1;
.super Ljava/lang/Object;
.source "MediaAttachment.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/MediaAttachment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/attachments/MediaAttachment;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/orca/attachments/MediaAttachment$1;->a:Lcom/facebook/orca/attachments/MediaAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment$1;->a:Lcom/facebook/orca/attachments/MediaAttachment;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/MediaAttachment$1;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
