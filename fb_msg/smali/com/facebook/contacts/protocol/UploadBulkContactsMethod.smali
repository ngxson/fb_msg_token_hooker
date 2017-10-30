.class public Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;
.super Ljava/lang/Object;
.source "UploadBulkContactsMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/contacts/server/UploadBulkContactsParams;",
        "Lcom/facebook/contacts/server/UploadBulkContactsResult;",
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
.field private final b:Lcom/fasterxml/jackson/core/JsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;

    sput-object v0, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 0
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->b:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 51
    return-void
.end method

.method private a(Lcom/facebook/contacts/server/UploadBulkContactChange;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 143
    sget-object v0, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/contacts/server/UploadBulkContactChange;->c()Lcom/facebook/contacts/server/UploadBulkContactChange$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/server/UploadBulkContactChange$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    const-string v0, "add"

    goto :goto_0

    .line 147
    :pswitch_1
    const-string v0, "modify"

    goto :goto_0

    .line 149
    :pswitch_2
    const-string v0, "delete"

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/facebook/orca/users/UserEmailAddress;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserEmailAddress;->b()I

    move-result v0

    .line 205
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 206
    const-string v0, "home"

    .line 210
    :goto_0
    return-object v0

    .line 207
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 208
    const-string v0, "work"

    goto :goto_0

    .line 210
    :cond_1
    const-string v0, "other"

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/users/UserPhoneNumber;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserPhoneNumber;->f()I

    move-result v0

    .line 217
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 218
    const-string v0, "home"

    .line 232
    :goto_0
    return-object v0

    .line 219
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 220
    const-string v0, "work"

    goto :goto_0

    .line 221
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 222
    const-string v0, "mobile"

    goto :goto_0

    .line 223
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 224
    const-string v0, "fax_home"

    goto :goto_0

    .line 225
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 226
    const-string v0, "fax_work"

    goto :goto_0

    .line 227
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 228
    const-string v0, "fax_other"

    goto :goto_0

    .line 229
    :cond_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 230
    const-string v0, "pager"

    goto :goto_0

    .line 232
    :cond_6
    const-string v0, "other"

    goto :goto_0
.end method

.method private a(Lcom/google/common/collect/ImmutableList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/server/UploadBulkContactChange;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->b:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 125
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/server/UploadBulkContactChange;

    .line 126
    invoke-direct {p0, v0, v2}, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a(Lcom/facebook/contacts/server/UploadBulkContactChange;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 129
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 130
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/contacts/server/UploadBulkContactChange;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 136
    const-string v0, "client_contact_id"

    invoke-virtual {p1}, Lcom/facebook/contacts/server/UploadBulkContactChange;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "update_type"

    invoke-direct {p0, p1}, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a(Lcom/facebook/contacts/server/UploadBulkContactChange;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/facebook/contacts/server/UploadBulkContactChange;->b()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a(Lcom/facebook/orca/users/User;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 139
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 140
    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 157
    const-string v0, "contact"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 159
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 162
    const-string v1, "formatted"

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "first"

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const-string v1, "last"

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 173
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    const-string v1, "emails"

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserEmailAddress;

    .line 177
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 178
    const-string v2, "type"

    invoke-direct {p0, v0}, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a(Lcom/facebook/orca/users/UserEmailAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v2, "email"

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserEmailAddress;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 186
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 188
    const-string v1, "phones"

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 190
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 191
    const-string v2, "type"

    invoke-direct {p0, v0}, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a(Lcom/facebook/orca/users/UserPhoneNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "number"

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_1

    .line 196
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 199
    :cond_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 200
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/contacts/server/UploadBulkContactsParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/contacts/server/UploadBulkContactsResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 80
    const-string v1, "import_id"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 84
    const-string v2, "contact_changes"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->fields()Ljava/util/Iterator;

    move-result-object v5

    .line 87
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 92
    const-string v3, "update_type"

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v3

    .line 95
    const-string v6, "add"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    sget-object v3, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->ADD:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    .line 108
    :goto_1
    const-string v6, "contact"

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 109
    const-string v6, "id"

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v6, Lcom/facebook/contacts/server/UploadBulkContactChangeResult;

    invoke-direct {v6, v3, v2, v0}, Lcom/facebook/contacts/server/UploadBulkContactChangeResult;-><init>(Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 97
    :cond_0
    const-string v6, "change"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    sget-object v3, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->CHANGE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    goto :goto_1

    .line 99
    :cond_1
    const-string v6, "remove"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    sget-object v3, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->REMOVE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    goto :goto_1

    .line 101
    :cond_2
    const-string v6, "none"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    sget-object v3, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->NONE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    goto :goto_1

    .line 104
    :cond_3
    sget-object v0, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized contact change type: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", skipping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_4
    new-instance v0, Lcom/facebook/contacts/server/UploadBulkContactsResult;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/contacts/server/UploadBulkContactsResult;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/server/DataFreshnessResult;J)V

    return-object v0
.end method

.method public a(Lcom/facebook/contacts/server/UploadBulkContactsParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 55
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 56
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "import_id"

    invoke-virtual {p1}, Lcom/facebook/contacts/server/UploadBulkContactsParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "contact_changes"

    invoke-virtual {p1}, Lcom/facebook/contacts/server/UploadBulkContactsParams;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a(Lcom/google/common/collect/ImmutableList;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uploading contacts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "graphUploadBulkContacts"

    const-string v2, "POST"

    const-string v3, "me/bulkcontacts"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/contacts/server/UploadBulkContactsParams;

    invoke-virtual {p0, p1}, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a(Lcom/facebook/contacts/server/UploadBulkContactsParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/contacts/server/UploadBulkContactsParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;->a(Lcom/facebook/contacts/server/UploadBulkContactsParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/contacts/server/UploadBulkContactsResult;

    move-result-object v0

    return-object v0
.end method
