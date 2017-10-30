.class public Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "OrcaHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->b:I

    .line 64
    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    if-nez p3, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->a:Ljava/lang/Class;

    const-string v3, "Exception"

    invoke-static {v2, v3, p1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    iget v2, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->b:I

    if-le p2, v2, :cond_2

    .line 80
    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->a:Ljava/lang/Class;

    const-string v2, "Hit retry limit"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 114
    :goto_0
    return v0

    .line 83
    :cond_2
    instance-of v2, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v2, :cond_3

    .line 85
    sget-object v0, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->a:Ljava/lang/Class;

    const-string v2, "[NoHttpResponseException] Retrying"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_4

    .line 90
    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->a:Ljava/lang/Class;

    const-string v2, "[InterruptedIOException] Not Retrying"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_4
    instance-of v2, p1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_5

    .line 95
    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->a:Ljava/lang/Class;

    const-string v2, "[UnknownHostException] Not Retrying"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_5
    instance-of v2, p1, Ljava/net/ConnectException;

    if-eqz v2, :cond_6

    .line 100
    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->a:Ljava/lang/Class;

    const-string v2, "[ConnectException] Not Retrying"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_6
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_7

    .line 105
    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->a:Ljava/lang/Class;

    const-string v2, "[SSLHandshakeException] Not Retrying"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_7
    sget-object v0, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;->a:Ljava/lang/Class;

    const-string v2, "[Default] Retrying"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v1

    .line 114
    goto :goto_0
.end method
