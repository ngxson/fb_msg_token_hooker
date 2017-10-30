.class public Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "AddressBookPickerFragment.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerOperations;


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
.field private b:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

.field private c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

.field private d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

.field private e:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

.field private f:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

.field private g:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

.field private h:Z

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
    .line 31
    const-class v0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    sput-object v0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 46
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->i:Ljava/util/List;

    return-void
.end method

.method private E()V
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->t()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 131
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment$2;

    invoke-direct {v3, p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment$2;-><init>(Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->a(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 154
    return-void
.end method

.method private F()V
    .locals 7

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->b:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 179
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->h:Z

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 183
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 185
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 186
    new-instance v5, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    invoke-direct {v5}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;-><init>()V

    new-instance v6, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v6, v0, v1}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-virtual {v5, v6}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v1

    sget-object v5, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-virtual {v1, v5}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v1

    .line 190
    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 183
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 196
    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->i:Ljava/util/List;

    .line 164
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->F()V

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->t()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->a(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->p()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->a(Lcom/facebook/orca/contacts/picker/AddressBookLoader$Result;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 70
    const-class v1, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    const-class v2, Lcom/facebook/orca/annotations/ForAddressBook;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->g:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;)V

    .line 72
    new-instance v0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;-><init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->e:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->f:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment$1;-><init>(Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->g:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    .line 62
    return-void
.end method

.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->e:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 101
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->setSearchBoxText(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->h:Z

    if-eq p1, v0, :cond_0

    .line 90
    iput-boolean p1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->h:Z

    .line 91
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->F()V

    .line 93
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->getSearchBoxText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->c:Lcom/facebook/orca/contacts/picker/AddressBookPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->a()V

    .line 126
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 82
    new-instance v0, Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/UserComparatorByName;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->b:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->E()V

    .line 85
    return-void
.end method
