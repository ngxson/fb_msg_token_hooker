.class Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/data/DbInsertContactHandler;",
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
    .line 183
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/data/DbInsertContactHandler;
    .locals 6

    .prologue
    .line 187
    new-instance v0, Lcom/facebook/contacts/data/DbInsertContactHandler;

    const-class v1, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {p0, v1}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    const-class v2, Lcom/facebook/contacts/data/ContactSerialization;

    invoke-virtual {p0, v2}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/contacts/data/ContactSerialization;

    const-class v3, Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;

    invoke-virtual {p0, v3}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;

    const-class v4, Lcom/facebook/orca/common/names/NameSplitter;

    invoke-virtual {p0, v4}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/common/names/NameSplitter;

    const-class v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p0, v5}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/contacts/data/DbInsertContactHandler;-><init>(Lcom/facebook/contacts/data/ContactsDatabaseSupplier;Lcom/facebook/contacts/data/ContactSerialization;Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;Lcom/facebook/orca/common/names/NameSplitter;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerProvider;->a()Lcom/facebook/contacts/data/DbInsertContactHandler;

    move-result-object v0

    return-object v0
.end method
