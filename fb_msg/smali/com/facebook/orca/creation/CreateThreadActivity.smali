.class public Lcom/facebook/orca/creation/CreateThreadActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "CreateThreadActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field private static final u:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private B:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

.field private C:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

.field private D:Lcom/facebook/orca/compose/LocationNuxController;

.field private E:Lcom/facebook/orca/compose/LocationNuxView;

.field private F:Lcom/facebook/orca/compose/LocationDisabledNuxView;

.field private G:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private H:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private I:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

.field private J:Lcom/facebook/orca/compose/ComposeFragment;

.field private K:Lcom/facebook/orca/threadview/ThreadViewUtil;

.field private L:Lcom/facebook/orca/threads/Message;

.field private M:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

.field n:Z

.field o:Z

.field private v:Landroid/support/v4/app/FragmentManager;

.field private w:Lcom/facebook/orca/cache/SendMessageManager;

.field private x:Lcom/facebook/orca/cache/DataCache;

.field private y:Lcom/facebook/orca/presence/PresenceManager;

.field private z:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/facebook/orca/creation/CreateThreadActivity;

    sput-object v0, Lcom/facebook/orca/creation/CreateThreadActivity;->u:Ljava/lang/Class;

    .line 112
    const/4 v0, 0x0

    sput v0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:I

    .line 113
    const/4 v0, 0x1

    sput v0, Lcom/facebook/orca/creation/CreateThreadActivity;->q:I

    .line 114
    const/4 v0, 0x2

    sput v0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:I

    .line 118
    const-string v0, "trigger"

    sput-object v0, Lcom/facebook/orca/creation/CreateThreadActivity;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 410
    sget-object v0, Lcom/facebook/orca/creation/CreateThreadActivity;->u:Ljava/lang/Class;

    const-string v1, "onContactPickerFocusChanged"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 412
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 413
    :goto_0
    if-eqz v0, :cond_0

    .line 414
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->I:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->u()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 415
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->n()V

    .line 423
    :cond_0
    :goto_1
    return-void

    .line 412
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 417
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/compose/ComposeFragment;->u()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 418
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->p()V

    goto :goto_1

    .line 421
    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->q()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->r()V

    .line 563
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 527
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 528
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_0

    .line 530
    invoke-direct {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->r()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 3
    .parameter

    .prologue
    .line 538
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->c(Ljava/lang/String;)V

    .line 541
    new-instance v1, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->L:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessageBuilder;->v()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 546
    iget-object v2, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->w:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    .line 548
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->K:Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v2}, Lcom/facebook/orca/threadview/ThreadViewUtil;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->startActivity(Landroid/content/Intent;)V

    .line 553
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->setResult(I)V

    .line 555
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->finish()V

    .line 556
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/creation/CreateThreadActivity;)Lcom/facebook/orca/presence/PresenceManager;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->y:Lcom/facebook/orca/presence/PresenceManager;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 584
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->send_failed_error:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 588
    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter

    .prologue
    .line 567
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->setResult(I)V

    .line 569
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->finish()V

    .line 572
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 573
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->c(Ljava/lang/String;)V

    .line 577
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->K:Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v2}, Lcom/facebook/orca/threadview/ThreadViewUtil;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    invoke-virtual {p0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->startActivity(Landroid/content/Intent;)V

    .line 580
    sget v0, Lcom/facebook/R$anim;->activity_close_enter:I

    sget v1, Lcom/facebook/R$anim;->activity_close_exit:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->overridePendingTransition(II)V

    .line 581
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/creation/CreateThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->k()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/creation/CreateThreadActivity;)Lcom/facebook/orca/compose/ComposeFragment;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    return-object v0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->z:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private j()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->N:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/facebook/orca/creation/CreateThreadActivity$5;

    invoke-direct {v0, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$5;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->N:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->N:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    .line 289
    const-string v0, ""

    .line 291
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 293
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->I:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->c()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v1

    if-nez v1, :cond_0

    .line 295
    const-class v1, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    const-class v2, Lcom/facebook/orca/annotations/ForMergedComposer;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    .line 297
    sget v1, Lcom/facebook/R$string;->name_or_phone_search_hint:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 309
    :goto_0
    invoke-interface {v1}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->j()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;)V

    .line 310
    iget-object v2, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->I:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V

    .line 311
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->I:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Ljava/lang/String;)V

    .line 312
    return-void

    .line 299
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Z

    if-eqz v1, :cond_1

    .line 300
    const-class v1, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    const-class v2, Lcom/facebook/orca/annotations/ForAddressBook;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    .line 302
    sget v1, Lcom/facebook/R$string;->name_or_phone_search_hint:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 304
    :cond_1
    const-class v1, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    const-class v2, Lcom/facebook/orca/annotations/ForFacebookList;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    .line 306
    sget v1, Lcom/facebook/R$string;->name_search_hint:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->I:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    new-instance v1, Lcom/facebook/orca/creation/CreateThreadActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$6;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFragment$OnPrimaryContactTypeChangedListener;)V

    .line 328
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Z

    if-nez v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->I:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 430
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 431
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->D:Lcom/facebook/orca/compose/LocationNuxController;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 432
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->C:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Z

    .line 434
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->B:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->requestLayout()V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Z

    if-eqz v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Z

    .line 442
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    iget-boolean v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Z

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Z)V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Z

    if-eqz v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 450
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->I:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 451
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->D:Lcom/facebook/orca/compose/LocationNuxController;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 452
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->C:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Z

    .line 454
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->B:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->requestLayout()V

    goto :goto_0
