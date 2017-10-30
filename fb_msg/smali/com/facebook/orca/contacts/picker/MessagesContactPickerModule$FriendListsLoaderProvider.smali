.class Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesContactPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/picker/FriendListsLoader;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

.field final synthetic b:Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->b:Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->a:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    .line 346
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/picker/FriendListsLoader;
    .locals 12

    .prologue
    .line 350
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    const-class v3, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    const-class v4, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    const-class v5, Lcom/facebook/orca/users/FacebookUserIterator;

    const-class v6, Lcom/facebook/contacts/annotations/WithContacts;

    invoke-virtual {p0, v5, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v5

    const-class v6, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/presence/PresenceManager;

    const-class v7, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/facebook/orca/annotations/IsFavoriteContactsEnabled;

    invoke-virtual {p0, v8, v9}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v8

    const-class v9, Ljava/lang/Boolean;

    const-class v10, Lcom/facebook/orca/annotations/IsLastActiveEnabled;

    invoke-virtual {p0, v9, v10}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v9

    const-class v10, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v10}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    iget-object v11, p0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->a:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    invoke-direct/range {v0 .. v11}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;-><init>(Landroid/content/Context;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/contacts/picker/FriendListPickerCache;Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;Ljavax/inject/Provider;Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/ops/OrcaServiceOperationFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;->a()Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    move-result-object v0

    return-object v0
.end method
