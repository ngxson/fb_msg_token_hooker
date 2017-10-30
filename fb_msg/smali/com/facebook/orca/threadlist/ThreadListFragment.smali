.class public Lcom/facebook/orca/threadlist/ThreadListFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ThreadListFragment.java"

# interfaces
.implements Lcom/facebook/fragment/ReportingFragment;


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
.field private Y:Lcom/facebook/orca/prefs/UiCounters;

.field private Z:Landroid/media/AudioManager;

.field private aa:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private ab:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

.field private ac:Lcom/facebook/orca/threadlist/ThreadListLoader;

.field private ad:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private af:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

.field private ag:Lcom/facebook/widget/BetterListView;

.field private ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private ai:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

.field private aj:Z

.field private ak:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/threads/FolderName;",
            ">;"
        }
    .end annotation
.end field

.field private al:Lcom/facebook/orca/threads/FolderName;

.field private am:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

.field private an:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

.field private ao:J

.field private ap:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

.field private aq:I

.field private ar:J

.field private as:Lcom/facebook/orca/server/ErrorCode;

.field private at:Lcom/facebook/orca/threadview/ThreadViewUtil;

.field private au:Lcom/facebook/fragment/ReportingFragment$Listener;

.field private b:Lcom/facebook/orca/cache/DataCache;

.field private c:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

.field private e:Lcom/facebook/orca/server/BackgroundRefreshRunner;

.field private f:Lcom/facebook/orca/cache/ArchiveThreadManager;

.field private g:Lcom/facebook/orca/cache/SpamThreadManager;

.field private h:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

.field private i:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/facebook/orca/threadlist/ThreadListFragment;

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListFragment;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aj:Z

    .line 124
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->a:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->an:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    .line 125
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ao:J

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aq:I

    .line 556
    return-void
.end method

.method static synthetic H()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListFragment;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private I()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Z)V

    .line 347
    return-void
.end method

.method private J()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Z)V

    .line 351
    return-void
.end method

.method private K()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->an:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ap:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ap:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;->a()V

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->L()V

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ap:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ap:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;->a()V

    .line 423
    :cond_3
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->L()V

    goto :goto_0
.end method

.method private L()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->an:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->a:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    .line 436
    :goto_0
    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 437
    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    iget-object v4, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->an:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-virtual {v4}, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;)V

    .line 439
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->an:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iget-object v1, v1, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->a:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 440
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->notifyDataSetChanged()V

    .line 441
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->af:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->an:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iget-wide v3, v1, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->b:J

    invoke-virtual {v0, v3, v4}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setLastLoadedTime(J)V

    .line 442
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListFragment$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$5;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->post(Ljava/lang/Runnable;)Z

    .line 448
    iput-boolean v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aj:Z

    .line 449
    return-void

    .line 430
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aj:Z

    if-eqz v0, :cond_2

    .line 431
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    goto :goto_0

    .line 433
    :cond_2
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE_PLACEHOLDER:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    goto :goto_0
.end method

.method private M()V
    .locals 5

    .prologue
    .line 473
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 474
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0}, Lcom/facebook/widget/BetterListView;->getFirstVisiblePosition()I

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v1}, Lcom/facebook/widget/BetterListView;->getLastVisiblePosition()I

    move-result v3

    move v1, v0

    .line 476
    :goto_0
    if-gt v1, v3, :cond_1

    .line 477
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 478
    instance-of v4, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v4, :cond_0

    .line 479
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 480
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->e:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Ljava/util/List;)V

    .line 484
    return-void
.end method

