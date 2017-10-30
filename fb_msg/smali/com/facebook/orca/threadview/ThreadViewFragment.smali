.class public Lcom/facebook/orca/threadview/ThreadViewFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ThreadViewFragment.java"

# interfaces
.implements Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;
.implements Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;


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
.field private Y:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

.field private Z:Landroid/view/inputmethod/InputMethodManager;

.field private aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

.field private aB:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:Z

.field private aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

.field private aJ:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

.field private aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

.field private aL:Z

.field private aa:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private ab:Lcom/facebook/orca/cache/ArchiveThreadManager;

.field private ac:Lcom/facebook/orca/cache/SpamThreadManager;

.field private ad:Lcom/facebook/orca/cache/ReadThreadManager;

.field private ae:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private af:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private ag:Lcom/facebook/orca/prefs/UiCounters;

.field private ah:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

.field private ai:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

.field private aj:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private am:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private an:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

.field private ao:Lcom/facebook/orca/compose/LocationNuxController;

.field private ap:Lcom/facebook/orca/compose/LocationNuxView;

.field private aq:Lcom/facebook/orca/compose/LocationDisabledNuxView;

.field private ar:Ljava/lang/String;

.field private as:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

.field private at:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private au:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private av:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private aw:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

.field private ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

.field private ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

.field private az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

.field private b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/orca/threadview/ThreadViewLoader;

.field private e:Lcom/facebook/orca/cache/DataCache;

.field private f:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private h:Landroid/support/v4/app/FragmentManager;

.field private i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewFragment;

    sput-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 167
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->a:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    return-void
.end method

.method private I()V
    .locals 3

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 306
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewLoader;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewLoader;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->d:Lcom/facebook/orca/threadview/ThreadViewLoader;

    .line 307
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->e:Lcom/facebook/orca/cache/DataCache;

    .line 308
    const-class v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->f:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 309
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 310
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->h:Landroid/support/v4/app/FragmentManager;

    .line 311
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    .line 312
    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->Y:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    .line 313
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->Z:Landroid/view/inputmethod/InputMethodManager;

    .line 314
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aa:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 315
    const-class v0, Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ArchiveThreadManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ab:Lcom/facebook/orca/cache/ArchiveThreadManager;

    .line 316
    const-class v0, Lcom/facebook/orca/cache/SpamThreadManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/SpamThreadManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ac:Lcom/facebook/orca/cache/SpamThreadManager;

    .line 317
    const-class v0, Lcom/facebook/orca/cache/ReadThreadManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ReadThreadManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ad:Lcom/facebook/orca/cache/ReadThreadManager;

    .line 318
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ae:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 319
    const-class v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->af:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 320
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aw:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    .line 321
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ag:Lcom/facebook/orca/prefs/UiCounters;

    .line 322
    const-class v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ah:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    .line 323
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->b:Ljavax/inject/Provider;

    .line 326
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsTelephonyAvailable;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->c:Ljavax/inject/Provider;

    .line 329
    const-class v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aB:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    .line 330
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ai:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    .line 331
    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 337
    sget v0, Lcom/facebook/R$id;->threadview_empty_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->am:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 338
    sget v0, Lcom/facebook/R$id;->compose_location_nux:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/LocationNuxView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ap:Lcom/facebook/orca/compose/LocationNuxView;

    .line 339
    sget v0, Lcom/facebook/R$id;->compose_location_disabled_nux:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/LocationDisabledNuxView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aq:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    .line 340
    sget v0, Lcom/facebook/R$id;->thread_view_rate_limit_popup:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->an:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    .line 341
    return-void
.end method

.method private K()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 344
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->m()Landroid/content/res/Resources;

    move-result-object v0

    .line 345
    invoke-static {}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->orca_info_button:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    const-string v1, "back_side_button"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->i()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v0

    .line 350
    invoke-static {}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->m()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/R$string;->menu_edit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v1

    const-string v2, "edit_contact_button"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->i()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v1

    .line 356
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->at:Ljava/util/List;

    .line 357
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->au:Ljava/util/List;

    .line 358
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->av:Ljava/util/List;

    .line 360
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->at:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setButtonSpecs(Ljava/util/List;)V

    .line 361
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewFragment$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V

    .line 385
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    sget v1, Lcom/facebook/R$string;->thread_list_view_updating:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-interface {v0, v4}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setHasProgressBar(Z)V

    .line 387
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aw:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V

    .line 388
    return-void
