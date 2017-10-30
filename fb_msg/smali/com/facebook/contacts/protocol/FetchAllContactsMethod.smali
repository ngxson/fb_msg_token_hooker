.class public Lcom/facebook/contacts/protocol/FetchAllContactsMethod;
.super Ljava/lang/Object;
.source "FetchAllContactsMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/contacts/server/FetchAllContactsParams;",
        "Lcom/facebook/contacts/server/FetchAllContactsResult;",
        ">;"
    }
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
.field private final b:Lcom/facebook/contacts/graphql/ContactGraphQL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;

    sput-object v0, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/contacts/graphql/ContactGraphQL;)V
    .locals 0
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;->b:Lcom/facebook/contacts/graphql/ContactGraphQL;

    .line 45
    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 113
    const-string v0, "contacts.contact_profile_type(user,unmatched)"

    invoke-static {v0}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    const-string v1, "orderby"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "communication"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    .line 117
    if-eqz p2, :cond_0

    .line 118
    const-string v1, "after"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;->b:Lcom/facebook/contacts/graphql/ContactGraphQL;

    invoke-virtual {v1}, Lcom/facebook/contacts/graphql/ContactGraphQL;->a()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v1

    .line 123
    const-string v2, "first"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    const-string v2, "page_info"

    invoke-static {v2}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "start_cursor"

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "end_cursor"

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "has_previous_page"

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "has_next_page"

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/facebook/contacts/graphql/GraphQLQuery;->a()Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/facebook/contacts/graphql/GraphQLQuery;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/contacts/server/FetchAllContactsParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/contacts/server/FetchAllContactsResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->fieldNames()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 77
    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 79
    const-string v1, "page_info"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 80
    const-string v2, "end_cursor"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string v1, "nodes"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 84
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 87
    invoke-virtual {p1}, Lcom/facebook/contacts/server/FetchAllContactsParams;->d()F

    move-result v6

    .line 89
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 90
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    .line 91
    iget-object v5, p0, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;->b:Lcom/facebook/contacts/graphql/ContactGraphQL;

    invoke-virtual {v5, v4}, Lcom/facebook/contacts/graphql/ContactGraphQL;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v4

    .line 93
    invoke-virtual {v4, v6}, Lcom/facebook/contacts/models/ContactBuilder;->a(F)Lcom/facebook/contacts/models/ContactBuilder;

    .line 96
    const/high16 v5, 0x3f80

    sub-float/2addr v6, v5

    .line 98
    invoke-virtual {v4}, Lcom/facebook/contacts/models/ContactBuilder;->m()Lcom/facebook/contacts/models/Contact;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 101
    sget-object v0, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got result: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/facebook/contacts/server/FetchAllContactsResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/contacts/server/FetchAllContactsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;JF)V

    return-object v0
.end method

.method public a(Lcom/facebook/contacts/server/FetchAllContactsParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 52
    invoke-virtual {p1}, Lcom/facebook/contacts/server/FetchAllContactsParams;->d()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 54
    invoke-virtual {p1}, Lcom/facebook/contacts/server/FetchAllContactsParams;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Complete contact sync not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/contacts/server/FetchAllContactsParams;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/contacts/server/FetchAllContactsParams;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "q"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "fetchContacts"

    const-string v2, "GET"

    const-string v3, "graphql"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/facebook/contacts/server/FetchAllContactsParams;

    invoke-virtual {p0, p1}, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;->a(Lcom/facebook/contacts/server/FetchAllContactsParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/facebook/contacts/server/FetchAllContactsParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;->a(Lcom/facebook/contacts/server/FetchAllContactsParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/contacts/server/FetchAllContactsResult;

    move-result-object v0

    return-object v0
.end method
