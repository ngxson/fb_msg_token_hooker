.class public Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "LabelValueRowView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->a()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->a()V

    .line 28
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 31
    sget v0, Lcom/facebook/R$layout;->contacts_entry_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setContentView(I)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setClickable(Z)V

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 35
    sget v0, Lcom/facebook/R$drawable;->orca_item_background_holo_light:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setBackgroundResource(I)V

    .line 40
    :goto_0
    sget v0, Lcom/facebook/R$id;->item_value:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->b:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/facebook/R$id;->item_label:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->a:Landroid/widget/TextView;

    .line 42
    return-void

    .line 37
    :cond_0
    const v0, 0x1080062

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public setLabelText(I)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public setValueText(I)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void
.end method

.method public setValueText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
