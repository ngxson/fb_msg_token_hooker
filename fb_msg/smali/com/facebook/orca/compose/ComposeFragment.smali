.class public Lcom/facebook/orca/compose/ComposeFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ComposeFragment.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final aO:[I

.field private static final aP:[I

.field private static b:I

.field private static c:I

.field private static d:I


# instance fields
.field private Y:Landroid/support/v4/app/FragmentManager;

.field private Z:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private aA:Lcom/facebook/orca/compose/ComposeMode;

.field private aB:Lcom/facebook/orca/app/OrcaAppType;

.field private aC:Lcom/facebook/orca/users/UserKey;

.field private aD:Z

.field private aE:I

.field private aF:J

.field private aG:J

.field private aH:Z

.field private aI:Z

.field private aJ:Ljava/lang/Runnable;

.field private aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

.field private aL:Z

.field private aM:I

.field private aN:Z

.field private aa:Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

.field private ab:Lcom/facebook/orca/presence/PresenceManager;

.field private ac:Lcom/facebook/orca/prefs/UiCounters;

.field private ad:Landroid/location/LocationManager;

.field private ae:Landroid/view/LayoutInflater;

.field private af:Lcom/facebook/orca/push/common/PushDeserialization;

.field private ag:Lcom/facebook/orca/emoji/EmojiUtil;

.field private ah:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Lcom/facebook/orca/attachments/MediaAttachmentUtil;

.field private aj:Landroid/view/View;

.field private ak:Landroid/widget/EditText;

.field private al:Landroid/widget/ImageButton;

.field private am:Landroid/view/View;

.field private an:Landroid/widget/Button;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/widget/LinearLayout;

.field private aq:Landroid/widget/HorizontalScrollView;

.field private ar:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private as:Ljava/lang/String;

.field private at:Lcom/facebook/orca/photos/picking/PickMediaOperation;

.field private au:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/attachments/MediaAttachment;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

.field private aw:Landroid/location/Location;

.field private ax:Ljava/lang/Boolean;

.field private ay:Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;

.field private az:Lcom/facebook/orca/compose/LocationNuxController;

.field private e:Lcom/facebook/orca/cache/DataCache;

.field private f:Landroid/view/inputmethod/InputMethodManager;

.field private g:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

.field private h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    const-class v0, Lcom/facebook/orca/compose/ComposeFragment;

    sput-object v0, Lcom/facebook/orca/compose/ComposeFragment;->a:Ljava/lang/Class;

    .line 116
    const/16 v0, 0x1388

    sput v0, Lcom/facebook/orca/compose/ComposeFragment;->b:I

    .line 117
    sget v0, Lcom/facebook/orca/compose/ComposeFragment;->b:I

    add-int/lit8 v0, v0, -0x32

    sput v0, Lcom/facebook/orca/compose/ComposeFragment;->c:I

    .line 118
    sget v0, Lcom/facebook/orca/compose/ComposeFragment;->b:I

    add-int/lit8 v0, v0, -0x14

    sput v0, Lcom/facebook/orca/compose/ComposeFragment;->d:I

    .line 714
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/facebook/orca/compose/ComposeFragment;->aO:[I

    .line 715
    new-array v0, v2, [I

    sput-object v0, Lcom/facebook/orca/compose/ComposeFragment;->aP:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 167
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->INIT:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    return-void
.end method

.method private I()V
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 263
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aL:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a()V

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->d(Z)V

    goto :goto_0
.end method

.method private J()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/media/MediaResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 561
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachment;

    .line 562
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 564
    :cond_0
    return-object v1
.end method

.method private K()V
    .locals 2

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aD:Z

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aC:Lcom/facebook/orca/users/UserKey;

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aD:Z

    .line 573
    :cond_0
    return-void
.end method

.method private L()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 620
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 621
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aq:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 622
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V

    .line 623
    return-void
.end method

.method private M()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 755
    .line 756
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 757
    iget-boolean v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->aI:Z

    if-eqz v2, :cond_2

    .line 766
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 767
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->U()V

    .line 769
    :cond_1
    return-void

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->as:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 760
    goto :goto_0

    .line 762
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->as:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/prefs/MessagesPrefKeys;->b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 763
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v2, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private N()V
    .locals 3

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->T()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/debug/Assert;->a(Z)V

    .line 796
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->O()V

    .line 822
    :goto_0
    return-void

    .line 801
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->S()Z

    move-result v0

    if-nez v0, :cond_1

    .line 802
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->P()V

    goto :goto_0

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 807
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->as:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 808
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 809
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->as:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/orca/prefs/MessagesPrefKeys;->b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v2

    .line 810
    invoke-interface {v1, v2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 811
    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 813
    :cond_2
    if-eqz v0, :cond_4

    .line 814
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ax:Ljava/lang/Boolean;

    .line 815
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->U()V

    .line 816
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ac:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "enabled_shared_location_in_message"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 818
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ax:Ljava/lang/Boolean;

    .line 819
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->V()V

    .line 820
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ac:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "disabled_shared_location_in_message"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private O()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 829
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ae:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_location_services_composer_dialog_content:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 831
    sget v0, Lcom/facebook/R$id;->text_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 832
    sget v3, Lcom/facebook/R$string;->compose_location_services_setting_disabled_description:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 833
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 834
    sget v3, Lcom/facebook/R$string;->compose_location_services_disabled_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 835
    sget v3, Lcom/facebook/R$string;->dialog_enable:I

    new-instance v4, Lcom/facebook/orca/compose/ComposeFragment$11;

    invoke-direct {v4, p0}, Lcom/facebook/orca/compose/ComposeFragment$11;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 844
    sget v3, Lcom/facebook/R$string;->dialog_not_now:I

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 845
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 846
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 847
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 848
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->d(Ljava/lang/String;)V

    .line 863
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.settings.SETTINGS"

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 861
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private Q()Z
    .locals 1

    .prologue
    .line 910
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private R()Z
    .locals 3

    .prologue
    .line 919
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->q:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    return v0
.end method

.method private S()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 929
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 930
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 931
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->ad:Landroid/location/LocationManager;

    invoke-virtual {v2, v1, v0}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 932
    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private T()Z
    .locals 2

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 943
    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private U()V
    .locals 3

    .prologue
    .line 965
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->e()Landroid/location/Location;

    move-result-object v0

    .line 966
    if-eqz v0, :cond_1

    .line 967
    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 972
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ar:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 973
    invoke-static {}, Lcom/facebook/orca/server/GetDeviceLocationParams;->newBuilder()Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a(I)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a(J)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->c()Lcom/facebook/orca/server/GetDeviceLocationParams;

    move-result-object v0

    .line 977
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 978
    const-string v2, "getDeviceLocationParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 979
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ar:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "get_device_location"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 981
    :cond_0
    return-void

    .line 969
    :cond_1
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->FINDING_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    goto :goto_0
.end method

.method private V()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 984
    iput-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->aw:Landroid/location/Location;

    .line 985
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 986
    return-void
.end method

.method private W()V
    .locals 2

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->aa()V

    .line 1042
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Y()V

    .line 1043
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V

    .line 1044
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(ZZ)V

    .line 1045
    return-void
.end method

.method private X()V
    .locals 4

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aH:Z

    if-eqz v0, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1105
    :cond_0
    new-instance v0, Lcom/facebook/orca/compose/ComposeFragment$13;

    invoke-direct {v0, p0}, Lcom/facebook/orca/compose/ComposeFragment$13;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aJ:Ljava/lang/Runnable;

    .line 1112
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->aJ:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aH:Z

    goto :goto_0
.end method

.method private Y()V
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 1122
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1125
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1129
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private Z()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 1134
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->an:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1135
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->an:Landroid/widget/Button;

    invoke-virtual {v0, v3, v4, v3, v1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 1140
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1134
    goto :goto_0

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->an:Landroid/widget/Button;

    sget v1, Lcom/facebook/R$color;->composer_button_shadow:I

    invoke-virtual {v0, v3, v4, v3, v1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    goto :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 741
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 742
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 743
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 745
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 746
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 747
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 748
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->e(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;)Lcom/facebook/orca/attachments/MediaAttachmentFactory;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->g:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    return-object v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 947
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq v0, v1, :cond_0

    .line 948
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 950
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/attachments/MediaAttachment;)V
    .locals 2
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->au:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 630
    if-eqz v0, :cond_1

    .line 631
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aq:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 636
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 998
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    .line 999
    iput-object p2, p0, Lcom/facebook/orca/compose/ComposeFragment;->aw:Landroid/location/Location;

    .line 1001
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne p1, v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Landroid/widget/ImageButton;

    sget v3, Lcom/facebook/R$drawable;->orca_composer_location_off:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1015
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->az:Lcom/facebook/orca/compose/LocationNuxController;

    if-eqz v0, :cond_1

    .line 1016
    iget-object v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->az:Lcom/facebook/orca/compose/LocationNuxController;

    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq p1, v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeFragment;->ax:Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    move v3, v1

    :goto_2
    iget-boolean v5, p0, Lcom/facebook/orca/compose/ComposeFragment;->aI:Z

    if-nez v5, :cond_7

    :goto_3
    invoke-virtual {v4, v0, v3, v1}, Lcom/facebook/orca/compose/LocationNuxController;->a(ZZZ)V

    .line 1021
    :cond_1
    return-void

    .line 1004
    :cond_2
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->FINDING_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne p1, v0, :cond_3

    .line 1005
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Landroid/widget/ImageButton;

    sget v3, Lcom/facebook/R$drawable;->orca_composer_location_on:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1007
    :cond_3
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne p1, v0, :cond_4

    .line 1008
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Landroid/widget/ImageButton;

    sget v3, Lcom/facebook/R$drawable;->orca_composer_location_on:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 1010
    :cond_4
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->LOCATION_ERROR:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne p1, v0, :cond_0

    .line 1011
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    .line 1012
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Landroid/widget/ImageButton;

    sget v3, Lcom/facebook/R$drawable;->orca_composer_location_on:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1016
    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->g(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->b(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Lcom/facebook/orca/attachments/MediaAttachment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->b(Lcom/facebook/orca/attachments/MediaAttachment;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Lcom/facebook/orca/emoji/Emoji;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/emoji/Emoji;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/compose/ComposeFragment;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/compose/ComposeFragment;->a(ZZ)V

    return-void
.end method

.method private a(Lcom/facebook/orca/emoji/Emoji;)V
    .locals 3
    .parameter

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/high16 v1, 0x4160

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->b(Landroid/content/Context;F)I

    move-result v0

    .line 1340
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ag:Lcom/facebook/orca/emoji/EmojiUtil;

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v1, v2, p1, v0}, Lcom/facebook/orca/emoji/EmojiUtil;->a(Landroid/widget/EditText;Lcom/facebook/orca/emoji/Emoji;I)V

    .line 1341
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    .line 1038
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 959
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq v0, v1, :cond_0

    .line 960
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->LOCATION_ERROR:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 962
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/attachments/MediaAttachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 640
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachment;

    .line 641
    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->b(Lcom/facebook/orca/attachments/MediaAttachment;)V

    goto :goto_0

    .line 643
    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1049
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->K()V

    .line 1050
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->aC:Lcom/facebook/orca/users/UserKey;

    if-nez v2, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1054
    if-eqz p1, :cond_2

    .line 1055
    iput-wide v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->aG:J

    .line 1058
    :cond_2
    iget-object v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1060
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->q()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1068
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->ab:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v4}, Lcom/facebook/orca/presence/PresenceManager;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1072
    iget v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->aE:I

    if-ne v4, v0, :cond_5

    .line 1075
    iget v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->aE:I

    if-ne v4, v1, :cond_0

    .line 1076
    iget-wide v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->aF:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 1079
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->X()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v0

    .line 1097
    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment;->a:Ljava/lang/Class;

    const-string v2, "Exception sending typing notifications"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1062
    :cond_4
    :try_start_1
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->aG:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    move v0, v1

    .line 1063
    goto :goto_1

    .line 1087
    :cond_5
    iput v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aE:I

    .line 1088
    iput-wide v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->aF:J

    .line 1090
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->aC:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v2

    .line 1091
    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeFragment;->ab:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/orca/presence/PresenceManager;->a(Ljava/lang/String;I)V

    .line 1092
    iget v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aE:I

    if-ne v0, v1, :cond_0

    .line 1093
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->X()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->aH:Z

    return p1
.end method

.method private aa()V
    .locals 4

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1144
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1145
    sget v1, Lcom/facebook/orca/compose/ComposeFragment;->c:I

    if-le v0, v1, :cond_1

    .line 1146
    sget v1, Lcom/facebook/orca/compose/ComposeFragment;->d:I

    if-le v0, v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ao:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/R$color;->red_warning_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1151
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ao:Landroid/widget/TextView;

    sget v2, Lcom/facebook/orca/compose/ComposeFragment;->b:I

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ao:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1157
    :goto_1
    return-void

    .line 1149
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ao:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/R$color;->grey53:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ao:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ao:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private ab()V
    .locals 5

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    sget v1, Lcom/facebook/orca/compose/ComposeFragment;->b:I

    if-le v0, v1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ay:Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;

    if-eqz v0, :cond_0

    .line 1164
    iget-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aI:Z

    if-eqz v0, :cond_3

    .line 1165
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ac:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "sms_send_clicked"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 1169
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->as:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne v0, v1, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->e:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->as:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->aw:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;Landroid/location/Location;J)V

    .line 1172
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ay:Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;->a()V

    goto :goto_0

    .line 1167
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ac:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "send_clicked"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private ac()V
    .locals 0

    .prologue
    .line 1177
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->ab()V

    .line 1178
    return-void
.end method

.method private ad()V
    .locals 3

    .prologue
    .line 1181
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;-><init>(Z)V

    .line 1182
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->image_attachment_attach_image:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Ljava/lang/String;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 1183
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->at:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaParams;)V

    .line 1184
    return-void
.end method

.method private ae()V
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a()V

    .line 1190
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->d(Z)V

    .line 1191
    return-void
.end method

.method private af()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1194
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1195
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1197
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1198
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1199
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1200
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1202
    new-array v8, v13, [I

    .line 1203
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1206
    aget v4, v8, v7

    .line 1207
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int v9, v4, v0

    .line 1210
    sub-int v10, v1, v9

    .line 1214
    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v0

    .line 1222
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v11, 0x42c8

    invoke-static {v5, v11}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v5

    .line 1223
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x4100

    invoke-static {v11, v12}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v11

    .line 1225
    if-gt v10, v5, :cond_3

    if-le v0, v10, :cond_3

    .line 1228
    const v5, 0x10000053

    .line 1229
    add-int v2, v4, v11

    sub-int/2addr v1, v2

    move v4, v6

    .line 1242
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/facebook/R$dimen;->emoji_category_height_dp:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1244
    new-instance v9, Lcom/facebook/orca/emoji/EmojiSizingCalculator;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/orca/emoji/EmojiSizingCalculator;-><init>(Landroid/content/res/Resources;)V

    add-int v10, v2, v11

    sub-int v10, v0, v10

    invoke-virtual {v9, v3, v10, v4}, Lcom/facebook/orca/emoji/EmojiSizingCalculator;->a(IIZ)Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    move-result-object v9

    .line 1248
    invoke-virtual {v9}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->m()I

    move-result v9

    add-int/2addr v2, v9

    add-int/2addr v2, v11

    .line 1249
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v13, :cond_0

    .line 1250
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v9, 0x4316

    invoke-static {v2, v9}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v2

    .line 1254
    :cond_0
    if-eqz v4, :cond_4

    move v2, v0

    .line 1262
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->n()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 1263
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->n()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v10, "dialog"

    invoke-virtual {v0, v10}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1264
    if-eqz v0, :cond_2

    .line 1265
    invoke-virtual {v9, v0}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1268
    :cond_2
    aget v0, v8, v6

    invoke-static/range {v0 .. v5}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(IIIIZI)Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    .line 1275
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$14;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$14;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;)V

    .line 1323
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-virtual {v0, v13, v6}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(II)V

    .line 1324
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    const-string v1, "dialog"

    invoke-virtual {v0, v9, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 1325
    invoke-direct {p0, v7}, Lcom/facebook/orca/compose/ComposeFragment;->d(Z)V

    .line 1326
    iput-boolean v7, p0, Lcom/facebook/orca/compose/ComposeFragment;->aN:Z

    .line 1327
    return-void

    .line 1234
    :cond_3
    const v5, 0x10000033

    .line 1235
    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v11

    sub-int v1, v9, v0

    .line 1237
    add-int v0, v10, v11

    move v4, v7

    .line 1238
    goto :goto_0

    .line 1256
    :cond_4
    if-gt v0, v2, :cond_1

    move v2, v0

    .line 1259
    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/orca/compose/ComposeFragment;)Lcom/facebook/orca/compose/ComposeMode;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aA:Lcom/facebook/orca/compose/ComposeMode;

    return-object v0
.end method

.method private b(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 953
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq v0, v1, :cond_0

    .line 954
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 956
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/orca/attachments/MediaAttachment;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 647
    if-nez p1, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V

    .line 712
    :goto_0
    return-void

    .line 652
    :cond_0
    const/4 v0, 0x0

    .line 653
    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$15;->a:[I

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaResource$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object v2, v0

    .line 662
    :goto_1
    if-nez v2, :cond_1

    .line 663
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to preview from attachment at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 664
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V

    goto :goto_0

    .line 655
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->c(Lcom/facebook/orca/attachments/MediaAttachment;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    .line 656
    goto :goto_1

    .line 658
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ae:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_composer_attachment_item:I

    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeFragment;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 670
    sget v1, Lcom/facebook/R$id;->composer_attachment_item_image:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 671
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 673
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/media/MediaResource$Type;->AUDIO:Lcom/facebook/orca/media/MediaResource$Type;

    if-ne v2, v3, :cond_2

    .line 674
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 675
    new-instance v2, Lcom/facebook/orca/compose/ComposeFragment$9;

    invoke-direct {v2, p0, p1}, Lcom/facebook/orca/compose/ComposeFragment$9;-><init>(Lcom/facebook/orca/compose/ComposeFragment;Lcom/facebook/orca/attachments/MediaAttachment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    :cond_2
    sget v1, Lcom/facebook/R$id;->composer_attachment_item_remove:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 702
    new-instance v2, Lcom/facebook/orca/compose/ComposeFragment$10;

    invoke-direct {v2, p0, p1}, Lcom/facebook/orca/compose/ComposeFragment$10;-><init>(Lcom/facebook/orca/compose/ComposeFragment;Lcom/facebook/orca/attachments/MediaAttachment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 709
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->aq:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 710
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->au:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V

    goto/16 :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/facebook/orca/compose/ComposeFragment;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/compose/ComposeFragment;Lcom/facebook/orca/attachments/MediaAttachment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/attachments/MediaAttachment;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/compose/ComposeFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->d(Z)V

    return-void
.end method

.method private c(Lcom/facebook/orca/attachments/MediaAttachment;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/high16 v1, 0x4286

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v0

    .line 720
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->a(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 721
    if-nez v0, :cond_0

    .line 722
    const/4 v0, 0x0

    .line 737
    :goto_0
    return-object v0

    .line 725
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v1

    .line 726
    sget v2, Lcom/facebook/R$drawable;->orca_composer_overlay_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 728
    sget v3, Lcom/facebook/R$drawable;->orca_composer_overlay_pressed:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 731
    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 732
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 734
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 735
    sget-object v3, Lcom/facebook/orca/compose/ComposeFragment;->aO:[I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 736
    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment;->aP:[I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/compose/ComposeFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    return-object v0
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 990
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 995
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/compose/ComposeFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->aN:Z

    return p1
.end method

.method static synthetic d(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->N()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 871
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 872
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ae:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/R$layout;->orca_location_services_composer_dialog_content:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 874
    sget v0, Lcom/facebook/R$id;->text_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 876
    if-eqz p1, :cond_0

    .line 877
    sget v4, Lcom/facebook/R$string;->compose_location_services_phone_disabled_description:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 882
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 883
    sget v3, Lcom/facebook/R$string;->compose_location_services_disabled_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 884
    if-eqz p1, :cond_1

    .line 885
    sget v3, Lcom/facebook/R$string;->compose_location_services_phone_disabled_go_to_settings_button:I

    new-instance v4, Lcom/facebook/orca/compose/ComposeFragment$12;

    invoke-direct {v4, p0, p1}, Lcom/facebook/orca/compose/ComposeFragment$12;-><init>(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 894
    sget v3, Lcom/facebook/R$string;->dialog_cancel:I

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 898
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 899
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 900
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 901
    return-void

    .line 879
    :cond_0
    sget v4, Lcom/facebook/R$string;->compose_location_services_phone_disabled_description2:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 896
    :cond_1
    sget v3, Lcom/facebook/R$string;->dialog_ok:I

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1344
    if-eqz p1, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->am:Landroid/view/View;

    sget v1, Lcom/facebook/R$drawable;->orca_composer_popup_button_active:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1351
    :goto_0
    return-void

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->am:Landroid/view/View;

    sget v1, Lcom/facebook/R$drawable;->orca_composer_popup_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4
    .parameter

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v0

    .line 1025
    new-instance v1, Lcom/facebook/orca/common/util/StyledStringBuilder;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 1026
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lcom/facebook/R$color;->notification_greyish_light:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 1029
    invoke-virtual {v1, p1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 1030
    invoke-virtual {v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a()Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 1031
    invoke-virtual {v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->b()Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/orca/compose/ComposeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aN:Z

    return v0
.end method

.method static synthetic f(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->ae()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/orca/compose/ComposeFragment;)Ljavax/inject/Provider;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Ljavax/inject/Provider;

    return-object v0
.end method

.method private g(I)V
    .locals 2
    .parameter

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aK:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a()V

    .line 1332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->d(Z)V

    .line 1334
    :cond_0
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;-><init>(Z)V

    .line 1335
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->at:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaParams;I)V

    .line 1336
    return-void
.end method

.method static synthetic h(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->af()V

    return-void
.end method

.method static synthetic i(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->ad()V

    return-void
.end method

.method static synthetic j(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->ac()V

    return-void
.end method

.method static synthetic k(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->W()V

    return-void
.end method

.method static synthetic l(Lcom/facebook/orca/compose/ComposeFragment;)Lcom/facebook/orca/prefs/OrcaSharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    return-object v0
.end method

.method static synthetic m(Lcom/facebook/orca/compose/ComposeFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->ab()V

    return-void
.end method


# virtual methods
.method public E()Lcom/facebook/orca/threads/Message;
    .locals 11

    .prologue
    const-wide/16 v5, -0x1

    .line 547
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Lcom/facebook/orca/push/common/PushDeserialization;

    const/16 v1, 0x384

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->as:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    invoke-virtual {v3}, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/facebook/orca/compose/ComposeFragment;->aw:Landroid/location/Location;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/facebook/orca/compose/ComposeFragment;->aw:Landroid/location/Location;

    :goto_0
    invoke-static {v7}, Lcom/facebook/orca/location/Coordinates;->a(Landroid/location/Location;)Lcom/facebook/orca/location/Coordinates;

    move-result-object v9

    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->J()Ljava/util/List;

    move-result-object v10

    move-wide v7, v5

    invoke-virtual/range {v0 .. v10}, Lcom/facebook/orca/push/common/PushDeserialization;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/orca/location/Coordinates;Ljava/util/List;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 556
    return-object v0

    .line 547
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 576
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->L()V

    .line 583
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V

    .line 584
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 585
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->M()V

    .line 586
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 278
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 279
    sget v0, Lcom/facebook/R$layout;->orca_composer_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    .line 281
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 282
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$2;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->au:Ljava/util/Map;

    .line 300
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->compose_edit:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    .line 301
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->compose_button_location:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Landroid/widget/ImageButton;

    .line 302
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->compose_emoji_attachments:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->am:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->compose_button_send:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->an:Landroid/widget/Button;

    .line 304
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->compose_chars_left:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ao:Landroid/widget/TextView;

    .line 305
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->compose_attachments:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ap:Landroid/widget/LinearLayout;

    .line 306
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->compose_attachment_container:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aq:Landroid/widget/HorizontalScrollView;

    .line 308
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$3;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-direct {p0, v2}, Lcom/facebook/orca/compose/ComposeFragment;->c(Z)V

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->am:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$4;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->an:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$5;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$6;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 355
    const-string v0, "getLocationOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->b(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ar:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 356
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ar:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$7;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 368
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ar:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$8;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$8;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V

    .line 375
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V

    .line 377
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 195
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->e:Lcom/facebook/orca/cache/DataCache;

    .line 197
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->au:Ljava/util/Map;

    .line 199
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->f:Landroid/view/inputmethod/InputMethodManager;

    .line 200
    const-class v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->g:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 201
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 202
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    .line 203
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/support/v4/app/FragmentManager;

    .line 204
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 205
    const-class v0, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    .line 206
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ab:Lcom/facebook/orca/presence/PresenceManager;

    .line 207
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ac:Lcom/facebook/orca/prefs/UiCounters;

    .line 208
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ad:Landroid/location/LocationManager;

    .line 209
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ae:Landroid/view/LayoutInflater;

    .line 210
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/common/PushDeserialization;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 211
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aB:Lcom/facebook/orca/app/OrcaAppType;

    .line 212
    const-class v0, Lcom/facebook/orca/emoji/EmojiUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/EmojiUtil;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ag:Lcom/facebook/orca/emoji/EmojiUtil;

    .line 213
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsEmojiAttachmentPopupEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Ljavax/inject/Provider;

    .line 215
    const-class v0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/support/v4/app/FragmentManager;

    const-string v1, "pickPhotoOperation"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->at:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    .line 219
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->at:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-direct {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->at:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    .line 221
    const-string v0, "pickPhotoOperation"

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->at:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->at:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$1;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;)V

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aM:I

    .line 249
    return-void
.end method

.method public a(Landroid/widget/Button;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v0

    .line 514
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v1

    .line 515
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v2

    .line 516
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v3

    .line 517
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 519
    return-void
.end method

.method public a(Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ay:Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;

    .line 540
    return-void
.end method

.method public a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 2
    .parameter

    .prologue
    .line 522
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-ne p1, v0, :cond_2

    .line 523
    iget-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aI:Z

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->c(Z)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq v0, v1, :cond_1

    .line 527
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->M()V

    .line 535
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->aA:Lcom/facebook/orca/compose/ComposeMode;

    .line 536
    return-void

    .line 530
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->c(Z)V

    .line 532
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/compose/LocationNuxController;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->az:Lcom/facebook/orca/compose/LocationNuxController;

    .line 544
    return-void
.end method

.method public a(Lcom/facebook/orca/compose/MessageDraft;)V
    .locals 6
    .parameter

    .prologue
    .line 461
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/facebook/orca/compose/MessageDraft;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x4160

    invoke-static {v0, v2}, Lcom/facebook/orca/common/util/SizeUtil;->b(Landroid/content/res/Resources;F)I

    move-result v0

    .line 464
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->ag:Lcom/facebook/orca/emoji/EmojiUtil;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/emoji/EmojiUtil;->a(Landroid/text/Spannable;I)V

    .line 465
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 466
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V

    .line 467
    invoke-virtual {p1}, Lcom/facebook/orca/compose/MessageDraft;->b()Ljava/util/List;

    move-result-object v2

    .line 468
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->L()V

    .line 471
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaResource;

    .line 472
    iget-object v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->g:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 473
    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->b(Lcom/facebook/orca/attachments/MediaAttachment;)V
    :try_end_0
    .catch Lcom/facebook/orca/attachments/UnknownAttachmentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    sget-object v3, Lcom/facebook/orca/compose/ComposeFragment;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot create attachment for draft: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 479
    :cond_0
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->b()V

    .line 482
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->as:Ljava/lang/String;

    .line 490
    invoke-static {p1}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Z)V

    .line 491
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    sget v1, Lcom/facebook/R$string;->composer_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 492
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->aI:Z

    .line 498
    if-eqz p1, :cond_0

    .line 499
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->c(Z)V

    .line 500
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$drawable;->orca_composer_button_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 501
    sget v0, Lcom/facebook/R$string;->composer_hint_new_thread_sms:I

    .line 507
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->an:Landroid/widget/Button;

    invoke-virtual {p0, v2, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/widget/Button;Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 509
    return-void

    .line 503
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->c(Z)V

    .line 504
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$drawable;->orca_composer_button_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 505
    sget v0, Lcom/facebook/R$string;->composer_hint_new_thread:I

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 385
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 387
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 388
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 590
    :try_start_0
    const-string v0, "share_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_0

    .line 592
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :cond_0
    const-string v0, "share_photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 595
    if-eqz v0, :cond_1

    .line 596
    invoke-static {v0}, Lcom/facebook/orca/media/MediaResource;->a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->g:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 599
    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->b(Lcom/facebook/orca/attachments/MediaAttachment;)V

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V
    :try_end_0
    .catch Lcom/facebook/orca/attachments/UnknownAttachmentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->m()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->image_attachment_failed_attach_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->e(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    goto :goto_0
.end method

.method public c()Lcom/facebook/orca/compose/MessageDraft;
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 456
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/orca/compose/MessageDraft;

    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->J()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/compose/MessageDraft;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 611
    const-string v0, "composer_initial_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_0

    .line 613
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V

    .line 616
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 780
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ax:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 782
    invoke-static {p1}, Lcom/facebook/orca/prefs/MessagesPrefKeys;->b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v1

    .line 783
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->ax:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 784
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 786
    :cond_0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 392
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 394
    if-eqz p1, :cond_2

    .line 395
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->L()V

    .line 396
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 397
    const-string v0, "mediaResources"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 398
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 399
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaResource;

    .line 400
    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeFragment;->g:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Ljava/util/List;Z)V

    .line 404
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    .line 405
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    const-string v0, "locationState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    move-result-object v0

    .line 410
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 412
    :cond_2
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->e(Landroid/os/Bundle;)V

    .line 418
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 419
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachment;

    .line 420
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :cond_0
    const-string v0, "mediaResources"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 423
    const-string v0, "locationState"

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    invoke-virtual {v1}, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 255
    iget v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aM:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->I()V

    .line 258
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aM:I

    .line 259
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 443
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->v()V

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aL:Z

    .line 445
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->I()V

    .line 446
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->av:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aA:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-ne v0, v1, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->M()V

    .line 449
    :cond_0
    return-void
.end method

.method public w()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->w()V

    .line 429
    iput-boolean v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->aL:Z

    .line 430
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->i:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 431
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(ZZ)V

    .line 432
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->aJ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 437
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->x()V

    .line 438
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 439
    return-void
.end method
