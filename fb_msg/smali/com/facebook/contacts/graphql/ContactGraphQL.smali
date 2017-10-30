.class public final Lcom/facebook/contacts/graphql/ContactGraphQL;
.super Ljava/lang/Object;
.source "ContactGraphQL.java"


# instance fields
.field private final a:Lcom/facebook/contacts/pictures/ContactPictureSizes;


# direct methods
.method public constructor <init>(Lcom/facebook/contacts/pictures/ContactPictureSizes;)V
    .locals 0
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/contacts/graphql/ContactGraphQL;->a:Lcom/facebook/contacts/pictures/ContactPictureSizes;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/graphql/GraphQLQuery;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 32
    const-string v0, "nodes"

    invoke-static {v0}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    const-string v1, "represented_profile"

    invoke-static {v1}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "birthday"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    const-string v1, "first_name"

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    const-string v1, "middle_name"

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    const-string v1, "last_name"

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    const-string v1, "phones"

    invoke-static {v1}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "phone"

    invoke-static {v2}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "display_number"

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "universal_number"

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    const-string v1, "emails"

    invoke-static {v1}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    .line 63
    const-string v1, "profile_picture"

    invoke-static {v1}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "size"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/contacts/graphql/ContactGraphQL;->a:Lcom/facebook/contacts/pictures/ContactPictureSizes;

    sget-object v5, Lcom/facebook/contacts/pictures/ContactPictureSizes$Size;->SMALL:Lcom/facebook/contacts/pictures/ContactPictureSizes$Size;

    invoke-virtual {v4, v5}, Lcom/facebook/contacts/pictures/ContactPictureSizes;->a(Lcom/facebook/contacts/pictures/ContactPictureSizes$Size;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "small_picture_url"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->d(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    .line 72
    const-string v1, "profile_picture"

    invoke-static {v1}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "size"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/contacts/graphql/ContactGraphQL;->a:Lcom/facebook/contacts/pictures/ContactPictureSizes;

    sget-object v5, Lcom/facebook/contacts/pictures/ContactPictureSizes$Size;->BIG:Lcom/facebook/contacts/pictures/ContactPictureSizes$Size;

    invoke-virtual {v4, v5}, Lcom/facebook/contacts/pictures/ContactPictureSizes;->a(Lcom/facebook/contacts/pictures/ContactPictureSizes$Size;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "big_picture_url"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->d(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    .line 81
    invoke-virtual {v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/contacts/models/ContactBuilder;
    .locals 9
    .parameter

    .prologue
    .line 85
    const-string v0, "represented_profile"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 86
    const-string v1, "phones"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/facebook/contacts/models/Contact;->newBuilder()Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/models/ContactBuilder;->a(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/contacts/models/ContactBuilder;->b(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/contacts/models/ContactBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v0

    const-string v2, "first_name"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/contacts/models/ContactBuilder;->d(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v0

    const-string v2, "middle_name"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/contacts/models/ContactBuilder;->e(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v0

    const-string v2, "last_name"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/contacts/models/ContactBuilder;->f(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v0

    const-string v2, "small_picture_url"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/contacts/models/ContactBuilder;->g(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v0

    const-string v2, "big_picture_url"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/contacts/models/ContactBuilder;->h(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v2

    .line 98
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 100
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 103
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    .line 104
    new-instance v5, Lcom/facebook/contacts/models/ContactPhone;

    const-string v6, "id"

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "label"

    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "display_number"

    invoke-virtual {v4, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "universal_number"

    invoke-virtual {v4, v8}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v0, v7, v4}, Lcom/facebook/contacts/models/ContactPhone;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/contacts/models/ContactBuilder;->b(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/contacts/models/ContactBuilder;

    .line 116
    return-object v2
.end method
