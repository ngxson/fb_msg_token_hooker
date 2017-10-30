.class Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/service/ContactsServiceHandler;",
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
    .line 262
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/service/ContactsServiceHandler;
    .locals 10

    .prologue
    .line 266
    new-instance v0, Lcom/facebook/contacts/service/ContactsServiceHandler;

    const-class v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v1}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    const-class v2, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;

    invoke-virtual {p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;

    const-class v3, Lcom/facebook/contacts/protocol/FetchContactFQLMethod;

    invoke-virtual {p0, v3}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/contacts/protocol/FetchContactFQLMethod;

    const-class v4, Lcom/facebook/contacts/service/AddressBookContactFetcher;

    invoke-virtual {p0, v4}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/contacts/service/AddressBookContactFetcher;

    const-class v5, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v5}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/cache/DataCache;

    const-class v6, Lcom/facebook/contacts/cache/ContactsCache;

    invoke-virtual {p0, v6}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/contacts/cache/ContactsCache;

    const-class v7, Lcom/facebook/contacts/data/DbFetchContactHandler;

    invoke-virtual {p0, v7}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/contacts/data/DbFetchContactHandler;

    const-class v8, Lcom/facebook/contacts/data/DbInsertContactHandler;

    invoke-virtual {p0, v8}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/contacts/data/DbInsertContactHandler;

    const-class v9, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v9}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/contacts/service/ContactsServiceHandler;-><init>(Ljavax/inject/Provider;Lcom/facebook/contacts/protocol/FetchAllContactsMethod;Lcom/facebook/contacts/protocol/FetchContactFQLMethod;Lcom/facebook/contacts/service/AddressBookContactFetcher;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/contacts/cache/ContactsCache;Lcom/facebook/contacts/data/DbFetchContactHandler;Lcom/facebook/contacts/data/DbInsertContactHandler;Lcom/facebook/orca/app/OrcaActivityBroadcaster;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;->a()Lcom/facebook/contacts/service/ContactsServiceHandler;

    move-result-object v0

    return-object v0
.end method
