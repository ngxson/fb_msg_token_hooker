.class public Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;
.super Lcom/facebook/orca/common/names/NameLookupBuilder;
.source "DbInsertContactHandler.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const-class v0, Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;

    sput-object v0, Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/contacts/data/ContactsDatabaseSupplier;Lcom/facebook/orca/common/names/NameSplitter;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/names/NameLookupBuilder;-><init>(Lcom/facebook/orca/common/names/NameSplitter;)V

    .line 191
    iput-object p1, p0, Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;->b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    .line 192
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 198
    const-string v1, "type"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "contact_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "indexed_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v1, Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting name lookup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;->b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {v1}, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "contacts_indexed_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 206
    return-void
.end method

.method protected a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
