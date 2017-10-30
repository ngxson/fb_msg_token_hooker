.class public abstract Lcom/facebook/contacts/contactcard/entry/EntryView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "EntryView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/facebook/contacts/models/entry/Entry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/entry/EntryView;->a()V

    .line 25
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 28
    sget v0, Lcom/facebook/R$layout;->contacts_entry_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/EntryView;->setContentView(I)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/EntryView;->setClickable(Z)V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 32
    sget v0, Lcom/facebook/R$drawable;->orca_item_background_holo_light:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/EntryView;->setBackgroundResource(I)V

    .line 37
    :goto_0
    sget v0, Lcom/facebook/R$id;->item_value:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/EntryView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/entry/EntryView;->b:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/facebook/R$id;->item_label:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/EntryView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/entry/EntryView;->a:Landroid/widget/TextView;

    .line 39
    return-void

    .line 34
    :cond_0
    const v0, 0x1080062

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/EntryView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/widget/TextView;)V
.end method

.method protected abstract b(Landroid/widget/TextView;)V
.end method

.method public getEntry()Lcom/facebook/contacts/models/entry/Entry;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/entry/EntryView;->c:Lcom/facebook/contacts/models/entry/Entry;

    return-object v0
.end method

.method public setEntry(Lcom/facebook/contacts/models/entry/Entry;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/entry/EntryView;->c:Lcom/facebook/contacts/models/entry/Entry;

    .line 43
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/entry/EntryView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/EntryView;->a(Landroid/widget/TextView;)V

    .line 44
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/entry/EntryView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/EntryView;->b(Landroid/widget/TextView;)V

    .line 45
    return-void
.end method
