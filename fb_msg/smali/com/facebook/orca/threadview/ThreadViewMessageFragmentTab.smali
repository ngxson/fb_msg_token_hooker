.class public Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ThreadViewMessageFragmentTab.java"


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
.field private Y:Lcom/facebook/orca/cache/DataCache;

.field private Z:Landroid/os/Handler;

.field private aA:Lcom/facebook/orca/threads/ThreadSummary;

.field private aB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field

.field private aC:Landroid/graphics/drawable/Drawable;

.field private aD:Landroid/graphics/drawable/Drawable;

.field private aa:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private ab:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private ac:Lcom/facebook/orca/cache/SaveDraftManager;

.field private ad:Lcom/facebook/orca/threads/ThreadSnippetUtil;

.field private ae:Landroid/view/ViewGroup;

.field private af:Landroid/view/View;

.field private ag:Lcom/facebook/widget/BetterListView;

.field private ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private ai:Landroid/view/ViewGroup;

.field private aj:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

.field private ak:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

.field private al:Landroid/widget/FrameLayout;

.field private am:Lcom/facebook/orca/threadview/MuteThreadWarningController;

.field private an:Lcom/facebook/orca/threadview/SmsUpsellController;

.field private ao:Lcom/facebook/orca/compose/ComposeFragment;

.field private ap:Landroid/view/View;

.field private aq:Lcom/facebook/orca/compose/LocationNuxController;

.field private ar:Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;

.field private as:Ljava/lang/String;

.field private at:Lcom/facebook/orca/compose/ComposeMode;

.field private au:Lcom/facebook/common/util/TriState;

.field private av:Z

.field private aw:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

.field private ax:Lcom/facebook/orca/presence/PresenceState;

.field private ay:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

.field private az:Lcom/facebook/orca/threads/MessagesCollection;

.field private b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/animatablelistview/AnimatingListAdapter",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/inputmethod/InputMethodManager;

.field private d:Lcom/facebook/orca/cache/SendMessageManager;

.field private e:Landroid/text/ClipboardManager;

.field private f:Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

.field private g:Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

.field private i:Ljavax/inject/Provider;
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
    .line 79
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    sput-object v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 115
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->at:Lcom/facebook/orca/compose/ComposeMode;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->av:Z

    .line 120
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ax:Lcom/facebook/orca/presence/PresenceState;

    return-void
.end method

.method private J()Lcom/facebook/orca/threadview/RowItem;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowItem;

    .line 364
    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v2, :cond_0

    move-object v0, v1

    .line 369
    goto :goto_0
.end method

.method private K()V
    .locals 3

    .prologue
    .line 498
    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/cache/SaveDraftManager;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->as:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/SaveDraftManager;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/cache/SaveDraftManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/SaveDraftManager;->b(Ljava/lang/String;)Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v0

    .line 504
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 505
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/MessageDraft;)V

    .line 507
    :cond_1
    return-void

    .line 501
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aA:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aA:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->y()Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v0

    goto :goto_0
.end method

.method private L()V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->c()Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/cache/SaveDraftManager;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->as:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/cache/SaveDraftManager;->a(Ljava/lang/String;Lcom/facebook/orca/compose/MessageDraft;)V

    .line 512
    return-void
.end method

.method private M()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->send_empty_message:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->E()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    .line 786
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->N()V

    .line 787
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->H()V

    .line 788
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aq:Lcom/facebook/orca/compose/LocationNuxController;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aq:Lcom/facebook/orca/compose/LocationNuxController;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/LocationNuxController;->a()V

    goto :goto_0
.end method

.method private N()V
    .locals 3

    .prologue
    .line 794
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0}, Lcom/facebook/widget/BetterListView;->getCount()I

    move-result v0

    .line 795
    if-lez v0, :cond_0

    .line 796
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v1}, Lcom/facebook/widget/BetterListView;->getLastVisiblePosition()I

    move-result v1

    .line 797
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    .line 798
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/widget/BetterListView;->smoothScrollToPosition(I)V

    .line 801
    :cond_0
    return-void
.end method