.end method

.method private L()V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aa:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/prefs/MessagesPrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 397
    sget-object v2, Lcom/facebook/orca/notify/NotificationSetting;->a:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 398
    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0
.end method

.method private M()V
    .locals 3

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aD:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aH:Z

    if-nez v0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    const-string v1, "focus_compose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const-string v1, "focus_compose"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 467
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->N()V

    goto :goto_0
.end method

.method private N()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c()V

    .line 576
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->H()Lcom/facebook/orca/compose/ComposeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->b()V

    .line 578
    :cond_0
    return-void
.end method

.method private O()Lcom/facebook/orca/threads/ThreadSummary;
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    .line 633
    if-eqz v0, :cond_0

    .line 636
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->e:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    goto :goto_0
.end method

.method private P()Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 2

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->O()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->af:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    return-object v0
.end method

.method private Q()V
    .locals 4

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aF:Z

    if-eqz v0, :cond_0

    .line 752
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->h:Landroid/support/v4/app/FragmentManager;

    const-string v1, "groupContactCard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    .line 708
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    if-nez v0, :cond_1

    .line 709
    new-instance v0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-direct {v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    .line 710
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->h:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 711
    sget v1, Lcom/facebook/R$id;->thread_view_child_fragment_container:I

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    const-string v3, "groupContactCard"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 714
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 715
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewFragment$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewFragment$5;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a(Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;)V

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aF:Z

    goto :goto_0
.end method

.method private R()V
    .locals 4

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aG:Z

    if-eqz v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    .line 762
    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabShim;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->h:Landroid/support/v4/app/FragmentManager;

    const-string v1, "mapForContactCard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    .line 767
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    if-nez v0, :cond_1

    .line 768
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    invoke-direct {v0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    .line 769
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->h:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 770
    sget v1, Lcom/facebook/R$id;->thread_view_child_fragment_container:I

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    const-string v3, "mapForContactCard"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 773
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 774
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 777
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aG:Z

    goto :goto_0
.end method

.method private S()V
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->d(Z)V

    .line 782
    return-void
.end method

.method private T()V
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->d(Z)V

    .line 786
    return-void
.end method

.method private U()V
    .locals 4

    .prologue
    .line 854
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    .line 855
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 856
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    new-instance v2, Lcom/facebook/orca/mutators/LeaveThreadDialogFragment;

    invoke-direct {v2}, Lcom/facebook/orca/mutators/LeaveThreadDialogFragment;-><init>()V

    .line 861
    new-instance v3, Lcom/facebook/orca/threadview/ThreadViewFragment$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment$6;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/users/User;)V

    invoke-virtual {v2, v3}, Lcom/facebook/orca/mutators/LeaveThreadDialogFragment;->a(Lcom/facebook/orca/mutators/LeaveThreadDialogFragment$LeaveThreadListener;)V

    .line 869
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->n()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "leaveThreadDialog"

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/mutators/LeaveThreadDialogFragment;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private V()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->d:Lcom/facebook/orca/threadview/ThreadViewLoader;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aw:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Z)V

    .line 879
    :cond_0
    return-void
.end method

.method private W()V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aw:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Z)V

    .line 886
    return-void
.end method

