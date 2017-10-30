.class public Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;
.super Ljava/lang/Object;
.source "AuthenticateSsoMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;",
        "Lcom/facebook/orca/protocol/methods/AuthenticationResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaAppType;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaAppType;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a:Lcom/facebook/orca/app/OrcaAppType;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 47
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "access_token"

    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;->a(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "new_app_id"

    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v2}, Lcom/facebook/orca/app/OrcaAppType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;->b(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "machine_id"

    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;->b(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :goto_0
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "authenticate"

    const-string v2, "POST"

    const-string v3, "method/auth.getSessionForApp"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "generate_machine_id"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/protocol/methods/AuthenticationResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 66
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "machine_id"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v2, Lcom/facebook/orca/auth/FacebookCredentials;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/facebook/orca/auth/FacebookCredentials;-><init>(Ljava/lang/String;J)V

    .line 69
    new-instance v1, Lcom/facebook/orca/protocol/methods/AuthenticationResult;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/protocol/methods/AuthenticationResult;-><init>(Lcom/facebook/orca/auth/FacebookCredentials;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/protocol/methods/AuthenticationResult;

    move-result-object v0

    return-object v0
.end method