.method private N()V
    .locals 7

    .prologue
    .line 516
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ad:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->b:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->al:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->g(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/FolderCounts;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 526
    iget-wide v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ao:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0xea60

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    .line 532
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 533
    const-string v0, "folderName"

    iget-object v4, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->al:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 534
    iget-object v4, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ab:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v5, "mark_folder_seen"

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-virtual {v4, v5, v3, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ad:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 537
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ad:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Lcom/facebook/orca/threadlist/ThreadListFragment$8;

    invoke-direct {v3, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$8;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-static {v0, v3}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 549
    iput-wide v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ao:J

    goto :goto_0
.end method

.method private O()V
    .locals 2

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aj:Z

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getCount()I

    move-result v0

    .line 585
    if-lez v0, :cond_0

    iget v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aq:I

    if-ne v1, v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aq:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 587
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->d()V

    goto :goto_0
.end method

.method private P()V
    .locals 4

    .prologue
    .line 628
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->af:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b()V

    .line 629
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->R()V

    .line 633
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ae:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 640
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ab:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v3, "chat_get_visibility"

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ae:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 643
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ae:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListFragment$9;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$9;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    if-nez v0, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->a(Z)V

    goto :goto_0
.end method

.method private R()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->a(Z)V

    .line 726
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Z:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ad:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 396
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->h:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(I)V

    .line 397
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->h:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(J)V

    .line 398
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->h:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Z)V

    .line 399
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->h:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    sget v1, Lcom/facebook/R$id;->error_toast_dock:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->f(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->i:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v2, p1, v3}, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a(Lcom/facebook/orca/ops/ServiceException;Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    .line 403
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->g(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Result;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Result;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->c(Lcom/facebook/orca/threads/ThreadSummary;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V
    .locals 7
    .parameter

    .prologue
    .line 680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 681
    iget-object v2, p1, Lcom/facebook/orca/threadlist/ThreadListLoader$Error;->a:Lcom/facebook/orca/ops/ServiceException;

    invoke-virtual {v2}, Lcom/facebook/orca/ops/ServiceException;->a()Lcom/facebook/orca/server/ErrorCode;

    move-result-object v2

    .line 682
    iget-wide v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ar:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x493e0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->as:Lcom/facebook/orca/server/ErrorCode;

    if-ne v3, v2, :cond_0

    iget-boolean v3, p1, Lcom/facebook/orca/threadlist/ThreadListLoader$Error;->b:Z

    if-nez v3, :cond_0

    .line 691
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v3, p1, Lcom/facebook/orca/threadlist/ThreadListLoader$Error;->a:Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {p0, v3}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/ops/ServiceException;)V

    .line 689
    iput-wide v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ar:J

    .line 690
    iput-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->as:Lcom/facebook/orca/server/ErrorCode;

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V
    .locals 3
    .parameter

    .prologue
    .line 595
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->h:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 596
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    if-ne p1, v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->an:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->m()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->thread_list_loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 600
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->af:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a()V

    .line 606
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->Q()V

    .line 611
    :cond_2
    :goto_0
    return-void

    .line 607
    :cond_3
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->MORE_THREADS:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    if-ne p1, v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOADING:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;)V

    .line 609
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 657
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    if-ne p1, v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->af:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b()V

    .line 659
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->R()V

    .line 660
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 662
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->setVisibility(I)V

    .line 663
    invoke-direct {p0, p2}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->MORE_THREADS:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    if-ne p1, v0, :cond_0

    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aj:Z

    .line 666
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;)V

    .line 667
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Result;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 614
    iput-object p2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->an:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    .line 615
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->MORE_THREADS:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    if-ne p1, v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0, v1, v1}, Lcom/facebook/widget/BetterListView;->smoothScrollBy(II)V

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->K()V

    .line 619
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 383
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0}, Lcom/facebook/widget/BetterListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 386
    instance-of v2, v0, Lcom/facebook/orca/threadlist/ThreadItemView;

    if-eqz v2, :cond_0

    .line 387
    check-cast v0, Lcom/facebook/orca/threadlist/ThreadItemView;

    .line 388
    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a()V

    .line 383
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 393
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 355
    if-eqz p1, :cond_0

    .line 356
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    invoke-direct {v0, v2, v2}, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;-><init>(ZZ)V

    move-object v1, v0

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ak:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/FolderName;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->al:Lcom/facebook/orca/threads/FolderName;

    .line 367
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListLoader;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->al:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/threads/FolderName;)V

    .line 368
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$Params;)V

    .line 369
    return-void

    .line 361
    :cond_0
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    invoke-direct {v0, v1, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;-><init>(ZZ)V

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aq:I

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ae:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 158
    const-string v0, "com.facebook.orca.ACTION_SMS_ENABLED_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->I()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string v0, "com.facebook.orca.ACTION_READ_THREAD_FOR_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    const-string v0, "threadid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    const-string v0, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->I()V

    goto :goto_0

    .line 168
    :cond_3
    const-string v0, "actionid"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 169
    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->an:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-virtual {v2}, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    :cond_4
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->I()V

    goto :goto_0

    .line 171
    :cond_5
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->an:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iget-wide v2, v2, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->c:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->I()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->M()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V
    .locals 1
    .parameter

    .prologue
    .line 622
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    if-ne p1, v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->P()V

    .line 625
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 674
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    if-ne p1, v0, :cond_0

    .line 675
    invoke-direct {p0, p2}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V

    .line 677
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadlist/ThreadListFragment;)Lcom/facebook/orca/server/BackgroundRefreshRunner;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->e:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    return-object v0
.end method

.method private c(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->g:Lcom/facebook/orca/cache/SpamThreadManager;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/SpamThreadManager;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 512
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->L()V

    .line 513
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/threadlist/ThreadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->O()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/threadlist/ThreadListFragment;)Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ap:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    return-object v0
.end method

