.class public Lcom/facebook/contacts/contactcard/entry/TextRowView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "TextRowView.java"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/contacts/contactcard/entry/TextRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/contacts/contactcard/entry/TextRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget v0, Lcom/facebook/R$layout;->contacts_text_row_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/TextRowView;->setContentView(I)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/TextRowView;->setClickable(Z)V

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 34
    sget v0, Lcom/facebook/R$drawable;->orca_item_background_holo_light:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/TextRowView;->setBackgroundResource(I)V

    .line 39
    :goto_0
    sget v0, Lcom/facebook/R$id;->item_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/TextRowView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/entry/TextRowView;->a:Landroid/widget/TextView;

    .line 40
    return-void

    .line 36
    :cond_0
    const v0, 0x1080062

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/TextRowView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/entry/TextRowView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method
