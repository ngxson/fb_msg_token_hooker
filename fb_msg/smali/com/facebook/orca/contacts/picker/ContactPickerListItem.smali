.class public Lcom/facebook/orca/contacts/picker/ContactPickerListItem;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ContactPickerListItem.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->b()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 90
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->c()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    if-ne v1, v2, :cond_1

    .line 91
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v1, v2, :cond_8

    .line 99
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    sget v0, Lcom/facebook/R$drawable;->orca_online_icon:I

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a(I)V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    sget v1, Lcom/facebook/R$string;->presence_active_now:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    :cond_0
    :goto_1
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->t()Lcom/facebook/common/util/TriState;

    move-result-object v1

    sget-object v2, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v1, v2, :cond_5

    .line 103
    sget v0, Lcom/facebook/R$drawable;->orca_mobile_icon:I

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a(I)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->c()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->ONE_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    if-ne v0, v1, :cond_3

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    sget v1, Lcom/facebook/R$string;->presence_mobile:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 121
    :cond_5
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->x()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 123
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 124
    :cond_6
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->w()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 125
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 130
    :cond_8
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_9

    .line 131
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/users/UserIdentifier;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 135
    :cond_9
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    sget v0, Lcom/facebook/R$layout;->orca_contact_picker_list_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->setContentView(I)V

    .line 54
    sget v0, Lcom/facebook/R$id;->contact_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/facebook/R$id;->contact_status:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/facebook/R$id;->contact_short_status:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/facebook/R$id;->contact_user_tile_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 58
    sget v0, Lcom/facebook/R$id;->contact_indicator:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcom/facebook/R$id;->contact_divider:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->f:Landroid/view/View;

    .line 60
    return-void
.end method


# virtual methods
.method public getContactRow()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    return-object v0
.end method

.method public setColorScheme(Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;)V
    .locals 4
    .parameter

    .prologue
    .line 63
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DEFAULT_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    if-ne p1, v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DIVEBAR_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    if-ne p1, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    sget v1, Lcom/facebook/R$drawable;->divebar_contact_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->f:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/facebook/R$color;->divebar_contact_divider:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a:Landroid/widget/TextView;

    sget v2, Lcom/facebook/R$color;->divebar_contact_name_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    sget v2, Lcom/facebook/R$color;->divebar_contact_status_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c:Landroid/widget/TextView;

    sget v2, Lcom/facebook/R$color;->divebar_contact_status_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setContactRow(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->g:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 82
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a()V

    .line 83
    return-void
.end method
