.class public Lcom/facebook/contacts/contactcard/ContactCardFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ContactCardFragment.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private Y:Landroid/view/ViewGroup;

.field private Z:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

.field private aa:Landroid/view/ViewGroup;

.field private ab:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

.field private ac:Lcom/facebook/contacts/contactcard/MapSectionView;

.field private ad:Landroid/app/ProgressDialog;

.field private ae:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

.field private af:Lcom/facebook/contacts/models/Contact;

.field private ag:Z

.field private ah:Lcom/facebook/orca/threads/ThreadSummary;

.field private ai:Lcom/facebook/orca/threads/MessagesCollection;

.field private aj:Z

.field private ak:Z

.field private b:Lcom/facebook/orca/cache/DataCache;

.field private c:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

.field private d:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/orca/users/UserKey;

.field private f:Landroid/widget/Button;

.field private g:Lcom/facebook/contacts/contactcard/HeaderView;

.field private h:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private i:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/facebook/contacts/contactcard/ContactCardFragment;

    sput-object v0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->aj:Z

    .line 97
    iput-boolean v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ak:Z

    .line 102
    return-void
.end method

.method private H()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 337
    sget-object v0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating contact info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    sget-object v1, Lcom/facebook/contacts/models/Contact;->a:Lcom/facebook/contacts/models/Contact;

    if-ne v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->g:Lcom/facebook/contacts/contactcard/HeaderView;

    invoke-virtual {v0, v4}, Lcom/facebook/contacts/contactcard/HeaderView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_1

    .line 350
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->Y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 355
    :goto_1
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->aa:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 356
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/models/EntrySection;

    .line 357
    new-instance v2, Lcom/facebook/contacts/contactcard/EntrySectionView;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/contacts/contactcard/EntrySectionView;-><init>(Landroid/content/Context;)V

    .line 358
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/contactcard/EntrySectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v3, Lcom/facebook/contacts/contactcard/ContactCardFragment$3;

    invoke-direct {v3, p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment$3;-><init>(Lcom/facebook/contacts/contactcard/ContactCardFragment;)V

    invoke-virtual {v2, v3}, Lcom/facebook/contacts/contactcard/EntrySectionView;->setEntryListener(Lcom/facebook/contacts/contactcard/EntrySectionView$OnEntrySelectedListener;)V

    .line 368
    invoke-virtual {v2, v0}, Lcom/facebook/contacts/contactcard/EntrySectionView;->setEntrySection(Lcom/facebook/contacts/models/EntrySection;)V

    .line 369
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->aa:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->g:Lcom/facebook/contacts/contactcard/HeaderView;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/HeaderView;->setContact(Lcom/facebook/contacts/models/Contact;)V

    .line 344
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->g:Lcom/facebook/contacts/contactcard/HeaderView;

    invoke-virtual {v0, v3}, Lcom/facebook/contacts/contactcard/HeaderView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->Y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 371
    :cond_2
    return-void
.end method

.method private I()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 411
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 412
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    const-string v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v3, "phone"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    iput-boolean v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->aj:Z

    .line 418
    invoke-virtual {p0, v2}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Landroid/content/Intent;)V

    .line 419
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private J()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 514
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK_CONTACT:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v2, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 518
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v2, :cond_3

    .line 519
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    .line 526
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fb://profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 527
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 530
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 533
    const-string v2, "http://m.facebook.com/profile.php"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 534
    const-string v3, "id"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 535
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 538
    :goto_2
    iget-object v2, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ad:Landroid/app/ProgressDialog;

    if-nez v2, :cond_1

    .line 539
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ad:Landroid/app/ProgressDialog;

    .line 540
    iget-object v2, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ad:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 541
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ad:Landroid/app/ProgressDialog;

    sget v2, Lcom/facebook/R$string;->loading_timeline_message:I

    invoke-virtual {p0, v2}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ad:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 545
    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Landroid/content/Intent;)V

    .line 546
    return-void

    .line 514
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 521
    :cond_3
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/ContactCardFragment;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/ContactCardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->I()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/ContactCardFragment;Lcom/facebook/contacts/models/entry/Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/contacts/models/entry/Entry;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/ContactCardFragment;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/ContactCardFragment;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/contacts/models/entry/Entry;)V
    .locals 2
    .parameter

    .prologue
    .line 456
    sget-object v0, Lcom/facebook/contacts/contactcard/ContactCardFragment$5;->a:[I

    invoke-interface {p1}, Lcom/facebook/contacts/models/entry/Entry;->a()Lcom/facebook/contacts/models/entry/Entry$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/contacts/models/entry/Entry$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 469
    :goto_0
    return-void

    .line 458
    :pswitch_0
    check-cast p1, Lcom/facebook/contacts/models/entry/PhoneEntry;

    invoke-virtual {p1}, Lcom/facebook/contacts/models/entry/PhoneEntry;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :pswitch_1
    check-cast p1, Lcom/facebook/contacts/models/entry/EmailEntry;

    invoke-virtual {p1}, Lcom/facebook/contacts/models/entry/EmailEntry;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :pswitch_2
    check-cast p1, Lcom/facebook/contacts/models/entry/AddressEntry;

    invoke-virtual {p1}, Lcom/facebook/contacts/models/entry/AddressEntry;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 3
    .parameter

    .prologue
    .line 332
    sget-object v0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching contact failed, error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Z)V

    .line 334
    return-void
