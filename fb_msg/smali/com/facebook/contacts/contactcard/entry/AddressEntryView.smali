.class public Lcom/facebook/contacts/contactcard/entry/AddressEntryView;
.super Lcom/facebook/contacts/contactcard/entry/EntryView;
.source "AddressEntryView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/contacts/contactcard/entry/EntryView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    sget v0, Lcom/facebook/R$string;->contact_address_type:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 21
    return-void
.end method

.method protected b(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/entry/AddressEntryView;->getEntry()Lcom/facebook/contacts/models/entry/Entry;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/models/entry/AddressEntry;

    .line 26
    invoke-virtual {v0}, Lcom/facebook/contacts/models/entry/AddressEntry;->b()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method
