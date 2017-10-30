.class public Lcom/facebook/contacts/service/AddressBookContactFetcher;
.super Ljava/lang/Object;
.source "AddressBookContactFetcher.java"


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Lcom/facebook/contacts/data/ContactSerialization;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/facebook/contacts/data/ContactSerialization;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/contacts/service/AddressBookContactFetcher;->a:Landroid/content/ContentResolver;

    .line 34
    iput-object p2, p0, Lcom/facebook/contacts/service/AddressBookContactFetcher;->b:Lcom/facebook/contacts/data/ContactSerialization;

    .line 35
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/contacts/models/ContactBuilder;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 65
    .line 66
    iget-object v0, p0, Lcom/facebook/contacts/service/AddressBookContactFetcher;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const-string v4, "display_name"

    aput-object v4, v2, v6

    const-string v4, "lookup"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 77
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {p2, v0}, Lcom/facebook/contacts/models/ContactBuilder;->c(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/contacts/models/ContactBuilder;->i(Ljava/lang/String;)Lcom/facebook/contacts/models/ContactBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 87
    return-object v3

    .line 85
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<",
            "Lcom/facebook/contacts/models/entry/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    iget-object v0, p0, Lcom/facebook/contacts/service/AddressBookContactFetcher;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v5

    const-string v3, "data2"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 101
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    new-instance v3, Lcom/facebook/contacts/models/entry/PhoneEntry;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, v0, v2}, Lcom/facebook/contacts/models/entry/PhoneEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 109
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/contacts/models/Contact;
    .locals 3
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/facebook/contacts/models/ContactBuilder;

    invoke-direct {v0}, Lcom/facebook/contacts/models/ContactBuilder;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->g()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/facebook/contacts/service/AddressBookContactFetcher;->a(Ljava/lang/String;Lcom/facebook/contacts/models/ContactBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    sget-object v0, Lcom/facebook/contacts/models/Contact;->a:Lcom/facebook/contacts/models/Contact;

    .line 61
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/facebook/contacts/service/AddressBookContactFetcher;->a(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet$Builder;)V

    .line 57
    iget-object v2, p0, Lcom/facebook/contacts/service/AddressBookContactFetcher;->b:Lcom/facebook/contacts/data/ContactSerialization;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/contacts/data/ContactSerialization;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/contacts/models/EntrySection;

    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/models/ContactBuilder;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/contacts/models/ContactBuilder;

    .line 61
    invoke-virtual {v0}, Lcom/facebook/contacts/models/ContactBuilder;->m()Lcom/facebook/contacts/models/Contact;

    move-result-object v0

    goto :goto_0
.end method
