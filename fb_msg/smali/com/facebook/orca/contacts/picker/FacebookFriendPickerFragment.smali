.class public Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "FacebookFriendPickerFragment.java"

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
.field private Y:Lcom/facebook/orca/users/LastActiveHelper;

.field private Z:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

.field private ac:Z

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

.field private c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

.field private d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

.field private e:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

.field private f:Lcom/facebook/orca/presence/PresenceManager;

.field private g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

.field private h:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

.field private i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;

    sput-object v0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    return-void
.end method

.method private E()Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment$2;-><init>(Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;)V

    return-object v0
.end method

.method private F()V
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->t()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 186
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->E()Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->a(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 191
    return-void
.end method

.method private H()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 231
    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ad:Ljava/util/List;

    .line 232
    iget-object v6, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ae:Ljava/util/List;

    .line 233
    iget-object v7, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->af:Ljava/util/List;

    .line 235
    if-nez v5, :cond_0

    .line 236
    sget-object v0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->a:Ljava/lang/Class;

    const-string v1, "Not updating list b/c friends aren\'t yet loaded."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v8

    .line 241
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v9

    .line 243
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ac:Z

    if-eqz v0, :cond_1

    .line 244
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-virtual {v8, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :cond_1
    move v4, v3

    move v1, v3

    .line 248
    :goto_1
    const/16 v0, 0xf

    if-ge v4, v0, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 249
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 250
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 248
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 253
    :cond_2
    if-nez v1, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v10, Lcom/facebook/R$string;->topfriends_section_title:I

    invoke-virtual {v1, v10}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    new-instance v10, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    invoke-direct {v10, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move v1, v2

    .line 260
    :cond_3
    new-instance v10, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 262
    invoke-direct {p0, v10}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 263
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    :cond_4
    if-eqz v6, :cond_7

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->h:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 269
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v3

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 270
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 273
    if-nez v1, :cond_6

    .line 274
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v5, Lcom/facebook/R$string;->contact_picker_more_online_friends_header:I

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    new-instance v5, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    invoke-direct {v5, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move v1, v2

    .line 279
    :cond_6
    new-instance v5, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 282
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;-><init>()V

    invoke-virtual {v0, v5}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    sget-object v5, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->ONE_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->b(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v0

    .line 289
    invoke-virtual {v8, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_3

    .line 293
    :cond_7
    if-eqz v7, :cond_a

    .line 294
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->h:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 296
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v3

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 297
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 300
    if-nez v1, :cond_9

    .line 301
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v5, Lcom/facebook/R$string;->contact_picker_more_mobile_friends_header:I

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v5, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    invoke-direct {v5, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move v1, v2

    .line 307
    :cond_9
    new-instance v5, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    invoke-direct {v5}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;-><init>()V

    new-instance v6, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-virtual {v5, v6}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v5

    sget-object v6, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->ONE_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->b(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v5

    .line 314
    invoke-virtual {v8, v5}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 315
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 319
    :cond_a
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a(Lcom/google/common/collect/ImmutableList;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;
    .locals 5
    .parameter

    .prologue
    .line 325
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserWithIdentifier;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->f:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/users/UserKey;)Z

    move-result v1

    .line 327
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v2

    .line 328
    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->f:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceState;

    move-result-object v3

    .line 330
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    sget-object v4, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->b(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->Y:Lcom/facebook/orca/users/LastActiveHelper;

    sget-object v4, Lcom/facebook/orca/users/LastActiveHelper$LastActiveFormat;->VERBOSE:Lcom/facebook/orca/users/LastActiveHelper$LastActiveFormat;

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/users/LastActiveHelper;->a(Lcom/facebook/orca/users/LastActive;Lcom/facebook/orca/presence/PresenceState;Lcom/facebook/orca/users/LastActiveHelper$LastActiveFormat;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    move-result-object v0

    .line 339
    return-object v0

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 194
    if-nez p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 203
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ad:Ljava/util/List;

    move v0, v1

    .line 207
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ae:Ljava/util/List;

    move v0, v1

    .line 212
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 213
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->af:Ljava/util/List;

    .line 217
    :goto_2
    if-eqz v1, :cond_3

    .line 218
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->H()V

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ad:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ae:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->t()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->a(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->p()V

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 88
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsDivebarEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->Z:Ljavax/inject/Provider;

    .line 89
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->aa:Ljavax/inject/Provider;

    .line 90
    const-class v2, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->Z:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->aa:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/facebook/orca/annotations/ForDivebarList;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ab:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;)V

    .line 94
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->d:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;-><init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->e:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    return-object v0

    .line 90
    :cond_0
    const-class v0, Lcom/facebook/orca/annotations/ForFacebookList;

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment$1;-><init>(Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ab:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    .line 81
    return-void
.end method

.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->e:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 165
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->setSearchBoxText(Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ac:Z

    .line 157
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->getSearchBoxText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->c:Lcom/facebook/orca/contacts/picker/FriendListPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a()V

    .line 182
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 104
    const-class v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    .line 105
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->f:Lcom/facebook/orca/presence/PresenceManager;

    .line 106
    const-class v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    .line 107
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsLastActiveEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->i:Ljavax/inject/Provider;

    .line 108
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/users/LastActiveHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/LastActiveHelper;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->Y:Lcom/facebook/orca/users/LastActiveHelper;

    .line 110
    new-instance v0, Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/UserComparatorByName;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->h:Lcom/facebook/orca/contacts/picker/UserComparatorByName;

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->b:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b()V

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ad:Ljava/util/List;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->ae:Ljava/util/List;

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->H()V

    .line 128
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;->F()V

    .line 129
    return-void
.end method
