.class Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/iterator/DbContactIterator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/contacts/data/ContactsModule;


# direct methods
.method private constructor <init>(Lcom/facebook/contacts/data/ContactsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/iterator/DbContactIterator;
    .locals 3

    .prologue
    .line 321
    new-instance v2, Lcom/facebook/contacts/iterator/DbContactIterator;

    const-class v0, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    const-class v1, Lcom/facebook/contacts/data/ContactSerialization;

    invoke-virtual {p0, v1}, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/contacts/data/ContactSerialization;

    invoke-direct {v2, v0, v1}, Lcom/facebook/contacts/iterator/DbContactIterator;-><init>(Lcom/facebook/contacts/data/ContactsDatabaseSupplier;Lcom/facebook/contacts/data/ContactSerialization;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorProvider;->a()Lcom/facebook/contacts/iterator/DbContactIterator;

    move-result-object v0

    return-object v0
.end method
