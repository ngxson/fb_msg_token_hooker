.class public Lcom/facebook/orca/protocol/methods/UploadShareMethod;
.super Ljava/lang/Object;
.source "UploadShareMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/media/MediaResource;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

.field private final b:Lcom/facebook/orca/attachments/MediaAttachmentUtil;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/attachments/MediaAttachmentFactory;Lcom/facebook/orca/attachments/MediaAttachmentUtil;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/UploadShareMethod;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 34
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/UploadShareMethod;->b:Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 9
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/UploadShareMethod;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v3

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/UploadShareMethod;->b:Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->a(Lcom/facebook/orca/attachments/MediaAttachment;)Lcom/facebook/orca/protocol/base/ContentBody;

    move-result-object v7

    .line 42
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 43
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "attached_files"

    const-string v2, "attach"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 44
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "messaging_attachment"

    const-string v2, "true"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 46
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "attachment-upload"

    const-string v2, "POST"

    invoke-virtual {v3}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    new-instance v6, Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    const-string v8, "attach"

    invoke-direct {v6, v8, v7}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lcom/facebook/apache/http/entity/mime/FormBodyPart;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/facebook/orca/media/MediaResource;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/UploadShareMethod;->a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/facebook/orca/media/MediaResource;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/UploadShareMethod;->a(Lcom/facebook/orca/media/MediaResource;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/media/MediaResource;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 58
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