.end method

.method private q()V
    .locals 5

    .prologue
    .line 458
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->H:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->G:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->I:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->M:Lcom/google/common/collect/ImmutableList;

    .line 465
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->M:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->create_thread_no_recipients:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->send_empty_message:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 479
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->E()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->L:Lcom/facebook/orca/threads/Message;

    .line 480
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->D:Lcom/facebook/orca/compose/LocationNuxController;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/LocationNuxController;->a()V

    .line 482
    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->M:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 485
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->M:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    .line 486
    invoke-virtual {v0}, Lcom/facebook/orca/users/PickedUser;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    .line 487
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 488
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->t()Lcom/facebook/common/util/TriState;

    move-result-object v3

    sget-object v4, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v3, v4, :cond_4

    .line 489
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    .line 496
    :goto_1
    if-eqz v0, :cond_6

    .line 497
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->x:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 499
    if-eqz v1, :cond_5

    .line 500
    invoke-direct {p0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 490
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/orca/users/PickedUser;->c()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    if-nez v0, :cond_7

    .line 491
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    goto :goto_1

    .line 502
    :cond_5
    new-instance v1, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 506
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 507
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 508
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->G:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 511
    :cond_6
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->r()V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method private r()V
    .locals 4

    .prologue
    .line 516
    new-instance v0, Lcom/facebook/orca/server/CreateThreadParams;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->L:Lcom/facebook/orca/threads/Message;

    iget-object v3, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->M:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/server/CreateThreadParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Ljava/util/List;)V

    .line 518
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 519
    const-string v2, "createThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 520
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->H:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "create_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 521
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 129
    sget v0, Lcom/facebook/R$layout;->orca_create_thread:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 132
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->v:Landroid/support/v4/app/FragmentManager;

    .line 133
    const-class v0, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/SendMessageManager;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->w:Lcom/facebook/orca/cache/SendMessageManager;

    .line 134
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->x:Lcom/facebook/orca/cache/DataCache;

    .line 135
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->y:Lcom/facebook/orca/presence/PresenceManager;

    .line 136
    const-class v0, Ljava/lang/Boolean;

    const-class v3, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {v1, v0, v3}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->z:Ljavax/inject/Provider;

    .line 137
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->A:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 139
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewUtil;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->K:Lcom/facebook/orca/threadview/ThreadViewUtil;

    .line 141
    sget v0, Lcom/facebook/R$id;->create_thread_overlay_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->B:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    .line 142
    sget v0, Lcom/facebook/R$id;->compose_location_nux:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/LocationNuxView;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->E:Lcom/facebook/orca/compose/LocationNuxView;

    .line 143
    sget v0, Lcom/facebook/R$id;->compose_location_disabled_nux:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/LocationDisabledNuxView;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->F:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    .line 144
    sget v0, Lcom/facebook/R$id;->create_thread_layout:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->C:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    .line 146
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 148
    new-instance v3, Lcom/facebook/orca/compose/LocationNuxController;

    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-direct {v3, v0}, Lcom/facebook/orca/compose/LocationNuxController;-><init>(Lcom/facebook/orca/prefs/UiCounters;)V

    iput-object v3, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->D:Lcom/facebook/orca/compose/LocationNuxController;

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->D:Lcom/facebook/orca/compose/LocationNuxController;

    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->E:Lcom/facebook/orca/compose/LocationNuxView;

    iget-object v3, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->F:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/LocationNuxView;Lcom/facebook/orca/compose/LocationDisabledNuxView;)V

    .line 151
    sget v0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:I

    .line 153
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 154
    if-nez p1, :cond_8

    .line 155
    const-string v0, "to"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 156
    instance-of v1, v0, Lcom/facebook/orca/users/UserWithIdentifier;

    if-eqz v1, :cond_5

    .line 157
    new-instance v1, Lcom/facebook/orca/users/PickedUser;

    check-cast v0, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    move-object v0, v1

    .line 161
    :goto_0
    const-string v1, "threadType"

    sget v2, Lcom/facebook/orca/creation/CreateThreadActivity;->p:I

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object v2, v0

    .line 164
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v4, Lcom/facebook/orca/creation/CreateThreadActivity$1;

    invoke-direct {v4, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$1;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 172
    const-string v0, "fetchCanonicalThread"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->G:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->G:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v4, Lcom/facebook/orca/creation/CreateThreadActivity$2;

    invoke-direct {v4, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$2;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v4}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->G:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v4, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v5, Lcom/facebook/R$string;->create_thread_progress:I

    invoke-direct {v4, p0, v5}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 189
    const-string v0, "createThreadUiOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->H:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->H:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v4, Lcom/facebook/orca/creation/CreateThreadActivity$3;

    invoke-direct {v4, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$3;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v4}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->H:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v4, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v5, Lcom/facebook/R$string;->create_thread_progress:I

    invoke-direct {v4, p0, v5}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->v:Landroid/support/v4/app/FragmentManager;

    sget v4, Lcom/facebook/R$id;->create_thread_contact_picker:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->I:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->v:Landroid/support/v4/app/FragmentManager;

    sget v4, Lcom/facebook/R$id;->create_thread_compose:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/ComposeFragment;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    .line 209
    if-eqz v2, :cond_6

    .line 210
    invoke-virtual {v2}, Lcom/facebook/orca/users/PickedUser;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->d()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v0, v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->o()V

    .line 219
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->m()V

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->k()V

    .line 225
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->D:Lcom/facebook/orca/compose/LocationNuxController;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/LocationNuxController;)V

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    new-instance v1, Lcom/facebook/orca/creation/CreateThreadActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$4;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;)V

    .line 233
    if-eqz v2, :cond_2

    .line 234
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->I:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/users/PickedUser;)V

    .line 238
    :cond_2
    const-string v0, "for_sharing"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/compose/ComposeFragment;->b(Landroid/content/Intent;)V

    .line 240
    const-string v0, "for_sharing"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 244
    :cond_3
    const-string v0, "for_composer_share"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/compose/ComposeFragment;->c(Landroid/content/Intent;)V

    .line 246
    const-string v0, "for_composer_share"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 248
    :cond_4
    return-void

    .line 158
    :cond_5
    instance-of v1, v0, Lcom/facebook/orca/users/PickedUser;

    if-eqz v1, :cond_7

    .line 159
    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    goto/16 :goto_0

    .line 215
    :cond_6
    sget v0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:I

    if-ne v1, v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->o()V

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto/16 :goto_1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "create_thread"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->finish()V

    .line 407
    :goto_0
    return-void

    .line 387
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    sget v1, Lcom/facebook/R$string;->compose_discard_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 389
    sget v1, Lcom/facebook/R$string;->compose_discard_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 390
    sget v1, Lcom/facebook/R$string;->compose_discard_dialog_no_button:I

    new-instance v2, Lcom/facebook/orca/creation/CreateThreadActivity$7;

    invoke-direct {v2, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$7;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    sget v1, Lcom/facebook/R$string;->compose_discard_dialog_discard_button:I

    new-instance v2, Lcom/facebook/orca/creation/CreateThreadActivity$8;

    invoke-direct {v2, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$8;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 368
    const-string v0, "composingSmsThread"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->o()V

    .line 371
    :cond_0
    const-string v0, "composeExpanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->p()V

    .line 374
    :cond_1
    const-string v0, "outgoingMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->L:Lcom/facebook/orca/threads/Message;

    .line 375
    const-string v0, "pickedUsers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_2

    instance-of v1, v0, [Landroid/os/Parcelable;

    if-eqz v1, :cond_2

    .line 377
    check-cast v0, [Lcom/facebook/orca/users/PickedUser;

    check-cast v0, [Lcom/facebook/orca/users/PickedUser;

    .line 378
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->M:Lcom/google/common/collect/ImmutableList;

    .line 380
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 332
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onResume()V

    .line 333
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_1

    .line 336
    const-string v1, "focus_compose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const-string v1, "focus_compose"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->p()V

    .line 339
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->J:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/compose/ComposeFragment;->u()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 342
    :cond_0
    sget-object v1, Lcom/facebook/orca/creation/CreateThreadActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_1

    .line 344
    iget-object v2, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->A:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v3, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v4, "flow"

    invoke-direct {v3, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v3

    sget-object v4, Lcom/facebook/orca/creation/CreateThreadActivity;->t:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 348
    sget-object v1, Lcom/facebook/orca/creation/CreateThreadActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 351
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356
    const-string v0, "composeExpanded"

    iget-boolean v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    const-string v0, "composingSmsThread"

    iget-boolean v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    const-string v0, "outgoingMessage"

    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->L:Lcom/facebook/orca/threads/Message;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 359
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->M:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->M:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->M:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/orca/users/PickedUser;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/users/PickedUser;

    .line 361
    const-string v1, "pickedUsers"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 363
    :cond_0
    return-void
.end method
