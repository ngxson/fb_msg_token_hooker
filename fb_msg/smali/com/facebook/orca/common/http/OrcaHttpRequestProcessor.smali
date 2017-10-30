.class public Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;
.super Ljava/lang/Object;
.source "OrcaHttpRequestProcessor.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static final c:Ljava/util/logging/Logger;


# instance fields
.field private final d:Lcom/facebook/orca/common/http/OrcaHttpClient;

.field private final e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

.field private final f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a:Ljava/lang/Class;

    .line 33
    const-string v0, "OrcaHttpRequestProcessor"

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    .line 35
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClient;Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpClient;

    .line 47
    iput-object p2, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    .line 48
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 49
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 217
    :try_start_0
    invoke-interface {p2, p3}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    .line 222
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    :cond_0
    :goto_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 223
    :catch_1
    move-exception v1

    .line 226
    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->c:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error consuming content after an exception."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 235
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RuntimeException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 240
    :cond_2
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 245
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Throwable"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter

    .prologue
    .line 171
    invoke-static {p1}, Lcom/facebook/orca/common/http/ProtocolExceptions;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-interface {v0}, Lcom/facebook/orca/common/http/OrcaHttpClient;->a()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 174
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 175
    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 176
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;
    .locals 4
    .parameter

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 256
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;ZLorg/apache/http/HttpResponse;Ljava/lang/Throwable;J)V
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 194
    .line 195
    if-eqz p3, :cond_0

    .line 196
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 200
    :cond_0
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->g:Z

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/io/IOException;

    const-string v1, "In lame duck mode"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 98
    if-nez p3, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response handler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d()V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 106
    const/4 v2, 0x0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v8

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lorg/apache/http/HttpRequest;)V

    .line 113
    iget-object v1, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-direct {p0, p2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, v3, p2, v0}, Lcom/facebook/orca/common/http/OrcaHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 114
    :try_start_1
    invoke-direct {p0, v3}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lorg/apache/http/HttpResponse;)V

    .line 115
    invoke-direct {p0, p1, p3, v3}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v7

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-virtual {v0, v3, v7}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V

    .line 120
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :cond_1
    const/4 v2, 0x1

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, v5

    move-object v0, p0

    move-object v1, p1

    .line 135
    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;ZLorg/apache/http/HttpResponse;Ljava/lang/Throwable;J)V

    .line 136
    return-object v7

    .line 128
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 130
    :goto_0
    :try_start_2
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v4, v0

    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, v5

    move-object v0, p0

    move-object v1, p1

    .line 135
    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;ZLorg/apache/http/HttpResponse;Ljava/lang/Throwable;J)V

    .line 136
    throw v7

    .line 132
    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v3, v4

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v7, v0

    goto :goto_1

    .line 128
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d()V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 62
    const/4 v2, 0x0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v8

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lorg/apache/http/HttpRequest;)V

    .line 69
    iget-object v1, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-direct {p0, p2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, v3, p2, v0}, Lcom/facebook/orca/common/http/OrcaHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, v3}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    const/4 v2, 0x1

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, v5

    move-object v0, p0

    move-object v1, p1

    .line 81
    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;ZLorg/apache/http/HttpResponse;Ljava/lang/Throwable;J)V

    .line 82
    return-object v3

    .line 74
    :catch_0
    move-exception v0

    .line 76
    :goto_0
    :try_start_2
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v3, v4

    move-object v4, v0

    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, v5

    move-object v0, p0

    move-object v1, p1

    .line 81
    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;ZLorg/apache/http/HttpResponse;Ljava/lang/Throwable;J)V

    .line 82
    throw v7

    .line 78
    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v3, v4

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v7, v0

    goto :goto_1

    .line 74
    :catch_1
    move-exception v0

    move-object v4, v3

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->g:Z

    .line 141
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->g:Z

    .line 145
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 155
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method
