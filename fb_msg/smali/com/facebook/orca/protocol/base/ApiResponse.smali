.class public Lcom/facebook/orca/protocol/base/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# instance fields
.field private final a:I

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lcom/fasterxml/jackson/databind/JsonNode;

.field private final e:Lcom/fasterxml/jackson/core/JsonParser;

.field private final f:Lorg/apache/http/HttpEntity;

.field private final g:Lcom/facebook/orca/protocol/base/ApiResponseChecker;


# direct methods
.method public constructor <init>(ILjava/util/List;Lcom/fasterxml/jackson/core/JsonParser;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/facebook/orca/protocol/base/ApiResponseChecker;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->a:I

    .line 80
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Lcom/google/common/collect/ImmutableList;

    .line 81
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 83
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->e:Lcom/fasterxml/jackson/core/JsonParser;

    .line 84
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->f:Lorg/apache/http/HttpEntity;

    .line 85
    iput-object p4, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->g:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    .line 86
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            "Lcom/facebook/orca/protocol/base/ApiResponseChecker;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->a:I

    .line 52
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Lcom/google/common/collect/ImmutableList;

    .line 53
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 55
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->e:Lcom/fasterxml/jackson/core/JsonParser;

    .line 56
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->f:Lorg/apache/http/HttpEntity;

    .line 57
    iput-object p4, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->g:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    .line 58
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/lang/String;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/protocol/base/ApiResponseChecker;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->a:I

    .line 38
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Lcom/google/common/collect/ImmutableList;

    .line 39
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 41
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->e:Lcom/fasterxml/jackson/core/JsonParser;

    .line 42
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->f:Lorg/apache/http/HttpEntity;

    .line 43
    iput-object p4, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->g:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lorg/apache/http/HttpEntity;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/facebook/orca/protocol/base/ApiResponseChecker;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->a:I

    .line 66
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Lcom/google/common/collect/ImmutableList;

    .line 67
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 69
    iput-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->e:Lcom/fasterxml/jackson/core/JsonParser;

    .line 70
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->f:Lorg/apache/http/HttpEntity;

    .line 71
    iput-object p4, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->g:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    .line 72
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "No response body."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "No response json node."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->e()V

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->a()Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No response json or body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->f:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->f:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->e:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 174
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->g:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    iget-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->d:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a(Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->g:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    iget-object v1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
