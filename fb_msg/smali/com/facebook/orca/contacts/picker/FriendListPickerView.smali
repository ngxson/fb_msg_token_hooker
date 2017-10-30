.class public Lcom/facebook/orca/contacts/picker/FriendListPickerView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "FriendListPickerView.java"


# instance fields
.field private final a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

.field private b:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-direct {v0, p1, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;-><init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    .line 27
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    sget v1, Lcom/facebook/R$string;->name_search_hint:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setSearchHint(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->addView(Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/FriendListPickerView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/FriendListPickerView$1;-><init>(Lcom/facebook/orca/contacts/picker/FriendListPickerView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setOnRowClickedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;)V

    .line 37
    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 3
    .parameter

    .prologue
    .line 53
    instance-of v0, p1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v0, :cond_1

    .line 54
    check-cast p1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;->a(Lcom/facebook/orca/users/UserWithIdentifier;Z)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/FriendListPickerView;Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e()V

    .line 77
    return-void
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 81
    return-void
.end method

.method public getSearchBoxText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getSearchBoxText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    .line 45
    return-void
.end method

.method public setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V

    .line 50
    return-void
.end method

.method public setSearchBoxText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListPickerView;->a:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setSearchBoxText(Ljava/lang/String;)V

    .line 69
    return-void
.end method
