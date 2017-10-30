.class public Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;
.super Ljava/lang/Object;
.source "SendMessageParameterHelper.java"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

.field private final c:Lcom/facebook/orca/attachments/MediaAttachmentUtil;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/attachments/MediaAttachmentFactory;Lcom/facebook/orca/attachments/MediaAttachmentUtil;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    iput-object v0, p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->a:Ljava/lang/Class;

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->b:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 34
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->c:Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    .line 35
    return-void
.end method


# virtual methods
.method a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/protocol/base/ContentBody;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->a:Ljava/lang/Class;

    const-string v2, "No attachment found! Returning null..."

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->b:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v1

    .line 93
    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->a:Ljava/lang/Class;

    const-string v2, "Unable to create an attachment from given resource"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->c:Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->a(Lcom/facebook/orca/attachments/MediaAttachment;)Lcom/facebook/orca/protocol/base/ContentBody;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lcom/facebook/orca/threads/Message;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5
    .parameter

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v2, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 62
    const-string v2, "latitude"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;D)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 63
    const-string v2, "longitude"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->c()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;D)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 64
    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const-string v2, "altitude"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->d()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    const-string v2, "accuracy"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->f()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    const-string v2, "heading"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->j()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 73
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    const-string v2, "speed"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->l()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 76
    :cond_3
    return-object v1
.end method

.method a(Ljava/util/List;Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/facebook/orca/threads/Message;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "message"

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0, p2}, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->a(Lcom/facebook/orca/threads/Message;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 45
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "coordinates"

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "offline_threading_id"

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2
    if-eqz p3, :cond_3

    .line 54
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "object_attachment"

    invoke-direct {v0, v1, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_3
    return-void
.end method
