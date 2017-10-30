.class Lcom/facebook/contacts/data/ContactsModule$ContactsUserIteratorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/users/FacebookUserIterator;",
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
    .line 301
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$ContactsUserIteratorProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$ContactsUserIteratorProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/FacebookUserIterator;
    .locals 3

    .prologue
    .line 305
    const-class v0, Ljava/lang/Boolean;

    const-class v1, Lcom/facebook/contacts/annotations/IsRolodexPickerEnabled;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/contacts/data/ContactsModule$ContactsUserIteratorProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v2, Lcom/facebook/contacts/iterator/ContactsUserIterator;

    const-class v0, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule$ContactsUserIteratorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    const-class v1, Lcom/facebook/contacts/data/ContactSerialization;

    invoke-virtual {p0, v1}, Lcom/facebook/contacts/data/ContactsModule$ContactsUserIteratorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/contacts/data/ContactSerialization;

    invoke-direct {v2, v0, v1}, Lcom/facebook/contacts/iterator/ContactsUserIterator;-><init>(Lcom/facebook/contacts/data/ContactsDatabaseSupplier;Lcom/facebook/contacts/data/ContactSerialization;)V

    move-object v0, v2

    .line 312
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/facebook/orca/users/FacebookUserIterator;

    const-class v1, Lcom/facebook/orca/annotations/ForMessages;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/contacts/data/ContactsModule$ContactsUserIteratorProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$ContactsUserIteratorProvider;->a()Lcom/facebook/orca/users/FacebookUserIterator;

    move-result-object v0

    return-object v0
.end method