.method private g(I)V
    .locals 4
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 453
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->E()V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_2

    .line 456
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 457
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->at:Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v3}, Lcom/facebook/orca/threadview/ThreadViewUtil;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    const-string v2, "thread_id"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    sget-object v0, Lcom/facebook/orca/creation/CreateThreadActivity;->t:Ljava/lang/String;

    const-string v2, "thread_list"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->au:Lcom/facebook/fragment/ReportingFragment$Listener;

    invoke-interface {v0, p0, v1}, Lcom/facebook/fragment/ReportingFragment$Listener;->a(Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V

    goto :goto_0

    .line 461
    :cond_2
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->d()V

    goto :goto_0
.end method


# virtual methods
.method public E()V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Y:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "compose_clicked"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method public F()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    sget v0, Lcom/facebook/R$layout;->orca_thread_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 183
    sget v0, Lcom/facebook/R$id;->threadlist_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->af:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    .line 184
    sget v0, Lcom/facebook/R$id;->thread_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/BetterListView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    .line 185
    sget v0, Lcom/facebook/R$id;->thread_list_loading_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ah:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 186
    sget v0, Lcom/facebook/R$id;->thread_list_empty_item:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ai:Lcom/facebook/orca/threadlist/ThreadListEmptyView;

    .line 187
    return-object v1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 143
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    const-string v2, "com.facebook.orca.ACTION_THREAD_UPDATED_FOR_UI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v2, "com.facebook.orca.ACTION_READ_THREAD_FOR_UI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v2, "com.facebook.orca.ACTION_REMOVED_THREAD_FOR_UI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v2, "com.facebook.orca.ACTION_SMS_ENABLED_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v2, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    new-instance v2, Lcom/facebook/orca/threadlist/ThreadListFragment$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment$1;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->am:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    .line 155
    return-void
.end method

.method public a(Lcom/facebook/fragment/ReportingFragment$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->au:Lcom/facebook/fragment/ReportingFragment$Listener;

    .line 325
    return-void
.end method

.method public a(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->aa:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 704
    return-void
.end method

.method public a(Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ap:Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;

    .line 554
    return-void
.end method

.method a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->f:Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ArchiveThreadManager;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 488
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->L()V

    .line 489
    return-void
.end method

.method b()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->J()V

    .line 334
    return-void
.end method

.method b(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 3
    .parameter

    .prologue
    .line 492
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/R$string;->menu_mark_as_spam_confirm:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->dialog_yes:I

    new-instance v2, Lcom/facebook/orca/threadlist/ThreadListFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment$7;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/threads/ThreadSummary;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->dialog_no:I

    new-instance v2, Lcom/facebook/orca/threadlist/ThreadListFragment$6;

    invoke-direct {v2, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$6;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 508
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->c:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a()V

    .line 338
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->N()V

    .line 339
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 192
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 193
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListFragment;->a:Ljava/lang/Class;

    const-string v1, "ThreadListFragment.onActivityCreated"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 196
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->b:Lcom/facebook/orca/cache/DataCache;

    .line 197
    const-class v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->c:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 198
    const-class v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    .line 199
    const-class v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->e:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    .line 200
    const-class v0, Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ArchiveThreadManager;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->f:Lcom/facebook/orca/cache/ArchiveThreadManager;

    .line 201
    const-class v0, Lcom/facebook/orca/cache/SpamThreadManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/SpamThreadManager;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->g:Lcom/facebook/orca/cache/SpamThreadManager;

    .line 202
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->h:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    .line 203
    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->i:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    .line 204
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Y:Lcom/facebook/orca/prefs/UiCounters;

    .line 205
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->Z:Landroid/media/AudioManager;

    .line 206
    const-class v0, Lcom/facebook/orca/threads/FolderName;

    const-class v2, Lcom/facebook/orca/annotations/CurrentFolderName;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ak:Ljavax/inject/Provider;

    .line 207
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ab:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    .line 208
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->at:Lcom/facebook/orca/threadview/ThreadViewUtil;

    .line 209
    const-class v0, Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadListLoader;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListLoader;

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->d:Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setDividerHeight(I)V

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0, v3}, Lcom/facebook/widget/BetterListView;->setItemsCanFocus(Z)V

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    invoke-virtual {v0, v3}, Lcom/facebook/widget/BetterListView;->setBroadcastInteractionChanges(Z)V

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$2;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->af:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$3;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setOnRefreshListener(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;)V

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ag:Lcom/facebook/widget/BetterListView;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/threadlist/ThreadListFragment$MyOnScrollListener;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/threadlist/ThreadListFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 250
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->ac:Lcom/facebook/orca/threadlist/ThreadListLoader;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListFragment$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$4;-><init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;)V

    .line 279
    return-void
.end method

.method public v()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->v()V

    .line 293
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListFragment;->a:Ljava/lang/Class;

    const-string v2, "ThreadListFragment.onResume"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 296
    if-nez v1, :cond_0

    .line 299
    :goto_0
    if-eqz v0, :cond_1

    .line 303
    const-string v0, "from_notification"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->c:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a()V

    .line 305
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->J()V

    .line 311
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->am:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    .line 312
    return-void

    .line 296
    :cond_0
    const-string v2, "from_notification"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->I()V

    goto :goto_1
.end method

.method public w()V
    .locals 2

    .prologue
    .line 316
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->w()V

    .line 317
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListFragment;->a:Ljava/lang/Class;

    const-string v1, "ThreadListFragment.onPause"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->h:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 319
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->am:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->b()V

    .line 320
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->x()V

    .line 284
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->h:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->h:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment;->am:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->b()V

    .line 288
    return-void
.end method
