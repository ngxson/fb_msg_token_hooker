.class public Lcom/facebook/orca/protocol/base/SingleMethodRunner;
.super Ljava/lang/Object;
.source "SingleMethodRunner.java"


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

.field private final b:Lcom/facebook/orca/config/PlatformAppHttpConfig;

.field private final c:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

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
            "Ljava/lang/String;",
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

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/facebook/orca/config/PlatformAppConfig;

.field private final j:Lcom/fasterxml/jackson/core/JsonFactory;

.field private final k:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final l:Lcom/facebook/orca/protocol/base/ApiResponseChecker;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/config/PlatformAppHttpConfig;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/config/PlatformAppConfig;Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V
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
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
            ">;",
            "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
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
            "Lcom/facebook/orca/config/PlatformAppConfig;",
            "Lcom/fasterxml/jackson/core/JsonFactory;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            "Lcom/facebook/orca/protocol/base/ApiResponseChecker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a:Ljavax/inject/Provider;

    .line 82
    iput-object p2, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    .line 83
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->c:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 84
    iput-object p4, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->d:Ljavax/inject/Provider;

    .line 85
    iput-object p5, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->e:Ljavax/inject/Provider;

    .line 86
    iput-object p6, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->f:Ljavax/inject/Provider;

    .line 87
    iput-object p7, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->g:Ljavax/inject/Provider;

    .line 88
    iput-object p8, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->h:Ljavax/inject/Provider;

    .line 89
    iput-object p9, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->i:Lcom/facebook/orca/config/PlatformAppConfig;

    .line 90
    iput-object p10, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->j:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 91
    iput-object p11, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->k:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 92
    iput-object p12, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->l:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    .line 93
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "api_key"

    iget-object v2, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->i:Lcom/facebook/orca/config/PlatformAppConfig;

    invoke-interface {v2}, Lcom/facebook/orca/config/PlatformAppConfig;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner$1;-><init>(Lcom/facebook/orca/protocol/base/SingleMethodRunner;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 268
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->i:Lcom/facebook/orca/config/PlatformAppConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppConfig;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/SecureHashUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sig"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 278
    const-string v0, "method/auth.login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "method/auth.getSessionForApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "method/logging.mobilelogs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "method/mobile.sendPhoneConfirmationCode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/apache/http/entity/mime/MultipartEntity;
    .locals 6
    .parameter

    .prologue
    .line 223
    new-instance v1, Lcom/facebook/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v1}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 225
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-direct {p0, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v3, "access_token"

    new-instance v4, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 231
    :cond_0
    invoke-static {p1}, Lcom/facebook/orca/protocol/base/ApiRequestUtils;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    const-string v3, "method/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "method"

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Ljava/util/List;)V

    .line 243
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 244
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_1

    .line 235
    :cond_3
    const-string v3, "DELETE"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "method"

    const-string v5, "DELETE"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Ljava/util/List;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    .line 249
    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->b()Lcom/facebook/apache/http/entity/mime/content/ContentBody;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_2

    .line 252
    :cond_5
    return-object v1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 287
    const-string v0, "method/auth.login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "method/logging.mobilelogs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "method/mobile.sendPhoneConfirmationCode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiResponse;
    .locals 5
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v3

    .line 122
    const-string v0, "method/auth.login"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 123
    const-string v0, "method/auth.getSessionForApp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    .line 125
    if-nez v1, :cond_0

    if-eqz v2, :cond_4

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    invoke-interface {v1}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->a()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object v2, v1

    .line 133
    :goto_0
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    invoke-direct {p0, v3}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    if-eqz v1, :cond_1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    const-string v3, "test_carrier_id"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    const-string v1, "phprof_sample"

    const-string v3, "1"

    invoke-virtual {v2, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 142
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    if-eqz v1, :cond_2

    .line 144
    const-string v3, "phprof_user"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->h:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    const-string v1, "wirehog_sample"

    const-string v3, "1"

    invoke-virtual {v2, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 149
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    if-eqz v1, :cond_3

    .line 151
    const-string v3, "wirehog_user"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    :cond_3
    const-string v1, "GET"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    const-string v3, "access_token"

    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 159
    invoke-static {p1}, Lcom/facebook/orca/protocol/base/ApiRequestUtils;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 160
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 128
    :cond_4
    const-string v1, "method"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 129
    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->a()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_0

    .line 131
    :cond_5
    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->b()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_0

    .line 162
    :cond_6
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 173
    :goto_2
    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->c()Ljava/lang/String;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_7

    .line 175
    const-string v2, "User-Agent"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSONPARSER:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v0, v2, :cond_b

    .line 179
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->c:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 181
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 182
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->j:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->l:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Lcom/fasterxml/jackson/core/JsonParser;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V

    .line 211
    :goto_3
    return-object v0

    .line 164
    :cond_8
    const-string v1, "POST"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "DELETE"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 165
    :cond_9
    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/apache/http/entity/mime/MultipartEntity;

    move-result-object v3

    .line 166
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_2

    .line 170
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_b
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v0, v2, :cond_c

    .line 188
    new-instance v2, Lcom/facebook/orca/protocol/base/JsonResponseHandler;

    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->k:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v3, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->l:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-direct {v2, v0, v3}, Lcom/facebook/orca/protocol/base/JsonResponseHandler;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->c:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 192
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/JsonResponseHandler;->a()Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 193
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->l:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V

    move-object v0, v1

    goto/16 :goto_3

    .line 198
    :cond_c
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v0, v2, :cond_d

    .line 199
    new-instance v2, Lcom/facebook/orca/protocol/base/StringResponseHandler;

    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->l:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-direct {v2, v0}, Lcom/facebook/orca/protocol/base/StringResponseHandler;-><init>(Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->c:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/StringResponseHandler;->a()Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 203
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->l:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Ljava/lang/String;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V

    move-object v0, v1

    goto/16 :goto_3

    .line 208
    :cond_d
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/protocol/base/ApiResponseType;->ENTITY:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v0, v2, :cond_e

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->c:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 211
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    iget-object v4, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->l:Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Lorg/apache/http/HttpEntity;Lcom/facebook/orca/protocol/base/ApiResponseChecker;)V

    goto/16 :goto_3

    .line 217
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown api response type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PARAMS:",
            "Ljava/lang/Object;",
            "RESU",
            "LT:Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/orca/protocol/base/ApiMethod",
            "<TPARAMS;TRESU",
            "LT;",
            ">;TPARAMS;)TRESU",
            "LT;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-interface {p1, p2}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiResponse;

    move-result-object v0

    .line 111
    :try_start_0
    invoke-interface {p1, p2, v0}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/ApiResponse;->d()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/ApiResponse;->d()V

    throw v1
.end method