.end method

.method private a(Lcom/facebook/orca/server/DataFreshnessParam;)V
    .locals 4
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 431
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 432
    new-instance v0, Lcom/facebook/contacts/server/FetchContactParams;

    iget-object v2, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-direct {v0, p1, v2}, Lcom/facebook/contacts/server/FetchContactParams;-><init>(Lcom/facebook/orca/server/DataFreshnessParam;Lcom/facebook/orca/users/UserKey;)V

    .line 433
    const-string v2, "fetchContactParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 434
    iget-object v2, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->c:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v3, "fetch_contact"

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 440
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/contacts/contactcard/ContactCardFragment$4;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment$4;-><init>(Lcom/facebook/contacts/contactcard/ContactCardFragment;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 300
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/server/FetchContactResult;

    .line 301
    invoke-virtual {v0}, Lcom/facebook/contacts/server/FetchContactResult;->a()Lcom/facebook/contacts/models/Contact;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    .line 303
    sget-object v1, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetched contact successfully, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ae:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ae:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    invoke-interface {v1}, Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;->c()V

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->H()V

    .line 309
    invoke-virtual {v0}, Lcom/facebook/contacts/server/FetchContactResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v1, v2, :cond_2

    .line 310
    sget-object v0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a:Ljava/lang/Class;

    const-string v1, "Contact fetched from server, done."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, v4}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Z)V

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 312
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/contacts/server/FetchContactResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_INCOMPLETE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v0, v1, :cond_3

    .line 313
    sget-object v0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a:Ljava/lang/Class;

    const-string v1, "Got name from cached user, checking for new data..."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 316
    :cond_3
    sget-object v0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a:Ljava/lang/Class;

    const-string v1, "Checking server for new data..."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 322
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    invoke-direct {p0, v4}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 475
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 477
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.CALL_PHONE"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 480
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 483
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Landroid/content/Intent;)V

    .line 484
    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->h:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 400
    if-eqz p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->h:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    sget v1, Lcom/facebook/R$string;->contact_card_loading:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(I)V

    .line 402
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->h:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->h:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/contacts/contactcard/ContactCardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->J()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Landroid/content/Intent;)V

    .line 491
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 497
    :try_start_0
    const-string v1, "ISO-8859-1"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 501
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geo:0,0?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 502
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 504
    invoke-static {v0, v2}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0, v2}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Landroid/content/Intent;)V

    .line 507
    :cond_0
    return-void

    .line 498
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public E()V
    .locals 2

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ak:Z

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ag:Z

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ab:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ab:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a()V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ab:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->setVisibility(I)V

    goto :goto_0
.end method

