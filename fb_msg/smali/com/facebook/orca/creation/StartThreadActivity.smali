.class public Lcom/facebook/orca/creation/StartThreadActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "StartThreadActivity.java"

# interfaces
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
.field private A:Landroid/view/View;

.field private B:Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;

.field private C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

.field private D:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

.field private E:Z

.field private F:I

.field private G:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/orca/activity/OrcaFragment;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/facebook/orca/threadview/ThreadViewUtil;

.field private o:Lcom/facebook/orca/cache/DataCache;

.field private p:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

.field private q:Landroid/support/v4/app/FragmentManager;

.field private r:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

.field private t:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

.field private v:Lcom/facebook/orca/config/OrcaConfig;

.field private w:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private x:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

.field private y:Landroid/widget/TabHost;

.field private z:Landroid/widget/TabWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/facebook/orca/creation/StartThreadActivity;

    sput-object v0, Lcom/facebook/orca/creation/StartThreadActivity;->n:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;II)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    new-instance v0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;

    invoke-direct {v0, p0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;-><init>(Landroid/content/Context;)V

    .line 326
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->setText(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, p3}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->setId(I)V

    .line 328
    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->z:Landroid/widget/TabWidget;

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p2}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->setColorScheme(Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;)V

    .line 265
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/StartThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->j()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/StartThreadActivity;Lcom/facebook/orca/users/UserWithIdentifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Lcom/facebook/orca/users/UserWithIdentifier;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/users/PickedUser;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 360
    .line 361
    iget-boolean v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->E:Z

    if-eqz v1, :cond_0

    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    const-string v1, "picked_user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 364
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->setResult(ILandroid/content/Intent;)V

    .line 365
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->finish()V

    .line 397
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/PickedUser;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v2

    .line 370
    invoke-virtual {v2}, Lcom/facebook/orca/users/UserIdentifier;->d()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v1

    .line 374
    sget-object v3, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->FBID:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/users/PickedUser;->c()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v3

    if-nez v3, :cond_1

    .line 376
    invoke-virtual {p1}, Lcom/facebook/orca/users/PickedUser;->a()Lcom/facebook/orca/users/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 381
    :goto_1
    if-eqz v1, :cond_3

    .line 382
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->o:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    move-object v1, v0

    .line 385
    :goto_2
    if-eqz v1, :cond_2

    .line 386
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/creation/StartThreadActivity;->H:Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v2}, Lcom/facebook/orca/threadview/ThreadViewUtil;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    const-string v2, "thread_id"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    :goto_3
    const-string v1, "focus_compose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->startActivity(Landroid/content/Intent;)V

    .line 395
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->finish()V

    goto :goto_0

    .line 377
    :cond_1
    sget-object v3, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v1, v3, :cond_4

    .line 378
    new-instance v1, Lcom/facebook/orca/users/UserKey;

    sget-object v3, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserIdentifier;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    goto :goto_1

    .line 389
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private a(Lcom/facebook/orca/users/UserWithIdentifier;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    new-instance v0, Lcom/facebook/orca/users/PickedUser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 333
    invoke-direct {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Lcom/facebook/orca/users/PickedUser;)V

    .line 334
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/creation/StartThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->k()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/creation/StartThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->i()V

    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->v:Lcom/facebook/orca/config/OrcaConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    sget v2, Lcom/facebook/R$drawable;->orca_title_bar_background:I

    .line 242
    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;->FACEBOOK:Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    sget v2, Lcom/facebook/R$drawable;->orca_title_bar_sms_background:I

    .line 246
    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;->SMS_ONLY:Lcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->z:Landroid/widget/TabWidget;

    sget v3, Lcom/facebook/R$id;->facebook_tab:I

    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;

    invoke-virtual {v0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->a()V

    move-object v0, v1

    move v1, v2

    .line 252
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/creation/StartThreadActivity;->A:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    sget v1, Lcom/facebook/R$id;->facebook_tab:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->a(ILcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;)V

    .line 254
    sget v1, Lcom/facebook/R$id;->sms_tab:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->a(ILcom/facebook/orca/common/ui/titlebar/TitleBar$ColorScheme;)V

    .line 258
    :goto_1
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->z:Landroid/widget/TabWidget;

    sget v3, Lcom/facebook/R$id;->facebook_tab:I

    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;

    invoke-virtual {v0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->b()V

    move-object v0, v1

    move v1, v2

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->A:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0xff

    invoke-static {v3, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v4, "facebook"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->G:Ljava/lang/Class;

    const-class v4, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;

    if-ne v0, v4, :cond_3

    .line 278
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->q:Landroid/support/v4/app/FragmentManager;

    const-string v4, "facebook"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->B:Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->B:Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->b()Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    .line 286
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    if-eqz v0, :cond_1

    .line 287
    iget-object v4, p0, Lcom/facebook/orca/creation/StartThreadActivity;->C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    iget-boolean v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->E:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v4, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerOperations;->a(Z)V

    .line 288
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->x:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerOperations;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->D:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    if-eqz v0, :cond_9

    .line 292
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->D:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->b()Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v3, p0, Lcom/facebook/orca/creation/StartThreadActivity;->C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    .line 311
    :goto_2
    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->D:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 313
    invoke-interface {v3, v0}, Lcom/facebook/orca/contacts/picker/SearchBoxOperations;->a(Ljava/lang/String;)V

    .line 314
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 315
    invoke-interface {v3}, Lcom/facebook/orca/contacts/picker/SearchBoxOperations;->c()V

    .line 322
    :cond_2
    :goto_3
    return-void

    .line 281
    :cond_3
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    iget-object v4, p0, Lcom/facebook/orca/creation/StartThreadActivity;->G:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->q:Landroid/support/v4/app/FragmentManager;

    const-string v4, "facebook"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 287
    goto :goto_1

    .line 295
    :cond_5
    const-string v4, "sms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->r:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->D:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    if-nez v0, :cond_6

    .line 297
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->q:Landroid/support/v4/app/FragmentManager;

    const-string v4, "sms"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->D:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    .line 300
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->D:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    if-eqz v0, :cond_6

    .line 301
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->D:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    iget-boolean v4, p0, Lcom/facebook/orca/creation/StartThreadActivity;->E:Z

    if-nez v4, :cond_7

    :goto_4
    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->a(Z)V

    .line 302
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->D:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->x:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;)V

    .line 305
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->D:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    if-eqz v0, :cond_9

    .line 306
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->C:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    invoke-interface {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerOperations;->b()Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v3, p0, Lcom/facebook/orca/creation/StartThreadActivity;->D:Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    goto :goto_2

    :cond_7
    move v1, v2

    .line 301
    goto :goto_4

    .line 317
    :cond_8
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 319
    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_3

    :cond_9
    move-object v0, v3

    goto/16 :goto_2
.end method

.method private k()V
    .locals 3

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->E:Z

    if-eqz v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 341
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    iget-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    const-string v1, "threadType"

    sget v2, Lcom/facebook/orca/creation/CreateThreadActivity;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->startActivity(Landroid/content/Intent;)V

    .line 346
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 107
    sget v0, Lcom/facebook/R$layout;->orca_start_thread:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    const-string v2, "return_result"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iput-boolean v8, p0, Lcom/facebook/orca/creation/StartThreadActivity;->E:Z

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v2

    .line 115
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->o:Lcom/facebook/orca/cache/DataCache;

    .line 116
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->q:Landroid/support/v4/app/FragmentManager;

    .line 117
    const-class v0, Ljava/lang/Boolean;

    const-class v3, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {v2, v0, v3}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->r:Ljavax/inject/Provider;

    .line 118
    const-class v0, Ljava/lang/Boolean;

    const-class v3, Lcom/facebook/orca/annotations/IsSmsOnlyModeActive;

    invoke-virtual {v2, v0, v3}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->t:Ljavax/inject/Provider;

    .line 119
    const-class v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaConfig;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->v:Lcom/facebook/orca/config/OrcaConfig;

    .line 120
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewUtil;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->H:Lcom/facebook/orca/threadview/ThreadViewUtil;

    .line 122
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 123
    sget v0, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->w:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 124
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->y:Landroid/widget/TabHost;

    .line 125
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->z:Landroid/widget/TabWidget;

    .line 126
    sget v0, Lcom/facebook/R$id;->tabs_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->A:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 129
    new-instance v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    invoke-virtual {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/creation/StartThreadActivity;->y:Landroid/widget/TabHost;

    sget v5, Lcom/facebook/R$id;->realtabcontent:I

    sget-object v6, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager$FragmentStrategy;->SHOW_HIDE:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager$FragmentStrategy;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/widget/TabHost;ILcom/facebook/orca/common/ui/tabs/FragmentTabManager$FragmentStrategy;)V

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    .line 135
    iput v7, p0, Lcom/facebook/orca/creation/StartThreadActivity;->F:I

    .line 141
    const-class v0, Lcom/facebook/orca/contacts/picker/FacebookFriendPickerFragment;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->G:Ljava/lang/Class;

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    const-string v3, "PickerClassName"

    iget-object v4, p0, Lcom/facebook/orca/creation/StartThreadActivity;->G:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-class v3, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;

    iput-object v3, p0, Lcom/facebook/orca/creation/StartThreadActivity;->G:Ljava/lang/Class;

    .line 156
    :goto_0
    iget-object v3, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    const-string v4, "facebook"

    sget v5, Lcom/facebook/R$string;->facebook_tab:I

    sget v6, Lcom/facebook/R$id;->facebook_tab:I

    invoke-direct {p0, v4, v5, v6}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Ljava/lang/String;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/creation/StartThreadActivity;->G:Ljava/lang/Class;

    invoke-virtual {v3, v4, v5, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 161
    iget v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->F:I

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->r:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    const-string v3, "sms"

    sget v4, Lcom/facebook/R$string;->sms_tab:I

    sget v5, Lcom/facebook/R$id;->sms_tab:I

    invoke-direct {p0, v3, v4, v5}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Ljava/lang/String;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/contacts/picker/AddressBookPickerFragment;

    invoke-virtual {v0, v3, v4, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 170
    iget v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->F:I

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->y:Landroid/widget/TabHost;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->p:Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;

    new-instance v1, Lcom/facebook/orca/creation/StartThreadActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/creation/StartThreadActivity$1;-><init>(Lcom/facebook/orca/creation/StartThreadActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabManager;->a(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 185
    new-instance v0, Lcom/facebook/orca/creation/StartThreadActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/creation/StartThreadActivity$2;-><init>(Lcom/facebook/orca/creation/StartThreadActivity;)V

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->x:Lcom/facebook/orca/contacts/picker/ContactPickerViewListener;

    .line 197
    const-class v0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    .line 198
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->s:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b()V

    .line 200
    invoke-direct {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->j()V

    .line 202
    iget v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->F:I

    if-gt v0, v8, :cond_2

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->A:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    const-string v1, "com.facebook.orca.login.LoginActions.ON_LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v1, "com.facebook.orca.login.LoginActions.ON_LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    new-instance v1, Lcom/facebook/orca/creation/StartThreadActivity$3;

    invoke-direct {v1, p0, p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity$3;-><init>(Lcom/facebook/orca/creation/StartThreadActivity;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/orca/creation/StartThreadActivity;->u:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    .line 219
    return-void

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->w:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    check-cast v0, Landroid/view/View;

    .line 206
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "start_thread"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 352
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 353
    const-string v0, "pickedUser"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    .line 354
    invoke-direct {p0, v0}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Lcom/facebook/orca/users/PickedUser;)V

    .line 357
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onPause()V

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->u:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->b()V

    .line 232
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onResume()V

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity;->u:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    .line 225
    invoke-direct {p0}, Lcom/facebook/orca/creation/StartThreadActivity;->i()V

    .line 226
    return-void
.end method