.method private X()V
    .locals 4

    .prologue
    .line 917
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    .line 918
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v1, v1, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->b:Lcom/facebook/orca/threads/MessagesCollection;

    .line 919
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aw:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 921
    sget-object v2, Lcom/facebook/orca/threadview/ThreadViewFragment$13;->a:[I

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    invoke-virtual {v3}, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 941
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 923
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V

    .line 925
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aw:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 929
    :pswitch_2
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    if-eqz v2, :cond_1

    .line 930
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;)V

    goto :goto_0

    .line 931
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    if-eqz v2, :cond_0

    .line 932
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;)V

    goto :goto_0

    .line 936
    :pswitch_3
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    if-eqz v2, :cond_0

    .line 937
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0

    .line 921
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private Y()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    .line 1098
    :goto_0
    return-object v0

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    goto :goto_0

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1094
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    goto :goto_0

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1096
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    goto :goto_0

    .line 1098
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Z()V
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->MESSAGES:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1105
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->CONTACTCARD:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    goto :goto_0

    .line 1106
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1107
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->GROUP_CONTACTCARD:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    goto :goto_0

    .line 1108
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->MAP:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aj:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 989
    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 889
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(J)V

    .line 890
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Z)V

    .line 892
    if-eqz p2, :cond_0

    .line 893
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->H()Lcom/facebook/orca/compose/ComposeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->u()Landroid/view/View;

    move-result-object v0

    .line 894
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(I)V

    .line 899
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->Y:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v2, p1, v3}, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a(Lcom/facebook/orca/ops/ServiceException;Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    .line 903
    return-void

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    check-cast v0, Landroid/view/View;

    .line 897
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(I)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 979
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->T()V

    .line 980
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 822
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aw:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 823
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/users/User;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ak:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1212
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/RemoveMemberParams;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/RemoveMemberParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1214
    const-string v2, "removeMemberParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1215
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ai:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v3, "remove_member"

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    .line 1220
    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/facebook/R$string;->thread_leave_progress:I

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 1222
    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ak:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1224
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ak:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewFragment$11;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewFragment$11;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threadview/ThreadViewFragment$State;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1029
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->MESSAGES:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    if-ne v0, v1, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->Z:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->u()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1034
    :cond_0
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment$13;->a:[I

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1050
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot transition to that state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/users/UserKey;)V

    .line 1039
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    .line 1053
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->Y()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1055
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->h:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1056
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1057
    sget v3, Lcom/facebook/R$anim;->in_from_right:I

    sget v4, Lcom/facebook/R$anim;->out_to_left:I

    sget v5, Lcom/facebook/R$anim;->in_from_left:I

    sget v6, Lcom/facebook/R$anim;->out_to_right:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->a(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 1068
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1069
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1070
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 1072
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    .line 1073
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v1, v1, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->b:Lcom/facebook/orca/threads/MessagesCollection;

    .line 1074
    sget-object v2, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->MAP:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    if-ne p1, v2, :cond_2

    .line 1075
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1076
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V

    .line 1083
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    .line 1084
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->X()V

    .line 1085
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->aa()V

    .line 1086
    return-void

    .line 1042
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->Q()V

    .line 1043
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    goto :goto_0

    .line 1046
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->R()V

    .line 1047
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ay:Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;

    goto :goto_0

    .line 1078
    :cond_2
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->CONTACTCARD:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    if-ne p1, v0, :cond_3

    .line 1079
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->E()V

    goto :goto_1

    .line 1080
    :cond_3
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->GROUP_CONTACTCARD:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    if-ne p1, v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->b()V

    goto :goto_1

    .line 1034
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->S()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/users/User;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/users/User;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threadview/ThreadViewFragment$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threadview/ThreadViewFragment$State;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Error;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Error;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/users/UserKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/users/UserKey;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V
    .locals 3
    .parameter

    .prologue
    .line 805
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 806
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->THREAD_VIEW:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    if-ne p1, v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->am:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->m()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->thread_loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->am:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 809
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->V()V

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Error;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 832
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->W()V

    .line 833
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->THREAD_VIEW:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    if-ne p1, v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->b:Lcom/facebook/orca/threads/MessagesCollection;

    if-nez v0, :cond_2

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->am:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 836
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->am:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 842
    :goto_0
    iget-boolean v0, p2, Lcom/facebook/orca/threadview/ThreadViewLoader$Error;->b:Z

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p2, Lcom/facebook/orca/threadview/ThreadViewLoader$Error;->a:Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/ops/ServiceException;Z)V

    .line 851
    :cond_1
    :goto_1
    return-void

    .line 839
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Z)V

    .line 840
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->X()V

    goto :goto_0

    .line 846
    :cond_3
    iget-boolean v0, p2, Lcom/facebook/orca/threadview/ThreadViewLoader$Error;->b:Z

    if-eqz v0, :cond_4

    .line 847
    iget-object v0, p2, Lcom/facebook/orca/threadview/ThreadViewLoader$Error;->a:Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Lcom/facebook/orca/ops/ServiceException;Z)V

    .line 849
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->I()V

    goto :goto_1
