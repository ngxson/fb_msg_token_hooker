.class public Lcom/facebook/contacts/contactcard/EntrySectionView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "EntrySectionView.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/facebook/contacts/contactcard/SectionView;

.field private d:Lcom/facebook/contacts/contactcard/EntrySectionView$OnEntrySelectedListener;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/contacts/contactcard/EntrySectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/contacts/contactcard/EntrySectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Lcom/facebook/contacts/contactcard/EntrySectionView$1;

    invoke-direct {v0, p0}, Lcom/facebook/contacts/contactcard/EntrySectionView$1;-><init>(Lcom/facebook/contacts/contactcard/EntrySectionView;)V

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->e:Landroid/view/View$OnClickListener;

    .line 60
    sget v0, Lcom/facebook/R$layout;->contacts_entry_section_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->setContentView(I)V

    .line 61
    sget v0, Lcom/facebook/R$id;->entry_section_root:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->a:Landroid/view/View;

    .line 62
    sget v0, Lcom/facebook/R$id;->entry_section_label:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->b:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/facebook/R$id;->entry_section_section_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/SectionView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->c:Lcom/facebook/contacts/contactcard/SectionView;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/EntrySectionView;)Lcom/facebook/contacts/contactcard/EntrySectionView$OnEntrySelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->d:Lcom/facebook/contacts/contactcard/EntrySectionView$OnEntrySelectedListener;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->c:Lcom/facebook/contacts/contactcard/SectionView;

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/SectionView;->b()V

    .line 82
    return-void
.end method

.method private a(Lcom/facebook/contacts/models/entry/Entry;)V
    .locals 3
    .parameter

    .prologue
    .line 87
    sget-object v0, Lcom/facebook/contacts/contactcard/EntrySectionView$2;->a:[I

    invoke-interface {p1}, Lcom/facebook/contacts/models/entry/Entry;->a()Lcom/facebook/contacts/models/entry/Entry$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/models/entry/Entry$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 89
    :pswitch_0
    new-instance v0, Lcom/facebook/contacts/contactcard/entry/PhoneEntryView;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/contacts/contactcard/entry/PhoneEntryView;-><init>(Landroid/content/Context;)V

    .line 103
    :goto_1
    invoke-virtual {v0, p1}, Lcom/facebook/contacts/contactcard/entry/EntryView;->setEntry(Lcom/facebook/contacts/models/entry/Entry;)V

    .line 104
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/entry/EntryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->c:Lcom/facebook/contacts/contactcard/SectionView;

    invoke-virtual {v1, v0}, Lcom/facebook/contacts/contactcard/SectionView;->a(Landroid/view/View;)V

    goto :goto_0

    .line 92
    :pswitch_1
    new-instance v0, Lcom/facebook/contacts/contactcard/entry/EmailEntryView;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/contacts/contactcard/entry/EmailEntryView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 95
    :pswitch_2
    new-instance v0, Lcom/facebook/contacts/contactcard/entry/AddressEntryView;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/contacts/contactcard/entry/AddressEntryView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 98
    :pswitch_3
    new-instance v0, Lcom/facebook/contacts/contactcard/entry/DefaultEntryView;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/contacts/contactcard/entry/DefaultEntryView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public setEntryListener(Lcom/facebook/contacts/contactcard/EntrySectionView$OnEntrySelectedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->d:Lcom/facebook/contacts/contactcard/EntrySectionView$OnEntrySelectedListener;

    .line 68
    return-void
.end method

.method public setEntrySection(Lcom/facebook/contacts/models/EntrySection;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/EntrySectionView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/contacts/models/EntrySection;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->a()V

    .line 74
    invoke-virtual {p1}, Lcom/facebook/contacts/models/EntrySection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/models/entry/Entry;

    .line 75
    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->a(Lcom/facebook/contacts/models/entry/Entry;)V

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method
