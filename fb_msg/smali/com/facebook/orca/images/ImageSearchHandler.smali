.class public Lcom/facebook/orca/images/ImageSearchHandler;
.super Ljava/lang/Object;
.source "ImageSearchHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


# instance fields
.field private final a:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

.field private final b:Lcom/facebook/orca/protocol/base/ApiResponseChecker;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/images/ImageSearchHandler;->a:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 35
    iput-object p2, p0, Lcom/facebook/orca/images/ImageSearchHandler;->b:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    .line 36
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 66
    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter

    .prologue
    .line 50
    const-string v0, "http://api.search.live.net/json.aspx"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 56
    :cond_0
    new-instance v2, Lcom/facebook/orca/protocol/base/StringResponseHandler;

    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchHandler;->b:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-direct {v2, v0}, Lcom/facebook/orca/protocol/base/StringResponseHandler;-><init>(Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V

    .line 57
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchHandler;->a:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    const-string v3, "imageSearch"

    invoke-virtual {v1, v3, v0, v2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/StringResponseHandler;->a()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 60
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/images/ImageSearchHandler;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 42
    const-string v2, "image_search"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-direct {p0, v1}, Lcom/facebook/orca/images/ImageSearchHandler;->a(Landroid/os/Bundle;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
