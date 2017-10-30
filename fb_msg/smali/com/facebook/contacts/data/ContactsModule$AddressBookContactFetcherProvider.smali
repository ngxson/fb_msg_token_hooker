.class Lcom/facebook/contacts/data/ContactsModule$AddressBookContactFetcherProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/service/AddressBookContactFetcher;",
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
    .line 250
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$AddressBookContactFetcherProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$AddressBookContactFetcherProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/service/AddressBookContactFetcher;
    .locals 3

    .prologue
    .line 255
    new-instance v1, Lcom/facebook/contacts/service/AddressBookContactFetcher;

    iget-object v0, p0, Lcom/facebook/contacts/data/ContactsModule$AddressBookContactFetcherProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-static {v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Lcom/facebook/contacts/data/ContactsModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-class v0, Lcom/facebook/contacts/data/ContactSerialization;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule$AddressBookContactFetcherProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/data/ContactSerialization;

    invoke-direct {v1, v2, v0}, Lcom/facebook/contacts/service/AddressBookContactFetcher;-><init>(Landroid/content/ContentResolver;Lcom/facebook/contacts/data/ContactSerialization;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$AddressBookContactFetcherProvider;->a()Lcom/facebook/contacts/service/AddressBookContactFetcher;

    move-result-object v0

    return-object v0
.end method
