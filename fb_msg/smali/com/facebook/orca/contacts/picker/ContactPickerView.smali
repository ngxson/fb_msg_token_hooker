.class public Lcom/facebook/orca/contacts/picker/ContactPickerView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ContactPickerView.java"


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Landroid/widget/ListView;

.field private c:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

.field private d:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

.field private e:Landroid/view/View;

.field private f:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/ViewGroup;

.field private l:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

.field private m:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;

.field private n:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerView;

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    sget v0, Lcom/facebook/R$layout;->orca_contact_picker_view:I

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;-><init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 76
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->NONE:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    .line 88
    invoke-virtual {p0, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setContentView(I)V

    .line 89
    invoke-direct {p0, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V

    .line 90
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b:Ljava/lang/Class;

    const-string v2, "Empty search"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 320
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->UNFILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    .line 321
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g()V

    .line 322
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(I)V

    .line 324
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FINISHED:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V

    .line 330
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b:Ljava/lang/Class;

    const-string v3, "Performing filtering"

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 327
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERING:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    .line 328
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 268
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 271
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 273
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 305
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FILTERING:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    if-ne p1, v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    .line 113
    sget v0, Lcom/facebook/R$id;->friends_list:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    .line 114
    sget v0, Lcom/facebook/R$id;->friends_list_empty_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 115
    sget v0, Lcom/facebook/R$id;->friends_list_mask:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/view/View;

    .line 116
    sget v0, Lcom/facebook/R$id;->friends_list_search:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    .line 117
    sget v0, Lcom/facebook/R$id;->contact_picker_search_section:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->k:Landroid/view/ViewGroup;

    .line 118
    sget v0, Lcom/facebook/R$id;->dummy_focus_elt:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    .line 119
    sget v0, Lcom/facebook/R$id;->contact_picker_search_magnifier:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->i:Landroid/widget/ImageView;

    .line 120
    sget v0, Lcom/facebook/R$id;->contact_picker_search_progress:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->j:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    instance-of v0, v0, Lcom/facebook/widget/BetterListView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    check-cast v0, Lcom/facebook/widget/BetterListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setBroadcastInteractionChanges(Z)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 141
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$2;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$3;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$4;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$5;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c()V

    .line 178
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerView$6;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$6;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->d:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$7;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 336
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 338
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 339
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/ContactPickerView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 289
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b:Ljava/lang/Class;

    const-string v1, "Filtering complete"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 293
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->UNFILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    .line 301
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g()V

    .line 302
    return-void

    .line 294
    :cond_0
    if-nez p1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 296
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 299
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/ContactPickerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0, p1}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 374
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->m:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->m:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;->a(Lcom/facebook/orca/contacts/picker/ContactPickerRow;)V

    .line 377
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/contacts/picker/ContactPickerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b(I)V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 353
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 363
    :goto_0
    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    :goto_1
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    sget-object v3, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERING:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    if-ne v0, v3, :cond_1

    move v0, v2

    .line 356
    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    sget-object v3, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 358
    goto :goto_0

    :cond_2
    move v0, v2

    .line 360
    goto :goto_0

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V
    .locals 1
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    .line 346
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->l:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->l:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    .line 349
    :cond_0
    return-void
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
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
    .line 226
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0, p1}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 227
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    sget v1, Lcom/facebook/R$string;->contact_picker_no_results:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(I)V

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->NONE:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    if-eq v0, v1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a()V

    .line 234
    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerView;->b:Ljava/lang/Class;

    const-string v3, "Search box focus changed: %d"

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    if-nez p1, :cond_2

    .line 278
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->NONE:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->c:Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    invoke-interface {v0}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->e()V

    .line 285
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g()V

    .line 286
    return-void

    :cond_1
    move v0, v1

    .line 276
    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->NONE:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    if-ne v0, v1, :cond_0

    .line 282
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->UNFILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;)V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    sget v1, Lcom/facebook/R$string;->contacts_loading:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(I)V

    .line 239
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->f:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 240
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERED:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;->FILTERING:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->n:Lcom/facebook/orca/contacts/picker/ContactPickerViewFilterState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/facebook/widget/CustomViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 255
    if-eqz v0, :cond_0

    .line 264
    :goto_0
    return v0

    .line 258
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 259
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 262
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 390
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 391
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 398
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->setSearchBoxText(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 402
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 404
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 405
    return-void
.end method

.method public getListViewDimensions()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getSearchBoxText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$dimen;->title_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 410
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 411
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 412
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    return-void
.end method

.method public setOnFilterStateChangedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->l:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnFilterStateChangedListener;

    .line 209
    return-void
.end method

.method public setOnRowClickedListener(Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->m:Lcom/facebook/orca/contacts/picker/ContactPickerView$OnRowClickedListener;

    .line 218
    return-void
.end method

.method public setSearchBoxText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 386
    return-void
.end method

.method public setSearchHint(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerView;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method
