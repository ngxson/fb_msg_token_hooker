.class public Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;
.super Ljava/lang/Object;
.source "RequestSmsConfirmationCodeMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 25
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 26
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "country"

    invoke-virtual {p1}, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "phone_number"

    invoke-virtual {p1}, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p1}, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "marker"

    invoke-virtual {p1}, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "requestSmsConfirmationCode"

    const-string v2, "POST"

    const-string v3, "method/mobile.sendPhoneConfirmationCode"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;->a(Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;->a(Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->e()V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