.end method

.method private a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 816
    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    .line 817
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->am:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Z)V

    .line 818
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->X()V

    .line 819
    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserKey;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 648
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 698
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->h:Landroid/support/v4/app/FragmentManager;

    const-string v1, "contactCard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/ContactCardFragment;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    .line 654
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    if-nez v0, :cond_1

    .line 655
    new-instance v0, Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-direct {v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    .line 656
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->h:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 657
    sget v1, Lcom/facebook/R$id;->thread_view_child_fragment_container:I

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    const-string v3, "contactCard"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 659
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 660
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 663
    :cond_1
    if-nez p1, :cond_3

    .line 664
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->P()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_2

    .line 668
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/users/UserKey;Z)V

    .line 674
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewFragment$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewFragment$4;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V

    .line 697
    iput-boolean v4, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aE:Z

    goto :goto_0

    .line 671
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/users/UserKey;Z)V

    goto :goto_1
.end method

.method private aa()V
    .locals 2

    .prologue
    .line 1114
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment$13;->a:[I

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1130
    :goto_0
    return-void

    .line 1116
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->at:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setButtonSpecs(Ljava/util/List;)V

    goto :goto_0

    .line 1119
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->au:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setButtonSpecs(Ljava/util/List;)V

    goto :goto_0

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->av:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setButtonSpecs(Ljava/util/List;)V

    goto :goto_0

    .line 1127
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->al:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->av:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setButtonSpecs(Ljava/util/List;)V

    goto :goto_0

    .line 1114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ab()V
    .locals 5

    .prologue
    .line 1133
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aH:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aC:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    if-nez v0, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->e:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 1138
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v2, v2, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    .line 1139
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ad:Lcom/facebook/orca/cache/ReadThreadManager;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/ReadThreadManager;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewFragment;)Lcom/facebook/orca/threadview/ThreadViewFragment$State;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ak:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewFragment$12;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewFragment$12;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 1252
    return-void
.end method

