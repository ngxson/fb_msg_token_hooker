.class public Lcom/facebook/contacts/protocol/FetchContactFQLMethod;
.super Ljava/lang/Object;
.source "FetchContactFQLMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/contacts/server/FetchContactParams;",
        "Lcom/facebook/contacts/server/FetchContactResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/contacts/data/ContactSerialization;


# direct methods
.method public constructor <init>(Lcom/facebook/contacts/data/ContactSerialization;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/contacts/protocol/FetchContactFQLMethod;->a:Lcom/facebook/contacts/data/ContactSerialization;

    .line 43
    return-void
.end method

.method private a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/contacts/models/entry/PhoneEntry;
    .locals 5
    .parameter

    .prologue
    .line 89
    const-string v0, "number"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v2, "country_code"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    const-string v0, "cell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x2

    .line 102
    :goto_0
    new-instance v1, Lcom/facebook/contacts/models/entry/PhoneEntry;

    invoke-direct {v1, v2, v0}, Lcom/facebook/contacts/models/entry/PhoneEntry;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 99
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select name, phones from user where uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/contacts/server/FetchContactParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/contacts/server/FetchContactResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 60
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v3, "phones"

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 63
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 64
    :goto_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 65
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/contacts/protocol/FetchContactFQLMethod;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/contacts/models/entry/PhoneEntry;

    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/facebook/contacts/protocol/FetchContactFQLMethod;->a:Lcom/facebook/contacts/data/ContactSerialization;

    invoke-virtual {v1, v0}, Lcom/facebook/contacts/data/ContactSerialization;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/contacts/models/EntrySection;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/facebook/contacts/models/ContactBuilder;

    invoke-direct {v1}, Lcom/facebook/contacts/models/ContactBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/contacts/server/FetchContactParams;->a()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/contacts/models/ContactBuilder;->a(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/models/ContactBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/contacts/models/ContactBuilder;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/facebook/contacts/server/FetchContactResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/facebook/contacts/models/ContactBuilder;->m()Lcom/facebook/contacts/models/Contact;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/contacts/server/FetchContactResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;JLcom/facebook/contacts/models/Contact;)V

    return-object v1
.end method

.method public a(Lcom/facebook/contacts/server/FetchContactParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 48
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "query"

    invoke-virtual {p1}, Lcom/facebook/contacts/server/FetchContactParams;->a()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/contacts/protocol/FetchContactFQLMethod;->a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "fetchContact"

    const-string v2, "GET"

    const-string v3, "method/fql.query"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/facebook/contacts/server/FetchContactParams;

    invoke-virtual {p0, p1}, Lcom/facebook/contacts/protocol/FetchContactFQLMethod;->a(Lcom/facebook/contacts/server/FetchContactParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/facebook/contacts/server/FetchContactParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/contacts/protocol/FetchContactFQLMethod;->a(Lcom/facebook/contacts/server/FetchContactParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/contacts/server/FetchContactResult;

    move-result-object v0

    return-object v0
.end method
