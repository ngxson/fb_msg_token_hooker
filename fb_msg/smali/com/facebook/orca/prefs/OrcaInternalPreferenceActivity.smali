.class public Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;
.super Lcom/facebook/orca/activity/FbPreferenceActivity;
.source "OrcaInternalPreferenceActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private a:Lcom/facebook/orca/images/ImageCache;

.field private b:Lcom/facebook/orca/app/OrcaDataManager;

.field private c:Lcom/facebook/orca/nux/OrcaNuxManager;

.field private d:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private e:Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;

.field private f:Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;

.field private g:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private h:Lcom/facebook/common/util/UiThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;)Lcom/facebook/orca/images/ImageCache;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->a:Lcom/facebook/orca/images/ImageCache;

    return-object v0
.end method

.method private a(IILjava/lang/Runnable;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p0, p2}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->g:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-interface {v1, p3}, Lcom/google/common/util/concurrent/ListeningExecutorService;->a(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 161
    new-instance v2, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$6;-><init>(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;Landroid/app/ProgressDialog;)V

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->h:Lcom/facebook/common/util/UiThreadExecutor;

    invoke-static {v1, v2, v0}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 173
    return-void
.end method

.method private a(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    const-string v0, "/messenger/advanced/clear_image_cache_unused"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$1;-><init>(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;IILjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->a(IILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;)Lcom/facebook/orca/app/OrcaDataManager;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->b:Lcom/facebook/orca/app/OrcaDataManager;

    return-object v0
.end method

.method private b(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    const-string v0, "/messenger/advanced/clear_thread_cache_unused"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$2;-><init>(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;)Lcom/facebook/orca/nux/OrcaNuxManager;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->c:Lcom/facebook/orca/nux/OrcaNuxManager;

    return-object v0
.end method

.method private c(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    const-string v0, "/messenger/advanced/reset_nux_unused"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$3;-><init>(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;)Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->e:Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;

    return-object v0
.end method

.method private d(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    const-string v0, "/messenger/advanced/upload_contacts"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$4;-><init>(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;)Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->f:Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;

    return-object v0
.end method

.method private e(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    const-string v0, "/messenger/advanced/download_contacts"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$5;-><init>(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbPreferenceActivity;->b(Landroid/os/Bundle;)V

    .line 56
    sget v0, Lcom/facebook/R$layout;->orca_preferences:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 59
    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->a:Lcom/facebook/orca/images/ImageCache;

    .line 60
    const-class v0, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaDataManager;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->b:Lcom/facebook/orca/app/OrcaDataManager;

    .line 61
    const-class v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->c:Lcom/facebook/orca/nux/OrcaNuxManager;

    .line 62
    const-class v0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->e:Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;

    .line 63
    const-class v0, Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->f:Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;

    .line 64
    const-class v0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    const-class v2, Lcom/facebook/orca/annotations/DefaultExecutorService;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->g:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 66
    const-class v0, Lcom/facebook/common/util/UiThreadExecutor;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/UiThreadExecutor;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->h:Lcom/facebook/common/util/UiThreadExecutor;

    .line 68
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 69
    sget v0, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->d:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 71
    sget v0, Lcom/facebook/R$xml;->preferences_internal:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 74
    invoke-direct {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->a(Landroid/preference/PreferenceScreen;)V

    .line 75
    invoke-direct {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->b(Landroid/preference/PreferenceScreen;)V

    .line 76
    invoke-direct {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->c(Landroid/preference/PreferenceScreen;)V

    .line 77
    invoke-direct {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->d(Landroid/preference/PreferenceScreen;)V

    .line 78
    invoke-direct {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->e(Landroid/preference/PreferenceScreen;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->d:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    const-string v1, "Internal"

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "prefs_internal"

    return-object v0
.end method
