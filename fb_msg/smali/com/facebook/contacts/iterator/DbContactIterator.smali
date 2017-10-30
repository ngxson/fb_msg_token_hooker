.class public Lcom/facebook/contacts/iterator/DbContactIterator;
.super Ljava/lang/Object;
.source "DbContactIterator.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/facebook/contacts/models/Contact;",
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
.field private final b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

.field private final c:Lcom/facebook/contacts/data/ContactSerialization;

.field private d:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/contacts/iterator/ContactsUserIterator;

    sput-object v0, Lcom/facebook/contacts/iterator/DbContactIterator;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/contacts/data/ContactsDatabaseSupplier;Lcom/facebook/contacts/data/ContactSerialization;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    .line 36
    iput-object p2, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->c:Lcom/facebook/contacts/data/ContactSerialization;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/models/Contact;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->d:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 56
    sget-object v1, Lcom/facebook/contacts/iterator/DbContactIterator;->a:Ljava/lang/Class;

    const-string v2, "next: not initialized, skipping"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->d:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    sget-object v1, Lcom/facebook/contacts/iterator/DbContactIterator;->a:Ljava/lang/Class;

    const-string v2, "next: cursor empty"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->c:Lcom/facebook/contacts/data/ContactSerialization;

    iget-object v2, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->d:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/contacts/data/ContactSerialization;->a(Ljava/lang/String;)Lcom/facebook/contacts/models/Contact;

    move-result-object v1

    .line 67
    sget-object v2, Lcom/facebook/contacts/iterator/DbContactIterator;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    sget-object v2, Lcom/facebook/contacts/iterator/DbContactIterator;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next: error deserializing contact: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Lcom/facebook/contacts/iterator/DbContactIteratorParams;)V
    .locals 8
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->a()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {v1}, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->d()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->d:Landroid/database/Cursor;

    .line 51
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/facebook/contacts/iterator/DbContactIterator;->a:Ljava/lang/Class;

    const-string v1, "closing"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->d:Landroid/database/Cursor;

    .line 93
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIterator;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/facebook/contacts/iterator/DbContactIterator;->a()Lcom/facebook/contacts/models/Contact;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DbContactIterator does not support remove()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