.method private b(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 3
    .parameter

    .prologue
    .line 1185
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/R$string;->menu_mark_as_spam_confirm:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes"

    new-instance v2, Lcom/facebook/orca/threadview/ThreadViewFragment$10;

    invoke-direct {v2, p0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment$10;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threads/ThreadSummary;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v2, Lcom/facebook/orca/threadview/ThreadViewFragment$9;

    invoke-direct {v2, p0}, Lcom/facebook/orca/threadview/ThreadViewFragment$9;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1199
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Lcom/facebook/orca/threads/ThreadSummary;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewFragment;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->b(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V
    .locals 2
    .parameter

    .prologue
    .line 826
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->am:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 827
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->am:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 828
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->W()V

    .line 829
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewFragment;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->O()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 1202
    const-string v0, "mark_as_spam"

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ac:Lcom/facebook/orca/cache/SpamThreadManager;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/SpamThreadManager;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 1204
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 509
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ae:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v2, "click"

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "opt_menu_item"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 512
    return-void
.end method

.method private c(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 607
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aD:Z

    if-eqz v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->am:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 612
    if-eqz p1, :cond_1

    .line 613
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 614
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 615
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 616
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 617
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->u()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 619
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aD:Z

    .line 620
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 621
    const-string v1, "for_sharing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->c()V

    .line 623
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->H()Lcom/facebook/orca/compose/ComposeFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->b(Landroid/content/Intent;)V

    .line 624
    const-string v1, "for_sharing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 626
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->M()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/orca/threadview/ThreadViewFragment;)Lcom/facebook/contacts/contactcard/ContactCardFragment;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    return-object v0
.end method

.method private d(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 790
    if-eqz p1, :cond_0

    .line 791
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    invoke-direct {v0, v2, v2}, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;-><init>(ZZ)V

    .line 801
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->d:Lcom/facebook/orca/threadview/ThreadViewLoader;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$Params;)V

    .line 802
    return-void

    .line 796
    :cond_0
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    invoke-direct {v0, v1, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;-><init>(ZZ)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/facebook/orca/threadview/ThreadViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->aa()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/threadview/ThreadViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->T()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/orca/threadview/ThreadViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->U()V

    return-void
.end method


# virtual methods
.method E()V
    .locals 0

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->F()Z

    .line 993
    return-void
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->h:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 998
    const/4 v0, 0x0

    .line 1003
    :goto_0
    return v0

    .line 1000
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->Z()V

    .line 1001
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->aa()V

    .line 1002
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->X()V

    .line 1003
    const/4 v0, 0x1

    goto :goto_0
.end method

.method H()V
    .locals 4

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->u()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewFragment$8;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewFragment$8;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1020
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    sget v0, Lcom/facebook/R$layout;->orca_thread_view_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 211
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewFragment$1;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->as:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    .line 222
    return-void
.end method

.method public a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 1
    .parameter

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ao:Lcom/facebook/orca/compose/LocationNuxController;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 1009
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->an:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 1010
    return-void
.end method

.method public a(Lcom/facebook/orca/server/ModifyThreadParams;)V
    .locals 4
    .parameter

    .prologue
    .line 944
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aj:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 972
    :goto_0
    return-void

    .line 948
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 949
    const-string v0, "modifyThreadParams"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 950
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ai:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v3, "modify_thread"

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    .line 955
    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/facebook/R$string;->thread_view_saving_progress:I

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 958
    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aj:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 959
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aj:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewFragment$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewFragment$7;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    .line 179
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aL:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->an:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->setThreadId(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->as:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->L()V

    .line 185
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->S()V

    .line 186
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->ab()V

    .line 188
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    .line 190
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->af:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->az:Lcom/facebook/contacts/contactcard/ContactCardFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/facebook/contacts/contactcard/ContactCardFragment;->a(Lcom/facebook/orca/users/UserKey;Z)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aA:Lcom/facebook/contacts/contactcard/GroupContactCardFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a(Ljava/lang/String;)V

    .line 199
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aH:Z

    .line 452
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->ab()V

    .line 453
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->M()V

    .line 454
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->N()V

    .line 554
    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->f:Lcom/facebook/orca/notify/OrcaNotificationManager;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->f:Lcom/facebook/orca/notify/OrcaNotificationManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Ljava/lang/String;)V

    .line 565
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->ab()V

    .line 567
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 910
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->d:Lcom/facebook/orca/threadview/ThreadViewLoader;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Z)V

    .line 911
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 473
    sget v1, Lcom/facebook/R$menu;->thread_view_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 474
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    sget v0, Lcom/facebook/R$id;->archive:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 477
    :cond_0
    sget v0, Lcom/facebook/R$id;->mark_as_spam:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 478
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->MESSAGES:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aJ:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 518
    sget v2, Lcom/facebook/R$id;->refresh:I

    if-ne v1, v2, :cond_1

    .line 519
    const-string v1, "refresh"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->T()V

    .line 544
    :cond_0
    :goto_0
    return v0

    .line 523
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aK:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v2, v2, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    .line 524
    sget v3, Lcom/facebook/R$id;->archive:I

    if-ne v1, v3, :cond_2

    .line 525
    if-eqz v2, :cond_0

    .line 526
    const-string v1, "archive"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ab:Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ArchiveThreadManager;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 530
    :cond_2
    sget v3, Lcom/facebook/R$id;->mark_as_spam:I

    if-ne v1, v3, :cond_3

    .line 531
    if-eqz v2, :cond_0

    .line 532
    invoke-direct {p0, v2}, Lcom/facebook/orca/threadview/ThreadViewFragment;->b(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 535
    :cond_3
    sget v3, Lcom/facebook/R$id;->delete:I

    if-ne v1, v3, :cond_4

    .line 536
    if-eqz v2, :cond_0

    .line 537
    const-string v1, "delete"

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->c(Ljava/lang/String;)V

    .line 538
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/mutators/DeleteThreadActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    const-string v3, "threadid"

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 544
    :cond_4
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xff

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 232
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment;->a:Ljava/lang/Class;

    const-string v1, "threadID wasn\'t set before fragment was attached to activity!"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->I()V

    .line 236
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->J()V

    .line 237
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->K()V

    .line 239
    new-instance v0, Lcom/facebook/orca/compose/LocationNuxController;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ag:Lcom/facebook/orca/prefs/UiCounters;

    invoke-direct {v0, v1}, Lcom/facebook/orca/compose/LocationNuxController;-><init>(Lcom/facebook/orca/prefs/UiCounters;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ao:Lcom/facebook/orca/compose/LocationNuxController;

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ao:Lcom/facebook/orca/compose/LocationNuxController;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ap:Lcom/facebook/orca/compose/LocationNuxView;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aq:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/LocationNuxView;Lcom/facebook/orca/compose/LocationDisabledNuxView;)V

    .line 242
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->h:Landroid/support/v4/app/FragmentManager;

    const-string v1, "threadViewMessageFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    if-nez v0, :cond_1

    .line 245
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-direct {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->h:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 247
    sget v1, Lcom/facebook/R$id;->thread_view_child_fragment_container:I

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    const-string v3, "threadViewMessageFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 250
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ao:Lcom/facebook/orca/compose/LocationNuxController;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/compose/LocationNuxController;)V

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ax:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;)V

    .line 257
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->an:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->setThreadId(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->as:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->d:Lcom/facebook/orca/threadview/ThreadViewLoader;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->MESSAGES:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    .line 263
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->d:Lcom/facebook/orca/threadview/ThreadViewLoader;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewFragment$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;)V

    .line 290
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->L()V

    .line 295
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->as:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a()V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aL:Z

    .line 301
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 302
    return-void
.end method

.method public d(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 483
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aJ:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    if-ne v1, v2, :cond_0

    .line 505
    :goto_0
    return v0

    .line 487
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 488
    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewFragment$13;->a:[I

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aI:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    invoke-virtual {v2}, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 490
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 491
    sget v2, Lcom/facebook/R$menu;->thread_view_menu:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 492
    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->MESSAGES:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aJ:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    goto :goto_0

    .line 495
    :pswitch_1
    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->GROUP_CONTACTCARD:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aJ:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    goto :goto_0

    .line 498
    :pswitch_2
    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->CONTACTCARD:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aJ:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    goto :goto_0

    .line 502
    :pswitch_3
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewFragment$State;->MAP:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aJ:Lcom/facebook/orca/threadview/ThreadViewFragment$State;

    .line 503
    const/4 v0, 0x0

    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public e()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->e()V

    .line 404
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->as:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a(Z)V

    .line 405
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 409
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->f()V

    .line 410
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->as:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a(Z)V

    .line 411
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "thread_view"

    return-object v0
.end method

.method public v()V
    .locals 3

    .prologue
    .line 415
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->v()V

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aC:Z

    .line 418
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 419
    const-string v1, "from_notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 420
    if-eqz v1, :cond_0

    .line 424
    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 425
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->T()V

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->f:Lcom/facebook/orca/notify/OrcaNotificationManager;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->b(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->ab()V

    .line 431
    return-void

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->S()V

    goto :goto_0
.end method

.method public w()V
    .locals 1

    .prologue
    .line 435
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->w()V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aC:Z

    .line 437
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 438
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->aB:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a()V

    .line 439
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 443
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->x()V

    .line 444
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->as:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->b()V

    .line 445
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 448
    :cond_0
    return-void
.end method
