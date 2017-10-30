.class Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerContactNameLookupBuilderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;",
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
    .line 197
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerContactNameLookupBuilderProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerContactNameLookupBuilderProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;
    .locals 3

    .prologue
    .line 202
    new-instance v2, Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;

    const-class v0, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerContactNameLookupBuilderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    const-class v1, Lcom/facebook/orca/common/names/NameSplitter;

    invoke-virtual {p0, v1}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerContactNameLookupBuilderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/names/NameSplitter;

    invoke-direct {v2, v0, v1}, Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;-><init>(Lcom/facebook/contacts/data/ContactsDatabaseSupplier;Lcom/facebook/orca/common/names/NameSplitter;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerContactNameLookupBuilderProvider;->a()Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;

    move-result-object v0

    return-object v0
.end method
