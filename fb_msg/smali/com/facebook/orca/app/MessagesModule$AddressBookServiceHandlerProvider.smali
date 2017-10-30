.class Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/users/AddressBookServiceHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1851
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1851
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/AddressBookServiceHandler;
    .locals 15

    .prologue
    .line 1855
    new-instance v0, Lcom/facebook/orca/users/AddressBookServiceHandler;

    const-class v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    const-class v3, Lcom/facebook/orca/protocol/methods/UpdateMessagingFavoritesMethod;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/protocol/methods/UpdateMessagingFavoritesMethod;

    const-class v4, Lcom/facebook/orca/protocol/methods/FetchMessagingFavoritesMethod;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/protocol/methods/FetchMessagingFavoritesMethod;

    const-class v5, Lcom/facebook/orca/protocol/methods/FetchLastActiveMethod;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/protocol/methods/FetchLastActiveMethod;

    const-class v6, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    const-class v7, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    const-class v8, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    const-class v9, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    invoke-virtual {p0, v9}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    const-class v10, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v10}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v11, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v11}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-class v12, Ljava/lang/Boolean;

    const-class v13, Lcom/facebook/orca/annotations/IsLastActiveEnabled;

    invoke-virtual {p0, v12, v13}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v12

    const-class v13, Ljava/lang/Boolean;

    const-class v14, Lcom/facebook/orca/annotations/IsFavoriteContactsEnabled;

    invoke-virtual {p0, v13, v14}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v13

    invoke-direct/range {v0 .. v13}, Lcom/facebook/orca/users/AddressBookServiceHandler;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/protocol/methods/GetFriendsMethod;Lcom/facebook/orca/protocol/methods/UpdateMessagingFavoritesMethod;Lcom/facebook/orca/protocol/methods/FetchMessagingFavoritesMethod;Lcom/facebook/orca/protocol/methods/FetchLastActiveMethod;Lcom/facebook/orca/database/DbInsertFriendUsersHandler;Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;->a()Lcom/facebook/orca/users/AddressBookServiceHandler;

    move-result-object v0

    return-object v0
.end method
