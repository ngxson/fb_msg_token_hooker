.class public Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "FavoritesPickerFragment.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

.field private c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

.field private d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

.field private e:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

.field private f:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

.field private g:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

.field private h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;

    sput-object v0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->i:Ljava/util/List;

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->f:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->c(Lcom/google/common/collect/ImmutableList;)V

    .line 154
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->c()V

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->t()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->a(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->p()V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->t()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment$2;

    invoke-direct {v3, p0}, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment$2;-><init>(Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->a(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 143
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->i:Ljava/util/List;

    .line 166
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 168
    if-eqz v0, :cond_0

    .line 169
    iget-object v2, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->g:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 171
    new-instance v3, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    invoke-interface {v0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 179
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 79
    const-class v1, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    const-class v2, Lcom/facebook/orca/annotations/ForFavoritePickerList;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;)V

    .line 82
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;-><init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->e:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 61
    new-instance v0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment$1;-><init>(Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    .line 72
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 92
    const-class v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    .line 93
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->f:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    .line 94
    new-instance v0, Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/UserComparatorByName;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->g:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b()V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->f:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->i:Ljava/util/List;

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->c()V

    .line 107
    invoke-direct {p0}, Lcom/facebook/orca/contacts/favorites/FavoritesPickerFragment;->b()V

    .line 108
    return-void
.end method
