.class public Lcom/facebook/contacts/iterator/ContactsUserIterator;
.super Ljava/lang/Object;
.source "ContactsUserIterator.java"

# interfaces
.implements Lcom/facebook/orca/users/FacebookUserIterator;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final e:[Ljava/lang/String;

.field private static final f:Lcom/google/common/base/CharMatcher;


# instance fields
.field private final b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

.field private final c:Lcom/facebook/contacts/data/ContactSerialization;

.field private d:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-class v0, Lcom/facebook/contacts/iterator/ContactsUserIterator;

    sput-object v0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->a:Ljava/lang/Class;

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "c.data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->e:[Ljava/lang/String;

    .line 44
    const-string v0, "0123456789+"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->f:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/contacts/data/ContactsDatabaseSupplier;Lcom/facebook/contacts/data/ContactSerialization;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    .line 50
    iput-object p2, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->c:Lcom/facebook/contacts/data/ContactSerialization;

    .line 51
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->a:Ljava/lang/Class;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->d:Landroid/database/Cursor;

    .line 58
    return-void
.end method

.method public a(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 61
    sget-object v0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTopFriends: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 63
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 64
    const-string v1, "contacts_indexed_data AS idx INNER JOIN contacts AS c ON idx.contact_id = c.contact_id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {v1}, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 67
    sget-object v2, Lcom/facebook/contacts/iterator/ContactsUserIterator;->e:[Ljava/lang/String;

    const-string v3, "idx.type = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "communication_rank"

    aput-object v7, v4, v6

    const-string v7, "CAST(idx.indexed_data AS NUMERIC) DESC"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->d:Landroid/database/Cursor;

    .line 79
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    sget-object v0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWithSearchRestrict: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 91
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 92
    const-string v1, "contacts_indexed_data AS idx INNER JOIN contacts AS c ON idx.contact_id = c.contact_id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 94
    const-string v1, "(idx.type = ? AND idx.indexed_data GLOB \'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {p1}, Lcom/facebook/orca/common/names/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 98
    const-string v1, "*\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 100
    sget-object v1, Lcom/facebook/contacts/iterator/ContactsUserIterator;->f:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, p1}, Lcom/google/common/base/CharMatcher;->retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 102
    const-string v2, "OR (idx.type IN "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 103
    sget-object v2, Lcom/facebook/contacts/data/ContactsDbSchemaPart;->a:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 104
    const-string v2, " AND idx.indexed_data GLOB \'"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 107
    const-string v1, "*\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {v1}, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 111
    sget-object v2, Lcom/facebook/contacts/iterator/ContactsUserIterator;->e:[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v4, v5

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->d:Landroid/database/Cursor;

    .line 119
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 122
    sget-object v0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWithUserKeyRestrict: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 125
    const-string v1, "contacts_indexed_data AS idx INNER JOIN contacts AS c ON idx.contact_id = c.contact_id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {v1}, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 129
    sget-object v2, Lcom/facebook/contacts/iterator/ContactsUserIterator;->e:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idx.type = ? AND idx.indexed_data IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/facebook/orca/users/UserKey;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "profile_fbid"

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->d:Landroid/database/Cursor;

    .line 137
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->a:Ljava/lang/Class;

    const-string v1, "initFavoriteFriends"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->d:Landroid/database/Cursor;

    .line 86
    return-void
.end method

.method public c()Lcom/facebook/orca/users/User;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->d:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 141
    sget-object v1, Lcom/facebook/contacts/iterator/ContactsUserIterator;->a:Ljava/lang/Class;

    const-string v2, "next: not initialized, skipping"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    sget-object v1, Lcom/facebook/contacts/iterator/ContactsUserIterator;->a:Ljava/lang/Class;

    const-string v2, "next: cursor empty"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->c:Lcom/facebook/contacts/data/ContactSerialization;

    iget-object v1, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->d:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/data/ContactSerialization;->a(Ljava/lang/String;)Lcom/facebook/contacts/models/Contact;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    .line 153
    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 154
    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    .line 159
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->c()Lcom/facebook/orca/users/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->g()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/users/UserBuilder;->a(F)Lcom/facebook/orca/users/UserBuilder;

    .line 167
    invoke-virtual {v1}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 168
    sget-object v1, Lcom/facebook/contacts/iterator/ContactsUserIterator;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK_CONTACT:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->a:Ljava/lang/Class;

    const-string v1, "closing"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/contacts/iterator/ContactsUserIterator;->d:Landroid/database/Cursor;

    .line 179
    :cond_0
    return-void
.end method
