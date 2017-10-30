.class public Lcom/facebook/orca/protocol/base/RealBatchRunner;
.super Lcom/facebook/orca/protocol/base/BatchRunner;
.source "RealBatchRunner.java"


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/fasterxml/jackson/core/JsonFactory;

.field private final i:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final j:Lcom/facebook/orca/protocol/base/ApiResponseChecker;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
            ">;",
            "Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/fasterxml/jackson/core/JsonFactory;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            "Lcom/facebook/orca/protocol/base/ApiResponseChecker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/facebook/orca/protocol/base/BatchRunner;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a:Ljavax/inject/Provider;

    .line 81
    iput-object p2, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 82
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Ljavax/inject/Provider;

    .line 83
    iput-object p4, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->d:Ljavax/inject/Provider;

    .line 84
    iput-object p5, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->e:Ljavax/inject/Provider;

    .line 85
    iput-object p6, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->f:Ljavax/inject/Provider;

    .line 86
    iput-object p7, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->g:Ljavax/inject/Provider;

    .line 87
    iput-object p8, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->h:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 88
    iput-object p9, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->i:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 89
    iput-object p10, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->j:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    .line 90
    return-void
.end method

.method private a(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->i:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 279
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->j:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a(Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 280
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const-string v1, "Batch request must return an array"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 13
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v3, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v3, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 96
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a()Ljava/util/List;

    move-result-object v4

    .line 97
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 98
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 99
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchOperation;

    .line 101
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a()Lcom/facebook/orca/protocol/base/ApiMethod;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->b()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v8

    .line 104
    new-instance v9, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v9, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 105
    const-string v1, "method"

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 107
    invoke-static {v8}, Lcom/facebook/orca/protocol/base/ApiRequestUtils;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Ljava/util/List;

    move-result-object v10

    .line 109
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    if-eqz v1, :cond_0

    const-string v11, "0"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 111
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "test_carrier_id"

    invoke-direct {v11, v12, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "phprof_sample"

    const-string v12, "1"

    invoke-direct {v1, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    if-eqz v1, :cond_1

    .line 118
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "phprof_user"

    invoke-direct {v11, v12, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "wirehog_sample"

    const-string v12, "1"

    invoke-direct {v1, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    if-eqz v1, :cond_2

    .line 125
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "wirehog_user"

    invoke-direct {v11, v12, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v11, "GET"

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 131
    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 132
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "?"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 143
    const-string v10, "name"

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 145
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->d()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 146
    const-string v10, "depends_on"

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 148
    :cond_4
    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 149
    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Ljava/util/List;

    move-result-object v0

    .line 150
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x19

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    .line 152
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_5

    .line 153
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_5
    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 133
    :cond_6
    const-string v11, "POST"

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 134
    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 135
    const-string v11, "body"

    invoke-virtual {v9, v11, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 136
    :cond_7
    const-string v11, "DELETE"

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 137
    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 138
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "?"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 140
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_9
    const-string v0, "attached_files"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 160
    :cond_a
    const-string v0, "omit_response_on_success"

    invoke-virtual {v9, v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 161
    const-string v0, "relative_url"

    invoke-virtual {v9, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 162
    invoke-virtual {v3, v9}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 163
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 166
    :cond_b
    new-instance v7, Lcom/facebook/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v7}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    const-string v1, "access_token"

    new-instance v8, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    invoke-direct {v8, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v8}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 169
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 171
    const-string v1, "RealBatchRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Request JSON: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_c
    const-string v1, "batch"

    new-instance v3, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v3}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 174
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    .line 175
    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->b()Lcom/facebook/apache/http/entity/mime/content/ContentBody;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_3

    .line 178
    :cond_d
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    .line 179
    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->b()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 180
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 181
    const-string v1, "phprof_sample"

    const-string v5, "1"

    invoke-virtual {v3, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 182
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    if-eqz v1, :cond_e

    .line 184
    const-string v5, "phprof_user"

    invoke-virtual {v3, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 187
    :cond_e
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 188
    const-string v1, "wirehog_sample"

    const-string v5, "1"

    invoke-virtual {v3, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 189
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 190
    if-eqz v1, :cond_f

    .line 191
    const-string v5, "wirehog_user"

    invoke-virtual {v3, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 195
    :cond_f
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/locale/FBLocaleMapper;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 197
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 200
    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->c()Ljava/lang/String;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_10

    .line 202
    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_10
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 208
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 210
    const/16 v1, 0x12c

    if-le v3, v1, :cond_13

    .line 211
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .line 212
    if-nez v5, :cond_12

    const/4 v1, 0x0

    .line 214
    :goto_4
    if-eqz v1, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_11
    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v1, v3, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v0

    .line 212
    :cond_12
    :try_start_1
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 219
    :cond_13
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->h:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 221
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 223
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->i:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v7

    move v3, v2

    .line 225
    :goto_5
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/MappingIterator;->hasNextValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 226
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/MappingIterator;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 227
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchOperation;

    .line 229
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->a()Lcom/facebook/orca/protocol/base/ApiMethod;

    move-result-object v8

    .line 230
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/protocol/base/ApiRequest;

    .line 232
    new-instance v9, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;

    iget-object v10, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->j:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-direct {v9, v10}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;-><init>(Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V

    .line 234
    invoke-virtual {v9, v0}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v10

    .line 237
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v0

    sget-object v11, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSONPARSER:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v0, v11, :cond_14

    .line 238
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-virtual {v9}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->b()I

    move-result v2

    invoke-virtual {v9}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a()Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->h:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v11, v10}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v10

    iget-object v11, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->j:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-direct {v0, v2, v9, v10, v11}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Lcom/fasterxml/jackson/core/JsonParser;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V

    .line 262
    :goto_6
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v8, v2, v0}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;

    move-result-object v0

    .line 263
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 265
    goto :goto_5

    .line 243
    :cond_14
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v0

    sget-object v11, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v0, v11, :cond_15

    .line 244
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-virtual {v9}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->b()I

    move-result v2

    invoke-virtual {v9}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a()Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->i:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v11, v10}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v10

    iget-object v11, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->j:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-direct {v0, v2, v9, v10, v11}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V

    goto :goto_6

    .line 249
    :cond_15
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v0

    sget-object v11, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v0, v11, :cond_16

    .line 250
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-virtual {v9}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->b()I

    move-result v2

    invoke-virtual {v9}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a()Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->j:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-direct {v0, v2, v9, v10, v11}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Ljava/lang/String;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V

    goto :goto_6

    .line 255
    :cond_16
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/protocol/base/ApiResponseType;->ENTITY:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v0, v1, :cond_17

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response type entity not supported for batch requests"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown api response type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eq v3, v0, :cond_19

    .line 267
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Received wrong number of batches in response"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :cond_19
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 272
    return-void
.end method
