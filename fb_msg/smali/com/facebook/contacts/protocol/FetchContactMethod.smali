.class public Lcom/facebook/contacts/protocol/FetchContactMethod;
.super Ljava/lang/Object;
.source "FetchContactMethod.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/EntrySection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 137
    const-string v3, "label"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v3

    .line 139
    const-string v4, "rows"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 140
    const-string v4, "nodes"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 143
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 144
    invoke-direct {p0, v4, v0}, Lcom/facebook/contacts/protocol/FetchContactMethod;->a(Lcom/google/common/collect/ImmutableList$Builder;Lcom/fasterxml/jackson/databind/JsonNode;)V

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 147
    new-instance v4, Lcom/facebook/contacts/models/EntrySection;

    invoke-direct {v4, v3, v0}, Lcom/facebook/contacts/models/EntrySection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 78
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v3, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v3, Lcom/facebook/orca/users/User$Type;->FACEBOOK_CONTACT:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 82
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v3, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v3, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_1
    const-string v1, "rows"

    invoke-static {v1}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "nodes"

    invoke-static {v2}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "label"

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "entries"

    invoke-static {v3}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v3

    const-string v4, "fields"

    invoke-static {v4}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v4, v5}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v4

    const-string v5, "__type__"

    invoke-virtual {v4, v5}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v4

    const-string v5, "phone"

    invoke-static {v5}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v5

    const-string v6, "display_number"

    invoke-virtual {v5, v6}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v5

    const-string v6, "universal_number"

    invoke-virtual {v5, v6}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v1

    .line 111
    const-string v2, "contact"

    invoke-static {v2}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "info_sections"

    invoke-static {v3}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v3

    const-string v4, "nodes"

    invoke-static {v4}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v4, "label"

    invoke-virtual {v1, v4}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "represented_profile"

    invoke-static {v2}, Lcom/facebook/contacts/graphql/GraphQLQuery;->b(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    const-string v2, "note_sections"

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v1

    .line 126
    invoke-static {v0}, Lcom/facebook/contacts/graphql/GraphQLQuery;->a(Ljava/lang/String;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->a(Lcom/facebook/contacts/graphql/GraphQLQuery;)Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/contacts/graphql/GraphQLQueryBuilder;->f()Lcom/facebook/contacts/graphql/GraphQLQuery;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/facebook/contacts/graphql/GraphQLQuery;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    .line 78
    goto/16 :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    .line 91
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    goto/16 :goto_1
.end method

.method private a(Lcom/google/common/collect/ImmutableList$Builder;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Lcom/facebook/contacts/models/entry/Entry;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    const-string v0, "label"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v0, "entries"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 157
    const-string v3, "fields"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 160
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 161
    const-string v3, "__type__"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v3

    .line 162
    const-string v4, "value"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v4

    .line 165
    const-string v5, "ContactPhone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v3, "universal_number"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v3

    .line 168
    new-instance v0, Lcom/facebook/contacts/models/entry/PhoneEntry;

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Lcom/facebook/contacts/models/entry/PhoneEntry;-><init>(Ljava/lang/String;I)V

    .line 176
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 169
    :cond_0
    const-string v0, "ContactAddress"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Lcom/facebook/contacts/models/entry/AddressEntry;

    invoke-direct {v0, v4}, Lcom/facebook/contacts/models/entry/AddressEntry;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_1
    const-string v0, "ContactEmail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    new-instance v0, Lcom/facebook/contacts/models/entry/EmailEntry;

    invoke-direct {v0, v4}, Lcom/facebook/contacts/models/entry/EmailEntry;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_2
    new-instance v0, Lcom/facebook/contacts/models/entry/DefaultEntry;

    invoke-direct {v0, v1, v4}, Lcom/facebook/contacts/models/entry/DefaultEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/contacts/server/FetchContactParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/contacts/server/FetchContactResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->fieldNames()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 54
    const-string v1, "contact"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 55
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v3, "info_sections"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 59
    const-string v4, "note_sections"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 60
    const-string v4, "represented_profile"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 61
    const-string v4, "id"

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v4, "nodes"

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/contacts/protocol/FetchContactMethod;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 66
    new-instance v4, Lcom/facebook/contacts/models/ContactBuilder;

    invoke-direct {v4}, Lcom/facebook/contacts/models/ContactBuilder;-><init>()V

    invoke-virtual {v4, v1}, Lcom/facebook/contacts/models/ContactBuilder;->a(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/contacts/models/ContactBuilder;->b(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/contacts/models/ContactBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/contacts/models/ContactBuilder;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v0

    .line 72
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
    .line 42
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 43
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "q"

    invoke-virtual {p1}, Lcom/facebook/contacts/server/FetchContactParams;->a()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/contacts/protocol/FetchContactMethod;->a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "fetchContact"

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
    .line 38
    check-cast p1, Lcom/facebook/contacts/server/FetchContactParams;

    invoke-virtual {p0, p1}, Lcom/facebook/contacts/protocol/FetchContactMethod;->a(Lcom/facebook/contacts/server/FetchContactParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/facebook/contacts/server/FetchContactParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/contacts/protocol/FetchContactMethod;->a(Lcom/facebook/contacts/server/FetchContactParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/contacts/server/FetchContactResult;

    move-result-object v0

    return-object v0
.end method
