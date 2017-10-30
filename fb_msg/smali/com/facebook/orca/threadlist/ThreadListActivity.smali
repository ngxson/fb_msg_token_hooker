.class public Lcom/facebook/orca/threadlist/ThreadListActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ThreadListActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/DivebarEnabledActivity;
.implements Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field private static final n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

.field private B:Lcom/facebook/orca/nux/ThreadListNuxController;

.field private C:Lcom/facebook/orca/nux/NuxScrimView;

.field private D:Lcom/facebook/orca/nux/NuxSmsIntroView;

.field private E:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

.field private G:Lcom/facebook/orca/threadview/ThreadViewFragment;

.field private H:Z

.field private o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/facebook/orca/cache/DataCache;

.field private q:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

.field private r:Lcom/facebook/orca/debug/LogReportSender;

.field private s:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private u:Lcom/facebook/orca/threadlist/ThreadListFragment;

.field private v:Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

.field private w:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

.field private x:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

.field private y:Landroid/widget/FrameLayout;

.field private z:Lcom/facebook/orca/threadlist/MuteGlobalWarningController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/facebook/orca/threadlist/ThreadListActivity;

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListActivity;->n:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->H:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListActivity;)Lcom/facebook/orca/common/ui/titlebar/DivebarController;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->A:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v2, "click"

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "opt_menu_item"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 485
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListActivity;)Lcom/facebook/orca/threadlist/ThreadListFragment;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 580
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "thread_view_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewFragment;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    .line 584
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    if-nez v1, :cond_0

    .line 587
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-direct {v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;-><init>()V

    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    .line 588
    sget v1, Lcom/facebook/R$id;->thread_list_overlay_container:I

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    const-string v3, "thread_view_tag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 596
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadlist/ThreadListActivity;)Lcom/facebook/orca/analytics/AnalyticsLogger;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/analytics/AnalyticsLogger;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->A:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Landroid/app/Activity;)V

    .line 248
    sget v0, Lcom/facebook/R$id;->compose_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c(I)Landroid/view/View;

    move-result-object v0

    .line 249
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$4;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->A:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    new-instance v2, Lcom/facebook/orca/threadlist/ThreadListActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity$5;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarOverlayClickListener;)V

    .line 286
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b()V

    .line 336
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 534
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/contacts/contactslist/ContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    .line 536
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 602
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 129
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 130
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListActivity;->n:Ljava/lang/Class;

    const-string v1, "ThreadListActivity.onActivityCreate"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 132
    sget v0, Lcom/facebook/R$layout;->orca_thread_list:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->setContentView(I)V

    .line 134
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v6

    .line 135
    const-class v0, Ljava/lang/Boolean;

    const-class v1, Lcom/facebook/contacts/annotations/IsContactsListEnabled;

    invoke-virtual {v6, v0, v1}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->o:Ljavax/inject/Provider;

    .line 138
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v6, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->p:Lcom/facebook/orca/cache/DataCache;

    .line 139
    const-class v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v6, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    .line 140
    const-class v0, Lcom/facebook/orca/debug/LogReportSender;

    invoke-virtual {v6, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/LogReportSender;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->r:Lcom/facebook/orca/debug/LogReportSender;

    .line 141
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v6, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->s:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 142
    const-class v0, Ljava/lang/Boolean;

    const-class v1, Lcom/facebook/orca/annotations/IsDivebarEnabled;

    invoke-virtual {v6, v0, v1}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Ljavax/inject/Provider;

    .line 143
    const-class v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-virtual {v6, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->A:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    .line 145
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 146
    sget v0, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    sget v1, Lcom/facebook/R$string;->thread_list_title:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-interface {v0, v8}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setHasProgressBar(Z)V

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 154
    if-eqz v7, :cond_3

    .line 155
    invoke-static {}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->orca_divebar_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->i()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setButtonSpecs(Ljava/util/List;)V

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$1;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 187
    sget v1, Lcom/facebook/R$id;->orca_threadlist_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadListFragment;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    .line 188
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$3;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/fragment/ReportingFragment$Listener;)V

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->F()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 207
    sget v0, Lcom/facebook/R$id;->thread_list_version_upgrade_promo:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->v:Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

    .line 208
    sget v0, Lcom/facebook/R$id;->thread_list_mute_warning:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->w:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    .line 209
    sget v0, Lcom/facebook/R$id;->thread_list_sync_disabled_warning:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->x:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    .line 210
    sget v0, Lcom/facebook/R$id;->thread_list_animation_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->y:Landroid/widget/FrameLayout;

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V

    .line 213
    sget v0, Lcom/facebook/R$id;->nux_scrim:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/nux/NuxScrimView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->C:Lcom/facebook/orca/nux/NuxScrimView;

    .line 214
    sget v0, Lcom/facebook/R$id;->nux_sms_intro:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/nux/NuxSmsIntroView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->D:Lcom/facebook/orca/nux/NuxSmsIntroView;

    .line 215
    const-class v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v6, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/nux/OrcaNuxManager;

    .line 216
    invoke-virtual {v1}, Lcom/facebook/orca/nux/OrcaNuxManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/facebook/orca/nux/ThreadListNuxController;

    const-class v2, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v6, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-class v3, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v6, v3}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v4, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->C:Lcom/facebook/orca/nux/NuxScrimView;

    iget-object v5, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->D:Lcom/facebook/orca/nux/NuxSmsIntroView;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/nux/ThreadListNuxController;-><init>(Lcom/facebook/orca/nux/OrcaNuxManager;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/nux/NuxScrimView;Lcom/facebook/orca/nux/NuxSmsIntroView;)V

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->B:Lcom/facebook/orca/nux/ThreadListNuxController;

    .line 225
    :cond_0
    const-class v0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v6, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->F:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->F:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b()V

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->w:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->setAnimationContainer(Landroid/widget/FrameLayout;)V

    .line 229
    new-instance v2, Lcom/facebook/orca/threadlist/MuteGlobalWarningController;

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v6, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v1, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v6, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->w:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/orca/threadlist/MuteGlobalWarningController;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/notify/NotificationSettingsUtil;Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;)V

    iput-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->z:Lcom/facebook/orca/threadlist/MuteGlobalWarningController;

    .line 234
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/facebook/orca/threadview/ThreadViewUtil;->a:Z

    if-eqz v0, :cond_1

    .line 237
    iput-boolean v8, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->H:Z

    .line 238
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(Ljava/lang/String;)V

    .line 241
    :cond_1
    if-eqz v7, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->o()V

    .line 244
    :cond_2
    return-void

    .line 170
    :cond_3
    invoke-static {}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->orca_compose:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    const-string v1, "compose_button"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->i()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setButtonSpecs(Ljava/util/List;)V

    .line 176
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$2;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V

    goto/16 :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "thread_list"

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 522
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    .line 524
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 527
    const-string v0, "http://m.facebook.com/mobile/messenger/help"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 528
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/locale/FBLocaleMapper;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 529
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 530
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    .line 531
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->F()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onAttachedToWindow()V

    .line 122
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 125
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->E:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->A:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->H:Z

    if-eqz v0, :cond_2

    .line 347
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 349
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->r()V

    goto :goto_0

    .line 353
    :cond_3
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 606
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 607
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->A:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d()V

    .line 608
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 414
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->F()Landroid/widget/ListView;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 416
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 417
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 419
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 420
    instance-of v2, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v2, :cond_1

    .line 421
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 422
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/mutators/DeleteThreadActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    const-string v3, "threadid"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v2}, Lcom/facebook/orca/threadlist/ThreadListActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 445
    :goto_0
    return v0

    .line 427
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_2

    .line 428
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 430
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 431
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_1

    .line 432
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 433
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 445
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 435
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 436
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 438
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 439
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_1

    .line 440
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 441
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 392
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/FbFragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 393
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->F()Landroid/widget/ListView;

    move-result-object v0

    .line 394
    if-ne p2, v0, :cond_1

    .line 395
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 396
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 397
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 398
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_1

    .line 399
    sget v1, Lcom/facebook/R$string;->thread_context_menu_title:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 400
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    sget v0, Lcom/facebook/R$string;->thread_context_menu_archive_conversation:I

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 406
    :cond_0
    sget v0, Lcom/facebook/R$string;->thread_context_menu_delete_conversation:I

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 410
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 450
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 452
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Landroid/view/Menu;)Z

    move-result v0

    .line 469
    :goto_0
    return v0

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 457
    sget v1, Lcom/facebook/R$menu;->thread_list_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 459
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->p:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->u()Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    :cond_1
    sget v0, Lcom/facebook/R$id;->send_log_menu_item:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 462
    sget v0, Lcom/facebook/R$id;->force_crash_menu_item:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->o:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 466
    sget v0, Lcom/facebook/R$id;->goto_contacts_list_menu_item:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 469
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/facebook/orca/activity/FbFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 370
    :goto_0
    return v0

    .line 368
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 370
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/activity/FbFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 489
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 490
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 493
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 494
    sget v2, Lcom/facebook/R$id;->refresh:I

    if-ne v1, v2, :cond_3

    .line 495
    const-string v1, "refresh"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->p()V

    goto :goto_0

    .line 498
    :cond_3
    sget v2, Lcom/facebook/R$id;->help:I

    if-ne v1, v2, :cond_4

    .line 499
    const-string v1, "help"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->j()V

    goto :goto_0

    .line 502
    :cond_4
    sget v2, Lcom/facebook/R$id;->preferences:I

    if-ne v1, v2, :cond_5

    .line 503
    const-string v1, "preferences"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->i()V

    goto :goto_0

    .line 506
    :cond_5
    sget v2, Lcom/facebook/R$id;->send_log_menu_item:I

    if-ne v1, v2, :cond_6

    .line 507
    const-string v1, "send_log_menu_item"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->r:Lcom/facebook/orca/debug/LogReportSender;

    invoke-virtual {v1}, Lcom/facebook/orca/debug/LogReportSender;->a()V

    goto :goto_0

    .line 510
    :cond_6
    sget v2, Lcom/facebook/R$id;->force_crash_menu_item:I

    if-ne v1, v2, :cond_7

    .line 511
    const-string v0, "force_crash_menu_item"

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Forcing crash (internal)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_7
    sget v2, Lcom/facebook/R$id;->goto_contacts_list_menu_item:I

    if-ne v1, v2, :cond_8

    .line 514
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->q()V

    goto :goto_0

    .line 517
    :cond_8
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 329
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onPause()V

    .line 330
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListActivity;->n:Ljava/lang/Class;

    const-string v1, "ThreadListActivity.onPause"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;)V

    .line 332
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 475
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->d(Landroid/view/Menu;)Z

    move-result v0

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 290
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onResume()V

    .line 291
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListActivity;->n:Ljava/lang/Class;

    const-string v1, "ThreadListActivity.onResume"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->q:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->c()V

    .line 298
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->v:Lcom/facebook/orca/threadlist/VersionUpgradePromoView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->p:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/DataCache;->f()Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/VersionUpgradePromoView;->setAppConfig(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 299
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->z:Lcom/facebook/orca/threadlist/MuteGlobalWarningController;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/MuteGlobalWarningController;->a()V

    .line 300
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->x:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->a()V

    .line 301
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->x:Lcom/facebook/orca/threadlist/SyncDisabledWarningView;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->w:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->setVisibility(I)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->B:Lcom/facebook/orca/nux/ThreadListNuxController;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->B:Lcom/facebook/orca/nux/ThreadListNuxController;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListActivity$6;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/nux/ThreadListNuxController;->a(Lcom/facebook/orca/nux/ThreadListNuxController$OnNuxFinishedListener;)V

    .line 317
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->B:Lcom/facebook/orca/nux/ThreadListNuxController;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/ThreadListNuxController;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->setRequestedOrientation(I)V

    .line 325
    :goto_1
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->w:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->setVisibility(I)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/orca/threadlist/ThreadListActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {p0, v2}, Lcom/facebook/orca/threadlist/ThreadListActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onUserInteraction()V

    .line 377
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->b()V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->u:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->c()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onWindowFocusChanged(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;->G:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Z)V

    .line 363
    :cond_0
    return-void
.end method
