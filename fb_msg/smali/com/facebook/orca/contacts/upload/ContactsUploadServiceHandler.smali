.class public Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;
.super Ljava/lang/Object;
.source "ContactsUploadServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/orca/users/PhoneUserIterator;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/users/PhoneUserIterator;Ljavax/inject/Provider;Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/users/PhoneUserIterator;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;",
            "Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    .line 47
    iput-object p2, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->c:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->d:Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;

    .line 49
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/users/PhoneUserIterator;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->c()Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    move-result-object v3

    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    sget-object v2, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting upload "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    .line 91
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/orca/users/PhoneUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 92
    invoke-direct {p0, v5}, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a(Lcom/facebook/orca/users/User;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    new-instance v6, Lcom/facebook/contacts/server/UploadBulkContactChange;

    invoke-virtual {v5}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/facebook/contacts/server/UploadBulkContactChange$Type;->ADD:Lcom/facebook/contacts/server/UploadBulkContactChange$Type;

    invoke-direct {v6, v7, v5, v8}, Lcom/facebook/contacts/server/UploadBulkContactChange;-><init>(Ljava/lang/String;Lcom/facebook/orca/users/User;Lcom/facebook/contacts/server/UploadBulkContactChange$Type;)V

    invoke-virtual {v2, v6}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 102
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x32

    if-lt v0, v5, :cond_0

    .line 103
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    .line 105
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 106
    if-eqz v3, :cond_3

    .line 107
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/facebook/orca/server/OrcaServiceProgressCallback;->a(Lcom/facebook/orca/server/OperationResult;)V

    move-object v2, v0

    move v0, v1

    goto :goto_0

    .line 112
    :cond_1
    if-lez v0, :cond_2

    .line 113
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    .line 114
    if-eqz v3, :cond_2

    .line 115
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/orca/server/OrcaServiceProgressCallback;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 119
    :cond_2
    sget-object v0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed upload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p2}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    .line 123
    return-void

    .line 121
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    throw v0

    :cond_3
    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/server/UploadBulkContactChange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uploading user batch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v1, Lcom/facebook/contacts/server/UploadBulkContactsParams;

    invoke-direct {v1, p1, p2}, Lcom/facebook/contacts/server/UploadBulkContactsParams;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    .line 131
    iget-object v0, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 132
    iget-object v2, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->d:Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/server/UploadBulkContactsResult;

    .line 133
    sget-object v1, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v3, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 141
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    :cond_0
    sget-object v0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping contact: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (no name)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 139
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 149
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    sget-object v0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping contact: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (no emails or phones)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v2, v1

    .line 155
    goto :goto_1
.end method

.method private b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter

    .prologue
    .line 63
    sget-object v0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a:Ljava/lang/String;

    const-string v1, "Starting frequent contacts upload..."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->a()Ljava/util/Collection;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-direct {p0, p1, v1}, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/users/PhoneUserIterator;)V

    .line 67
    sget-object v1, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a:Ljava/lang/String;

    const-string v2, "Starting remaining contacts upload..."

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/util/Collection;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/users/PhoneUserIterator;)V

    .line 70
    sget-object v0, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->a:Ljava/lang/String;

    const-string v1, "Done uploading contacts."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, "contacts_upload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;->b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
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
