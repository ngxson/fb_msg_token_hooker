.class Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler$RawJsonBlobNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "HoneyAnalyticsUploadHandler.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler$RawJsonBlobNode;->a:Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler$RawJsonBlobNode;->b:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler$RawJsonBlobNode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler$RawJsonBlobNode;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawValue(Ljava/lang/String;)V

    .line 92
    return-void
.end method
