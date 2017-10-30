.class public Lcom/facebook/orca/protocol/base/ApiResponseChecker;
.super Ljava/lang/Object;
.source "ApiResponseChecker.java"


# instance fields
.field private final a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 26
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 4
    .parameter

    .prologue
    .line 33
    if-nez p0, :cond_1

    .line 64
    :cond_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    const-string v0, "error_code"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiErrorResult;

    const-string v1, "error_code"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lcom/fasterxml/jackson/databind/JsonNode;)I

    move-result v1

    const-string v2, "error_msg"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/protocol/base/ApiErrorResult;-><init>(ILjava/lang/String;)V

    .line 43
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiException;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/base/ApiException;-><init>(Lcom/facebook/orca/protocol/base/ApiErrorResult;)V

    throw v1

    .line 45
    :cond_2
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isInt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiErrorResult;

    const-string v1, "error"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lcom/fasterxml/jackson/databind/JsonNode;)I

    move-result v1

    const-string v2, "error_description"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/protocol/base/ApiErrorResult;-><init>(ILjava/lang/String;)V

    .line 50
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiException;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/base/ApiException;-><init>(Lcom/facebook/orca/protocol/base/ApiErrorResult;)V

    throw v1

    .line 52
    :cond_3
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiErrorResult;

    const/4 v2, 0x0

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/protocol/base/ApiErrorResult;-><init>(ILjava/lang/String;)V

    .line 57
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiException;

    invoke-direct {v0, v1}, Lcom/facebook/orca/protocol/base/ApiException;-><init>(Lcom/facebook/orca/protocol/base/ApiErrorResult;)V

    throw v0

    .line 59
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const-string v1, "Response was neither an array or a dictionary"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->b(Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->b(Lcom/fasterxml/jackson/databind/JsonNode;)V
    :try_end_0
    .catch Lcom/facebook/orca/protocol/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    throw v0

    .line 89
    :catch_1
    move-exception v0

    goto :goto_0

    .line 91
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 71
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/facebook/orca/protocol/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    throw v0

    .line 74
    :catch_1
    move-exception v0

    goto :goto_0

    .line 76
    :catch_2
    move-exception v0

    goto :goto_0
.end method