.method private O()Z
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    const/4 v0, 0x0

    .line 868
    :goto_0
    return v0

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 867
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowItem;

    .line 868
    instance-of v0, v0, Lcom/facebook/orca/threadview/RowTypingItem;

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;Lcom/facebook/orca/threads/ThreadSummary;Z)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/MessagesCollection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 519
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 521
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 522
    new-instance v3, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-direct {v3, v0}, Lcom/facebook/orca/threadview/RowMessageItem;-><init>(Lcom/facebook/orca/threads/Message;)V

    .line 523
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/RowMessageItem;Lcom/facebook/orca/threads/Message;)V

    move-object v1, v3

    .line 527
    goto :goto_0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f:Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    invoke-virtual {v0, p1, p3}, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/Map;

    move-result-object v7

    .line 533
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v1

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 534
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;

    .line 536
    if-eqz v1, :cond_1

    .line 537
    sget-object v4, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$8;->a:[I

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->d()Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo$Type;->ordinal()I

    move-result v9

    aget v4, v4, v9

    packed-switch v4, :pswitch_data_0

    :cond_1
    move-object v4, v2

    .line 571
    :goto_2
    new-instance v1, Lcom/facebook/orca/threadview/RowMessageItem;

    iget-object v9, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v9, v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    invoke-direct {v1, v0, v9, v4}, Lcom/facebook/orca/threadview/RowMessageItem;-><init>(Lcom/facebook/orca/threads/Message;Ljava/util/List;Lcom/facebook/orca/threadview/RowReceiptItem;)V

    .line 575
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-direct {p0, v3, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/RowMessageItem;Lcom/facebook/orca/threads/Message;)V

    move-object v3, v1

    .line 579
    goto :goto_1

    .line 539
    :pswitch_0
    invoke-virtual {p3}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 540
    invoke-virtual {v1}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->e()J

    move-result-wide v9

    invoke-static {v4, v0, v9, v10}, Lcom/facebook/orca/threadview/RowReceiptItem;->a(Ljava/util/List;Lcom/facebook/orca/threads/Message;J)Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    .line 546
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    iget-object v9, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v9}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 550
    const/4 v4, 0x1

    .line 552
    :goto_3
    invoke-virtual {v1}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v9

    invoke-static {v1, v0, v4, v9}, Lcom/facebook/orca/threadview/RowReceiptItem;->a(Ljava/util/List;Lcom/facebook/orca/threads/Message;ZI)Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    move-object v4, v1

    .line 558
    goto :goto_2

    .line 560
    :pswitch_1
    invoke-virtual {v1}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->b()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/orca/threadview/RowReceiptItem;->a(Lcom/facebook/orca/threads/ParticipantInfo;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    move-object v4, v1

    .line 563
    goto :goto_2

    .line 565
    :pswitch_2
    invoke-virtual {v1}, Lcom/facebook/orca/threadview/MessageDeliveredReadInfo;->c()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/orca/threadview/RowReceiptItem;->b(Lcom/facebook/orca/threads/ParticipantInfo;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    .line 581
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 582
    new-instance v3, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-direct {v3, v0, v2}, Lcom/facebook/orca/threadview/RowMessageItem;-><init>(Lcom/facebook/orca/threads/Message;Ljava/util/List;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 587
    :cond_4
    if-eqz p4, :cond_5

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ax:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceState;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 590
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aw:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 591
    new-instance v0, Lcom/facebook/orca/threadview/RowTypingItem;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aw:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/RowTypingItem;-><init>(Lcom/facebook/orca/threads/ParticipantInfo;)V

    .line 593
    invoke-interface {v6, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 596
    :cond_5
    return-object v6

    :cond_6
    move v4, v5

    goto :goto_3

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 758
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->av:Z

    if-eqz v0, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    if-nez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 762
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0, v2}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowItem;

    .line 763
    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    if-ne v0, v1, :cond_0

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ar:Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ar:Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;

    invoke-interface {v0, v2}, Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;->b(Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 340
    const/4 v1, 0x0

    .line 341
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 342
    :goto_0
    if-eqz v0, :cond_3

    .line 343
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ap:Landroid/view/View;

    if-ne v0, v2, :cond_2

    .line 344
    const/4 v0, 0x1

    .line 350
    :goto_1
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c()V

    .line 353
    :cond_0
    return-void

    .line 341
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;)V
    .locals 4
    .parameter

    .prologue
    .line 811
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;->a()Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->BOTTOM:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    if-ne v0, v1, :cond_1

    .line 812
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->N()V

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 816
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 817
    if-eqz v0, :cond_2

    .line 818
    if-lez v1, :cond_0

    .line 819
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/widget/BetterListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 814
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 1
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 421
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ar:Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;

    invoke-interface {v0, p1}, Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 422
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 423
    return-void
.end method

.method private a(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 804
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ax:Lcom/facebook/orca/presence/PresenceState;

    if-ne v0, p1, :cond_0

    .line 808
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b(Lcom/facebook/orca/presence/PresenceState;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aA:Lcom/facebook/orca/threads/ThreadSummary;

    .line 491
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aA:Lcom/facebook/orca/threads/ThreadSummary;

    .line 492
    if-nez v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->K()V

    .line 495
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/threadview/RowItem;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 373
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->J()Lcom/facebook/orca/threadview/RowItem;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v1}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->a()Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;

    move-result-object v1

    .line 375
    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Lcom/facebook/orca/threadview/RowItem;

    if-ne v0, v2, :cond_1

    .line 378
    :cond_0
    invoke-virtual {v1, v3}, Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;->a(I)V

    .line 380
    :cond_1
    if-eqz p1, :cond_2

    .line 381
    invoke-virtual {v1, v3, p1}, Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;->a(ILjava/lang/Object;)V

    .line 383
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/widget/animatablelistview/AnimatingListTransactionBuilder;->b()V

    .line 384
    return-void
.end method

.method private a(Lcom/facebook/orca/threadview/RowMessageItem;Lcom/facebook/orca/threads/Message;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 602
    if-eqz p1, :cond_0

    .line 604
    const-wide/32 v0, 0x36ee80

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(JLcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/threadview/RowMessageItem;->a(Z)V

    .line 609
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->M()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/presence/PresenceState;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Lcom/facebook/orca/threadview/RowItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b(Lcom/facebook/orca/threadview/RowItem;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 833
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->O()Z

    move-result v3

    .line 834
    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ax:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v2}, Lcom/facebook/orca/presence/PresenceState;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 835
    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ax:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v3}, Lcom/facebook/orca/presence/PresenceState;->c()Z

    move-result v3

    if-nez v3, :cond_2

    .line 837
    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 838
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$7;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/widget/BetterListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 859
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 834
    goto :goto_0

    :cond_2
    move v0, v1

    .line 835
    goto :goto_1

    .line 847
    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_0

    .line 848
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->az:Lcom/facebook/orca/threads/MessagesCollection;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aB:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aA:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;Lcom/facebook/orca/threads/ThreadSummary;Z)Ljava/util/List;

    move-result-object v0

    .line 853
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-direct {v1, v3}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;-><init>(Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;)V

    .line 854
    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aw:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v3}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(ZLjava/util/List;Lcom/facebook/orca/threads/ParticipantInfo;)V

    goto :goto_2
.end method

.method private a(JLcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/Message;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 615
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    invoke-virtual {p4}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ax:Lcom/facebook/orca/presence/PresenceState;

    .line 829
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Z)V

    .line 830
    return-void
.end method

.method private b(Lcom/facebook/orca/threadview/RowItem;)V
    .locals 5
    .parameter

    .prologue
    .line 635
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->at:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-ne v0, v1, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->E()V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    instance-of v0, p1, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 640
    check-cast v0, Lcom/facebook/orca/threadview/RowMessageItem;

    .line 641
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 642
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v2

    if-nez v2, :cond_0

    .line 643
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 644
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    const-string v3, "thread_id"

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->as:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string v3, "message"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 647
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v1

    sget-object v3, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->GROUP_READ:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    if-ne v1, v3, :cond_2

    .line 651
    const-string v1, "readers"

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aA:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 657
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->g(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 660
    const-string v1, "other_readers"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 663
    :cond_3
    invoke-virtual {p0, v2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 665
    :cond_4
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    if-ne p1, v0, :cond_0

    .line 667
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ar:Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;->b(Z)V

    goto :goto_0
.end method

.method private c(Landroid/view/MenuItem;)Lcom/facebook/orca/threads/Message;
    .locals 2
    .parameter

    .prologue
    .line 748
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 750
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 751
    instance-of v1, v0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v1, :cond_0

    .line 752
    check-cast v0, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    const-string v0, "composeMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->at:Lcom/facebook/orca/compose/ComposeMode;

    .line 333
    const-string v0, "canReplyTo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/TriState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->au:Lcom/facebook/common/util/TriState;

    .line 334
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->at:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    if-eq v0, v1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c()V

    .line 337
    :cond_0
    return-void
.end method

.method private g(I)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 682
    add-int/lit8 v0, p1, 0x1

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 683
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0, v2}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 684
    instance-of v1, v0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v1, :cond_2

    .line 685
    check-cast v0, Lcom/facebook/orca/threadview/RowMessageItem;

    .line 686
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v1

    sget-object v4, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->GROUP_READ:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    if-ne v1, v4, :cond_1

    .line 688
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threadview/RowReceiptParticipant;

    .line 689
    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowReceiptParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    .line 690
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 691
    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowReceiptParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 695
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->r()I

    move-result v1

    if-nez v1, :cond_2

    .line 696
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 697
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 699
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 704
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method E()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->au:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ap:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 403
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 404
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->at:Lcom/facebook/orca/compose/ComposeMode;

    .line 405
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 406
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 407
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 408
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method F()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ap:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 414
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 415
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 416
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 417
    return-void
.end method

.method public H()Lcom/facebook/orca/compose/ComposeFragment;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    return-object v0
.end method

.method public I()V
    .locals 1

    .prologue
    .line 630
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/RowItem;)V

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->av:Z

    .line 632
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    sget v0, Lcom/facebook/R$layout;->orca_thread_view_messages_tab:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/compose/LocationNuxController;)V
    .locals 1
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aq:Lcom/facebook/orca/compose/LocationNuxController;

    .line 322
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/LocationNuxController;)V

    .line 325
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ar:Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;

    .line 329
    return-void
.end method

.method public a(Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V
    .locals 9
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 434
    iget-object v0, p1, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aA:Lcom/facebook/orca/threads/ThreadSummary;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->b:Lcom/facebook/orca/threads/MessagesCollection;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->az:Lcom/facebook/orca/threads/MessagesCollection;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->c:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aB:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p1, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 440
    iget-object v0, p1, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->b:Lcom/facebook/orca/threads/MessagesCollection;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->az:Lcom/facebook/orca/threads/MessagesCollection;

    .line 441
    iget-object v0, p1, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->c:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aB:Ljava/util/List;

    .line 443
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aw:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aA:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 444
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aA:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    :goto_1
    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->au:Lcom/facebook/common/util/TriState;

    .line 445
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->au:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ap:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 446
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->E()V

    .line 451
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->h:Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;->c(Landroid/widget/ListView;)Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;

    move-result-object v2

    .line 452
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->az:Lcom/facebook/orca/threads/MessagesCollection;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aB:Ljava/util/List;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aA:Lcom/facebook/orca/threads/ThreadSummary;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;Lcom/facebook/orca/threads/ThreadSummary;Z)Ljava/util/List;

    move-result-object v3

    .line 457
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->az:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->az:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 458
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->av:Z

    if-eqz v0, :cond_7

    .line 459
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Lcom/facebook/orca/threadview/RowItem;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->az:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v4

    .line 466
    if-eqz v4, :cond_4

    .line 467
    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 469
    iget-object v5, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ab:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v6, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->as:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/cache/ThreadDisplayCache;->b(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    move-result-object v5

    .line 472
    if-eqz v5, :cond_3

    .line 473
    invoke-virtual {v5}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->c()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 475
    :cond_3
    iget-object v5, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ab:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v6, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->as:Ljava/lang/String;

    new-instance v7, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    iget-object v8, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-virtual {v8, v4}, Lcom/facebook/orca/threads/ThreadSnippetUtil;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v4

    invoke-direct {v7, v8, v4, v0, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;-><init>(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;J)V

    invoke-virtual {v5, v6, v7}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;)V

    .line 481
    :cond_4
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;-><init>(Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;)V

    .line 482
    invoke-static {v3}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessagesAdapterUpdater;->a(Ljava/util/List;)V

    .line 484
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setEmptyView(Landroid/view/View;)V

    .line 485
    invoke-direct {p0, v2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;)V

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->av:Z

    goto/16 :goto_0

    .line 444
    :cond_5
    sget-object v0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    goto/16 :goto_1

    .line 447
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->au:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ap:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->F()V

    goto/16 :goto_2

    .line 461
    :cond_7
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Lcom/facebook/orca/threadview/RowItem;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->as:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Lcom/facebook/orca/threadview/RowItem;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/RowItem;)V

    .line 357
    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 728
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-nez v1, :cond_0

    .line 729
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c(Landroid/view/MenuItem;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 730
    if-eqz v1, :cond_1

    .line 731
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->e:Landroid/text/ClipboardManager;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 744
    :goto_0
    return v0

    .line 734
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 735
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c(Landroid/view/MenuItem;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 736
    if-eqz v0, :cond_1

    .line 737
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/facebook/orca/mutators/DeleteMessagesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 738
    const-string v2, "thread_id"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    const-string v2, "message_ids"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 740
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Landroid/content/Intent;)V

    .line 744
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->au:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 392
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->at:Lcom/facebook/orca/compose/ComposeMode;

    .line 393
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aD:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 394
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 395
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->N()V

    goto :goto_0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 145
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v2

    .line 148
    const-class v0, Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/MessageListAdapter;

    .line 149
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c:Landroid/view/inputmethod/InputMethodManager;

    .line 150
    const-class v1, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/SendMessageManager;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->d:Lcom/facebook/orca/cache/SendMessageManager;

    .line 151
    const-class v1, Landroid/text/ClipboardManager;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->e:Landroid/text/ClipboardManager;

    .line 152
    const-class v1, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f:Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    .line 154
    const-class v1, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aw:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    .line 155
    const-class v1, Ljava/lang/Boolean;

    const-class v3, Lcom/facebook/orca/annotations/IsDeliveredReadReceiptEnabled;

    invoke-virtual {v2, v1, v3}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->i:Ljavax/inject/Provider;

    .line 157
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/DataCache;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Y:Lcom/facebook/orca/cache/DataCache;

    .line 158
    const-class v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aa:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 159
    const-class v1, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ab:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 160
    const-class v1, Lcom/facebook/orca/cache/SaveDraftManager;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/SaveDraftManager;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ac:Lcom/facebook/orca/cache/SaveDraftManager;

    .line 161
    const-class v1, Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadSnippetUtil;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ad:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    .line 163
    sget v1, Lcom/facebook/R$id;->update_list_container:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ae:Landroid/view/ViewGroup;

    .line 164
    sget v1, Lcom/facebook/R$id;->create_dummy_focus_elt:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->af:Landroid/view/View;

    .line 165
    sget v1, Lcom/facebook/R$id;->messages_list:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/BetterListView;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    .line 166
    sget v1, Lcom/facebook/R$id;->threadview_updates_empty_item:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 167
    sget v1, Lcom/facebook/R$id;->thread_view_suggestion_popovers:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ai:Landroid/view/ViewGroup;

    .line 168
    sget v1, Lcom/facebook/R$id;->thread_view_mute_warning:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aj:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    .line 169
    sget v1, Lcom/facebook/R$id;->thread_view_sms_upsell:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    .line 170
    sget v1, Lcom/facebook/R$id;->thread_view_animation_container:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->f(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->al:Landroid/widget/FrameLayout;

    .line 172
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget v3, Lcom/facebook/R$id;->messages_compose:I

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/compose/ComposeFragment;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    .line 174
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aq:Lcom/facebook/orca/compose/LocationNuxController;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aq:Lcom/facebook/orca/compose/LocationNuxController;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/LocationNuxController;)V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/compose/ComposeFragment;->u()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ap:Landroid/view/View;

    .line 180
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threadview/MessageListAdapter$MessageListAdapterListener;)V

    .line 186
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    new-instance v3, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$2;

    invoke-direct {v3, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v1, v3}, Lcom/facebook/widget/BetterListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    new-instance v1, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;-><init>(Landroid/content/Context;Lcom/facebook/widget/animatablelistview/ItemBasedListAdapter;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setDividerHeight(I)V

    .line 198
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0, v4}, Lcom/facebook/widget/BetterListView;->setStackFromBottom(Z)V

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0, v4}, Lcom/facebook/widget/BetterListView;->setTranscriptMode(I)V

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0, v4}, Lcom/facebook/widget/BetterListView;->setItemsCanFocus(Z)V

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setEmptyView(Landroid/view/View;)V

    .line 213
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

    invoke-direct {v0}, Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->h:Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

    .line 214
    new-instance v0, Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    invoke-direct {v0, v1, v3}, Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;-><init>(Lcom/facebook/widget/BetterListView;Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->g:Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0}, Lcom/facebook/widget/BetterListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aC:Landroid/graphics/drawable/Drawable;

    .line 219
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->m()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$drawable;->transparent_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aD:Landroid/graphics/drawable/Drawable;

    .line 221
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->m()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/R$string;->thread_no_updates:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->as:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->al:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->setAnimationContainer(Landroid/widget/FrameLayout;)V

    .line 225
    new-instance v1, Lcom/facebook/orca/threadview/SmsUpsellController;

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    invoke-direct {v1, v0, v3}, Lcom/facebook/orca/threadview/SmsUpsellController;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->an:Lcom/facebook/orca/threadview/SmsUpsellController;

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aj:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->al:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->setAnimationContainer(Landroid/widget/FrameLayout;)V

    .line 232
    new-instance v3, Lcom/facebook/orca/threadview/MuteThreadWarningController;

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->as:Ljava/lang/String;

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v1, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aj:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/facebook/orca/threadview/MuteThreadWarningController;-><init>(Ljava/lang/String;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/notify/NotificationSettingsUtil;Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;)V

    iput-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->am:Lcom/facebook/orca/threadview/MuteThreadWarningController;

    .line 238
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$4;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ao:Lcom/facebook/orca/compose/ComposeFragment;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$5;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;)V

    .line 255
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;-><init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ay:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

    .line 261
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aw:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ay:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;)V

    .line 262
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Landroid/os/Handler;

    .line 264
    if-eqz p1, :cond_1

    .line 265
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c(Landroid/os/Bundle;)V

    .line 267
    :cond_1
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ak:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->e()V

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aw:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Z)V

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aw:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->c()Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b(Lcom/facebook/orca/presence/PresenceState;)V

    .line 281
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->e(Landroid/os/Bundle;)V

    .line 309
    const-string v0, "composeMode"

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->at:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 310
    const-string v0, "canReplyTo"

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->au:Lcom/facebook/common/util/TriState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 311
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->f()V

    .line 286
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->aw:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Z)V

    .line 287
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 712
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 713
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ag:Lcom/facebook/widget/BetterListView;

    if-ne p2, v0, :cond_0

    .line 714
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 715
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b:Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/facebook/widget/animatablelistview/AnimatingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 716
    instance-of v0, v0, Lcom/facebook/orca/threadview/RowMessageItem;

    if-eqz v0, :cond_0

    .line 717
    sget v0, Lcom/facebook/R$string;->message_context_menu_title:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 718
    sget v0, Lcom/facebook/R$string;->message_context_menu_copy_message:I

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 720
    sget v0, Lcom/facebook/R$string;->message_context_menu_delete_message:I

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 724
    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->v()V

    .line 292
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->am:Lcom/facebook/orca/threadview/MuteThreadWarningController;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/MuteThreadWarningController;->a()V

    .line 293
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->an:Lcom/facebook/orca/threadview/SmsUpsellController;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->an:Lcom/facebook/orca/threadview/SmsUpsellController;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/SmsUpsellController;->a()V

    .line 296
    :cond_0
    return-void
.end method

.method public w()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->w()V

    .line 302
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->L()V

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->Z:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->x()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->ar:Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;

    .line 274
    return-void
.end method
