.class public Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "MessagesContactPickerModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 66
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListPickerCacheProvider;

    invoke-direct {v1, p0, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListPickerCacheProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 70
    const-class v0, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$AddressBookPickerCacheProvider;

    invoke-direct {v1, p0, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$AddressBookPickerCacheProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 74
    const-class v0, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FavoriteContactsCacheProvider;

    invoke-direct {v1, p0, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FavoriteContactsCacheProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 78
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsFavoriteContactsEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/contacts/divebar/IsDivebarEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 82
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsDivebarEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/contacts/divebar/IsDivebarEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 86
    const-class v0, Lcom/facebook/orca/contacts/favorites/FavoritesEditListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FavoritesEditListAdapterProvider;

    invoke-direct {v1, p0, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FavoritesEditListAdapterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 90
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendFilterProvider;

    invoke-direct {v1, p0, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendFilterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 92
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerAddressBookFilterProvider;

    invoke-direct {v1, p0, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerAddressBookFilterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 94
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendsOfFriendsFilterProvider;

    invoke-direct {v1, p0, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendsOfFriendsFilterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 98
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForDivebarList;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$MergedContactPickerListFilterProvider;

    invoke-direct {v1, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$MergedContactPickerListFilterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 101
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForMergedComposer;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$MergedContactPickerListFilterProvider;

    invoke-direct {v1, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$MergedContactPickerListFilterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 104
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForFacebookList;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;

    invoke-direct {v1, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 107
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForAddressBook;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/contacts/picker/ContactPickerAddressBookFilter;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 110
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForFavoritePickerList;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendFilterProvider;

    invoke-direct {v1, p0, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerFriendFilterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 115
    const-class v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForFacebookList;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;

    const-class v2, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    const-class v3, Lcom/facebook/orca/annotations/ForFacebookList;

    invoke-static {v2, v3}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-direct {v1, p0, v2, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/google/inject/Key;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 119
    const-class v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForAddressBook;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;

    const-class v2, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    const-class v3, Lcom/facebook/orca/annotations/ForAddressBook;

    invoke-static {v2, v3}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-direct {v1, p0, v2, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/google/inject/Key;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 123
    const-class v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForFavoritePickerList;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;

    const-class v2, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    const-class v3, Lcom/facebook/orca/annotations/ForFavoritePickerList;

    invoke-static {v2, v3}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-direct {v1, p0, v2, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/google/inject/Key;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 127
    const-class v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForDivebarList;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;

    const-class v2, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    const-class v3, Lcom/facebook/orca/annotations/ForDivebarList;

    invoke-static {v2, v3}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-direct {v1, p0, v2, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/google/inject/Key;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 131
    const-class v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForMergedComposer;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;

    const-class v2, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    const-class v3, Lcom/facebook/orca/annotations/ForMergedComposer;

    invoke-static {v2, v3}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-direct {v1, p0, v2, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/google/inject/Key;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 137
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForFacebookList;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;

    new-instance v2, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    sget-object v3, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->TOP_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    sget-object v4, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->ONLINE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    sget-object v5, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->MOBILE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    invoke-static {v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-direct {v2, v3, v9, v8}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;-><init>(Ljava/util/EnumSet;IZ)V

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 143
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForDivebarList;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;

    new-instance v2, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    sget-object v3, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->FAVORITE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    sget-object v4, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->TOP_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    sget-object v5, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->ONLINE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    invoke-static {v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-direct {v2, v3, v9, v8}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;-><init>(Ljava/util/EnumSet;IZ)V

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 149
    const-class v0, Lcom/facebook/orca/contacts/picker/AddressBookLoader;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$AddressBookLoaderProvider;

    invoke-direct {v1, p0, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$AddressBookLoaderProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 152
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForFavoritePickerList;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;

    new-instance v2, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    sget-object v3, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->MOBILE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-direct {v2, v3, v7, v7}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;-><init>(Ljava/util/EnumSet;IZ)V

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 157
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForEditFavorites;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;

    new-instance v2, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    sget-object v3, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->FAVORITE_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    sget-object v4, Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;->TOP_FRIENDS:Lcom/facebook/orca/contacts/picker/FriendListsLoader$FriendLists;

    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-direct {v2, v3, v7, v7}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;-><init>(Ljava/util/EnumSet;IZ)V

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$FriendListsLoaderProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 163
    const-class v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$DivebarControllerProvider;

    invoke-direct {v1, p0, v6}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$DivebarControllerProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 165
    return-void
.end method
