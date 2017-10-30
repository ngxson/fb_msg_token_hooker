.class Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;
.super Ljava/lang/Object;
.source "OrcaSharedPreferencesContentProvider.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;

.field private b:I

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->c:Ljava/util/Set;

    .line 423
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->c:Ljava/util/Set;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->b:I

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;

    invoke-static {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 445
    iget v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->b:I

    .line 446
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;

    invoke-static {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 450
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;

    invoke-static {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 454
    iget v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->b:I

    .line 455
    return-void
.end method
