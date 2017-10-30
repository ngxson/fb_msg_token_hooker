.class public Lcom/facebook/contacts/contactcard/entry/PhoneEntryView;
.super Lcom/facebook/contacts/contactcard/entry/EntryView;
.source "PhoneEntryView.java"


# instance fields
.field private a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/contacts/contactcard/entry/EntryView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/facebook/contacts/contactcard/entry/EntryView;->a()V

    .line 27
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/entry/PhoneEntryView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 28
    const-class v1, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/entry/PhoneEntryView;->a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    .line 29
    return-void
.end method

.method protected a(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/entry/PhoneEntryView;->getEntry()Lcom/facebook/contacts/models/entry/Entry;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/models/entry/PhoneEntry;

    .line 35
    invoke-virtual {v0}, Lcom/facebook/contacts/models/entry/PhoneEntry;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 43
    sget v0, Lcom/facebook/R$string;->contact_phone_type_other:I

    .line 46
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 47
    return-void

    .line 37
    :pswitch_0
    sget v0, Lcom/facebook/R$string;->contact_phone_type_mobile:I

    goto :goto_0

    .line 40
    :pswitch_1
    sget v0, Lcom/facebook/R$string;->contact_phone_type_home:I

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/entry/PhoneEntryView;->getEntry()Lcom/facebook/contacts/models/entry/Entry;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/models/entry/PhoneEntry;

    .line 52
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/entry/PhoneEntryView;->a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v0}, Lcom/facebook/contacts/models/entry/PhoneEntry;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
