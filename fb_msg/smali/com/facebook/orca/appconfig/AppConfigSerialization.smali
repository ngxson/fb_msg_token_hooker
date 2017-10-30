.class public Lcom/facebook/orca/appconfig/AppConfigSerialization;
.super Ljava/lang/Object;
.source "AppConfigSerialization.java"


# instance fields
.field a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/appconfig/AppConfigSerialization;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/orca/appconfig/AppConfig;
    .locals 6
    .parameter

    .prologue
    .line 28
    const-string v0, "min_version"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "current_version"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    const-string v2, "new_version_url"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    const-string v3, "min_version_code"

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lcom/fasterxml/jackson/databind/JsonNode;)I

    move-result v3

    .line 32
    const-string v4, "current_version_code"

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lcom/fasterxml/jackson/databind/JsonNode;)I

    move-result v4

    .line 34
    invoke-static {}, Lcom/facebook/orca/appconfig/AppConfig;->newBuilder()Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->a(I)Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->b(I)Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->f()Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfig;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/appconfig/AppConfigSerialization;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/facebook/orca/appconfig/AppConfigSerialization;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/appconfig/AppConfig;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 45
    const-string v1, "min_version"

    invoke-virtual {p1}, Lcom/facebook/orca/appconfig/AppConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 46
    const-string v1, "current_version"

    invoke-virtual {p1}, Lcom/facebook/orca/appconfig/AppConfig;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 47
    const-string v1, "new_version_url"

    invoke-virtual {p1}, Lcom/facebook/orca/appconfig/AppConfig;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 48
    const-string v1, "min_version_code"

    invoke-virtual {p1}, Lcom/facebook/orca/appconfig/AppConfig;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 49
    const-string v1, "current_version_code"

    invoke-virtual {p1}, Lcom/facebook/orca/appconfig/AppConfig;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 50
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
