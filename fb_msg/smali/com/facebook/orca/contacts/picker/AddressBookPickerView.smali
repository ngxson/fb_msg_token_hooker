.class public Lcom/facebook/orca/contacts/picker/AddressBookPickerView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "AddressBookPickerView.java"


# instance fields
.field private a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

.field private b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

.field private c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 33
    const-class v1, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    .line 35
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-direct {v0, p1, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;-><init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    sget v1, Lcom/facebook/R$string;->name_or_phone_search_hint:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setSearchHint(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->addView(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView$1;-><init>(Lcom/facebook/orca/contacts/picker/AddressBookPickerView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setOnRowClickedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/AddressBookPickerView;Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 59
    instance-of v0, p1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v0, :cond_1

    .line 60
    check-cast p1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;->a(Lcom/facebook/orca/users/UserWithIdentifier;Z)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    instance-of v0, p1, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    if-eqz v0, :cond_2

    .line 67
    check-cast p1, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    .line 68
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a(I)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    new-instance v3, Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v5, v0}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 76
    new-instance v2, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;->a(Lcom/facebook/orca/users/UserWithIdentifier;Z)V

    goto :goto_0

    .line 79
    :cond_2
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e()V

    .line 92
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
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 100
    return-void
.end method

.method public getSearchBoxText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getSearchBoxText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContactPickerViewListener(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->c:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    .line 51
    return-void
.end method

.method public setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V

    .line 56
    return-void
.end method

.method public setSearchBoxText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AddressBookPickerView;->b:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setSearchBoxText(Ljava/lang/String;)V

    .line 88
    return-void
.end method