.method F()V
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->aj:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    if-nez v0, :cond_2

    .line 387
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Z)V

    .line 388
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 389
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ae:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ae:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    invoke-interface {v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;->d()V

    .line 392
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->aj:Z

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_2
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->H()V

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    sget v0, Lcom/facebook/R$layout;->contacts_card_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const-string v0, "userKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    .line 131
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V
    .locals 1
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ae:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    .line 253
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ac:Lcom/facebook/contacts/contactcard/MapSectionView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ac:Lcom/facebook/contacts/contactcard/MapSectionView;

    invoke-virtual {v0, p1}, Lcom/facebook/contacts/contactcard/MapSectionView;->setContactCardListener(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V

    .line 255
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ab:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-virtual {v0, p1}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->setContactCardListener(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V

    .line 257
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ak:Z

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ah:Lcom/facebook/orca/threads/ThreadSummary;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ai:Lcom/facebook/orca/threads/MessagesCollection;

    if-eq p2, v0, :cond_0

    .line 286
    :cond_2
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ah:Lcom/facebook/orca/threads/ThreadSummary;

    .line 287
    iput-object p2, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ai:Lcom/facebook/orca/threads/MessagesCollection;

    .line 289
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->g:Lcom/facebook/contacts/contactcard/HeaderView;

    invoke-virtual {v0, p1}, Lcom/facebook/contacts/contactcard/HeaderView;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 291
    if-eqz p1, :cond_3

    .line 292
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ab:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->setThreadId(Ljava/lang/String;)V

    .line 294
    :cond_3
    if-eqz p2, :cond_0

    .line 295
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ac:Lcom/facebook/contacts/contactcard/MapSectionView;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0, p2, v1}, Lcom/facebook/contacts/contactcard/MapSectionView;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/users/UserKey;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/users/UserKey;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/users/UserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ag:Z

    if-ne p2, v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    .line 152
    iput-boolean p2, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ag:Z

    .line 154
    iget-boolean v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ak:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/DataCache;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_2

    .line 158
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/cache/DataCache;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 162
    :goto_1
    iget-object v3, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->g:Lcom/facebook/contacts/contactcard/HeaderView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/facebook/contacts/contactcard/HeaderView;->setVisibility(I)V

    .line 163
    iput-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    .line 169
    invoke-virtual {p0, v2, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 171
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->F()V

    .line 172
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->E()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    sget-object v1, Lcom/facebook/contacts/models/Contact;->a:Lcom/facebook/contacts/models/Contact;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->af:Lcom/facebook/contacts/models/Contact;

    invoke-virtual {v0}, Lcom/facebook/contacts/models/Contact;->h()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 273
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->aj:Z

    .line 276
    invoke-virtual {p0, v1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Landroid/content/Intent;)V

    .line 277
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 181
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->b:Lcom/facebook/orca/cache/DataCache;

    .line 182
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->c:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    .line 184
    sget v0, Lcom/facebook/R$id;->contact_card_add_contact:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f:Landroid/widget/Button;

    .line 185
    sget v0, Lcom/facebook/R$id;->contact_header_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/HeaderView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->g:Lcom/facebook/contacts/contactcard/HeaderView;

    .line 186
    sget v0, Lcom/facebook/R$id;->contact_card_empty_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->h:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 187
    sget v0, Lcom/facebook/R$id;->contact_card_content_wrapper:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->i:Landroid/view/ViewGroup;

    .line 188
    sget v0, Lcom/facebook/R$id;->conversation_settings_section:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ab:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    .line 189
    sget v0, Lcom/facebook/R$id;->contact_card_view_timeline_section:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->Y:Landroid/view/ViewGroup;

    .line 190
    sget v0, Lcom/facebook/R$id;->contact_card_view_timeline_row:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->Z:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    .line 191
    sget v0, Lcom/facebook/R$id;->entry_sections_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->aa:Landroid/view/ViewGroup;

    .line 192
    sget v0, Lcom/facebook/R$id;->map_section:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/MapSectionView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ac:Lcom/facebook/contacts/contactcard/MapSectionView;

    .line 193
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ae:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ac:Lcom/facebook/contacts/contactcard/MapSectionView;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ae:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/MapSectionView;->setContactCardListener(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V

    .line 195
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ab:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ae:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->setContactCardListener(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "User key is null!  Set it with setContactToDisplay()!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->h:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->m()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->f:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/contacts/contactcard/ContactCardFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment$1;-><init>(Lcom/facebook/contacts/contactcard/ContactCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->Z:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    sget v1, Lcom/facebook/R$string;->contact_card_view_timeline:I

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setLabelText(I)V

    .line 213
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->Z:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    new-instance v1, Lcom/facebook/contacts/contactcard/ContactCardFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment$2;-><init>(Lcom/facebook/contacts/contactcard/ContactCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ak:Z

    .line 221
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->b:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 222
    const/4 v0, 0x0

    .line 223
    if-eqz v1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/DataCache;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 226
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 227
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->e(Landroid/os/Bundle;)V

    .line 239
    const-string v0, "userKey"

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->e:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v1}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->f()V

    .line 245
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ad:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ad:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ContactCardFragment;->ad:Landroid/app/ProgressDialog;

    .line 249
    :cond_0
    return-void
.end method

.method public v()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->v()V

    .line 232
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->F()V

    .line 233
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->E()V

    .line 234
    return-void
.end method
