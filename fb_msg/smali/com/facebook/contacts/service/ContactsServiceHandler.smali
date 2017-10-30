.class public Lcom/facebook/contacts/service/ContactsServiceHandler;
.super Ljava/lang/Object;
.source "ContactsServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


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
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/contacts/protocol/FetchAllContactsMethod;

.field private final d:Lcom/facebook/contacts/protocol/FetchContactFQLMethod;

.field private final e:Lcom/facebook/contacts/service/AddressBookContactFetcher;

.field private final f:Lcom/facebook/orca/cache/DataCache;

.field private final g:Lcom/facebook/contacts/cache/ContactsCache;

.field private final h:Lcom/facebook/contacts/data/DbFetchContactHandler;

.field private final i:Lcom/facebook/contacts/data/DbInsertContactHandler;

.field private final j:Lcom/facebook/orca/app/OrcaActivityBroadcaster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/contacts/service/ContactsServiceHandler;

    sput-object v0, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/contacts/protocol/FetchAllContactsMethod;Lcom/facebook/contacts/protocol/FetchContactFQLMethod;Lcom/facebook/contacts/service/AddressBookContactFetcher;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/contacts/cache/ContactsCache;Lcom/facebook/contacts/data/DbFetchContactHandler;Lcom/facebook/contacts/data/DbInsertContactHandler;Lcom/facebook/orca/app/OrcaActivityBroadcaster;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;",
            "Lcom/facebook/contacts/protocol/FetchAllContactsMethod;",
            "Lcom/facebook/contacts/protocol/FetchContactFQLMethod;",
            "Lcom/facebook/contacts/service/AddressBookContactFetcher;",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/facebook/contacts/cache/ContactsCache;",
            "Lcom/facebook/contacts/data/DbFetchContactHandler;",
            "Lcom/facebook/contacts/data/DbInsertContactHandler;",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->b:Ljavax/inject/Provider;

    .line 68
    iput-object p2, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->c:Lcom/facebook/contacts/protocol/FetchAllContactsMethod;

    .line 69
    iput-object p3, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->d:Lcom/facebook/contacts/protocol/FetchContactFQLMethod;

    .line 70
    iput-object p4, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->e:Lcom/facebook/contacts/service/AddressBookContactFetcher;

    .line 71
    iput-object p5, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->f:Lcom/facebook/orca/cache/DataCache;

    .line 72
    iput-object p6, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->g:Lcom/facebook/contacts/cache/ContactsCache;

    .line 73
    iput-object p7, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->h:Lcom/facebook/contacts/data/DbFetchContactHandler;

    .line 74
    iput-object p8, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->i:Lcom/facebook/contacts/data/DbInsertContactHandler;

    .line 75
    iput-object p9, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->j:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 76
    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/server/OperationResult;
    .locals 5
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->e:Lcom/facebook/contacts/service/AddressBookContactFetcher;

    invoke-virtual {v0, p1}, Lcom/facebook/contacts/service/AddressBookContactFetcher;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/contacts/models/Contact;

    move-result-object v0

    .line 196
    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->OTHER:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "Contact not found in android db."

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 200
    :cond_0
    new-instance v1, Lcom/facebook/contacts/server/FetchContactResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/contacts/server/FetchContactResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;JLcom/facebook/contacts/models/Contact;)V

    .line 204
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Z)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/facebook/contacts/service/ContactsServiceHandler;->b(Z)Z

    .line 210
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    const-string v1, "fetchContactParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/server/FetchContactParams;

    .line 96
    invoke-virtual {v0}, Lcom/facebook/contacts/server/FetchContactParams;->a()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    if-ne v1, v2, :cond_0

    .line 99
    invoke-direct {p0, v0}, Lcom/facebook/contacts/service/ContactsServiceHandler;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK_CONTACT:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_2

    .line 102
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/contacts/service/ContactsServiceHandler;->c(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unsupported UserKey type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Z)Z
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 214
    .line 215
    const/4 v1, 0x0

    .line 220
    const v0, 0x4b189680

    move v5, v3

    move-object v6, v1

    move v2, v4

    move v1, v0

    .line 222
    :goto_0
    if-nez v5, :cond_1

    const/16 v0, 0x14

    .line 226
    :goto_1
    if-eqz p1, :cond_2

    .line 227
    invoke-static {v0, v6, v1}, Lcom/facebook/contacts/server/FetchAllContactsParams;->b(ILjava/lang/String;F)Lcom/facebook/contacts/server/FetchAllContactsParams;

    move-result-object v0

    move-object v1, v0

    .line 233
    :goto_2
    iget-object v0, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 234
    iget-object v6, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->c:Lcom/facebook/contacts/protocol/FetchAllContactsMethod;

    invoke-virtual {v0, v6, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/server/FetchAllContactsResult;

    .line 238
    if-eqz v2, :cond_3

    .line 239
    sget-object v1, Lcom/facebook/contacts/data/DbInsertContactHandler$InsertionType;->REPLACE_ALL:Lcom/facebook/contacts/data/DbInsertContactHandler$InsertionType;

    move v2, v3

    .line 245
    :goto_3
    invoke-virtual {v0}, Lcom/facebook/contacts/server/FetchAllContactsResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 246
    sget-object v6, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inserting contacts: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 247
    iget-object v6, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->i:Lcom/facebook/contacts/data/DbInsertContactHandler;

    invoke-virtual {v6, v7, v1}, Lcom/facebook/contacts/data/DbInsertContactHandler;->a(Lcom/google/common/collect/ImmutableCollection;Lcom/facebook/contacts/data/DbInsertContactHandler$InsertionType;)V

    .line 249
    invoke-virtual {v0}, Lcom/facebook/contacts/server/FetchAllContactsResult;->b()Ljava/lang/String;

    move-result-object v6

    .line 250
    sget-object v1, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " contacts in batch"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    add-int/2addr v1, v5

    .line 252
    invoke-virtual {v0}, Lcom/facebook/contacts/server/FetchAllContactsResult;->c()F

    move-result v0

    .line 254
    iget-object v5, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->j:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v7, "com.facebook.orca.ACTION_FRIEND_SYNC_PROGRESS"

    invoke-virtual {v5, v7}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 255
    if-nez v6, :cond_4

    .line 256
    sget-object v0, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " contacts."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 257
    if-lez v1, :cond_0

    move v3, v4

    :cond_0
    return v3

    .line 222
    :cond_1
    const/16 v0, 0x32

    goto/16 :goto_1

    .line 230
    :cond_2
    invoke-static {v0, v6, v1}, Lcom/facebook/contacts/server/FetchAllContactsParams;->a(ILjava/lang/String;F)Lcom/facebook/contacts/server/FetchAllContactsParams;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 242
    :cond_3
    sget-object v1, Lcom/facebook/contacts/data/DbInsertContactHandler$InsertionType;->INSERT:Lcom/facebook/contacts/data/DbInsertContactHandler$InsertionType;

    goto/16 :goto_3

    :cond_4
    move v5, v1

    move v1, v0

    goto/16 :goto_0
.end method

.method private c(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 7
    .parameter

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    const-string v1, "fetchContactParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/server/FetchContactParams;

    .line 112
    invoke-virtual {v0}, Lcom/facebook/contacts/server/FetchContactParams;->a()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Lcom/facebook/contacts/server/FetchContactParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v3

    .line 116
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    if-eq v3, v1, :cond_0

    .line 117
    sget-object v1, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking contacts cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->g:Lcom/facebook/contacts/cache/ContactsCache;

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/cache/ContactsCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/contacts/models/Contact;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    sget-object v0, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got cached contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/facebook/contacts/server/FetchContactResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/contacts/server/FetchContactResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;JLcom/facebook/contacts/models/Contact;)V

    .line 125
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    .line 130
    :cond_0
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    if-eq v3, v1, :cond_1

    .line 131
    sget-object v1, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking contacts DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->h:Lcom/facebook/contacts/data/DbFetchContactHandler;

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/data/DbFetchContactHandler;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/contacts/server/FetchContactResult;

    move-result-object v1

    .line 133
    sget-object v4, Lcom/facebook/contacts/server/FetchContactResult;->a:Lcom/facebook/contacts/server/FetchContactResult;

    if-eq v1, v4, :cond_1

    .line 134
    sget-object v0, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got DB contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/contacts/server/FetchContactResult;->a()Lcom/facebook/contacts/models/Contact;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 135
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    const/4 v1, 0x0

    .line 141
    invoke-virtual {v2}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v4

    sget-object v5, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v4, v5, :cond_4

    .line 142
    sget-object v4, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking FB user cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->f:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4, v2}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v4

    .line 144
    if-eqz v4, :cond_4

    .line 145
    sget-object v1, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got FB user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 148
    new-instance v1, Lcom/facebook/contacts/models/ContactBuilder;

    invoke-direct {v1}, Lcom/facebook/contacts/models/ContactBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/models/ContactBuilder;->b(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/models/ContactBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v1

    .line 150
    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    if-ne v3, v2, :cond_2

    .line 151
    sget-object v0, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not checking server, made contact from cached user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/contacts/models/ContactBuilder;->m()Lcom/facebook/contacts/models/Contact;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/facebook/contacts/server/FetchContactResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_INCOMPLETE:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/facebook/contacts/models/ContactBuilder;->m()Lcom/facebook/contacts/models/Contact;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/contacts/server/FetchContactResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;JLcom/facebook/contacts/models/Contact;)V

    .line 157
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move-object v2, v1

    .line 162
    :goto_1
    sget-object v1, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    const-string v3, "Fetching contact from server"

    invoke-static {v1, v3}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 168
    iget-object v3, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->d:Lcom/facebook/contacts/protocol/FetchContactFQLMethod;

    invoke-virtual {v1, v3, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/server/FetchContactResult;

    .line 171
    if-eqz v2, :cond_3

    .line 172
    invoke-virtual {v0}, Lcom/facebook/contacts/server/FetchContactResult;->a()Lcom/facebook/contacts/models/Contact;

    move-result-object v0

    .line 173
    sget-object v1, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got contact from server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/contacts/models/ContactBuilder;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/contacts/models/ContactBuilder;

    .line 175
    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/contacts/models/ContactBuilder;->a(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    .line 176
    invoke-virtual {v2}, Lcom/facebook/contacts/models/ContactBuilder;->m()Lcom/facebook/contacts/models/Contact;

    move-result-object v1

    .line 177
    sget-object v0, Lcom/facebook/contacts/service/ContactsServiceHandler;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Complete contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->i:Lcom/facebook/contacts/data/DbInsertContactHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/data/DbInsertContactHandler;->a(Lcom/facebook/contacts/models/Contact;)V

    .line 181
    iget-object v0, p0, Lcom/facebook/contacts/service/ContactsServiceHandler;->g:Lcom/facebook/contacts/cache/ContactsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/cache/ContactsCache;->a(Lcom/facebook/contacts/models/Contact;)V

    .line 183
    new-instance v0, Lcom/facebook/contacts/server/FetchContactResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/contacts/server/FetchContactResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;JLcom/facebook/contacts/models/Contact;)V

    .line 189
    :cond_3
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "fetch_contact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/contacts/service/ContactsServiceHandler;->b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 83
    :cond_0
    const-string v1, "sync_contacts_partial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/contacts/service/ContactsServiceHandler;->a(Z)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    const-string v1, "sync_contacts_complete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/contacts/service/ContactsServiceHandler;->a(Z)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
