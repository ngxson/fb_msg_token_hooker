.class public Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;
.super Lcom/facebook/orca/activity/FbPreferenceActivity;
.source "OrcaRootPreferenceActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private c:Landroid/content/pm/PackageInfo;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbPreferenceActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter

    .prologue
    .line 131
    const-string v0, "/settings/messenger/about_unused"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 132
    sget v1, Lcom/facebook/R$string;->preference_version_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->c:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->c:Landroid/content/pm/PackageInfo;

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 117
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 118
    if-ne v0, p2, :cond_1

    .line 119
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v2, v3

    .line 127
    :cond_0
    :goto_1
    return v2

    .line 121
    :cond_1
    instance-of v4, v0, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 122
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    .line 123
    goto :goto_1

    .line 116
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbPreferenceActivity;->b(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/facebook/R$layout;->orca_preferences:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 52
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a:Lcom/facebook/orca/cache/DataCache;

    .line 53
    const-class v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->c:Landroid/content/pm/PackageInfo;

    .line 54
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsClientSmsPermitted;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->d:Ljavax/inject/Provider;

    .line 55
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsTesterPrefsEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->e:Ljavax/inject/Provider;

    .line 57
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 58
    sget v0, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->b:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 60
    sget v0, Lcom/facebook/R$xml;->preferences:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->addPreferencesFromResource(I)V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->f:Landroid/preference/PreferenceScreen;

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->f:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a(Landroid/preference/PreferenceScreen;)V

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->f:Landroid/preference/PreferenceScreen;

    const-string v1, "/settings/messages/notifications"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/prefs/OrcaNotificationPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->f:Landroid/preference/PreferenceScreen;

    const-string v1, "/settings/messenger/internal"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->f:Landroid/preference/PreferenceScreen;

    const-string v2, "/settings/messenger/tester"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/prefs/OrcaTesterPreferenceActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->f:Landroid/preference/PreferenceScreen;

    const-string v3, "/settings/messages/sms_mms"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/facebook/orca/prefs/OrcaSmsMmsPreferenceActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->f:Landroid/preference/PreferenceScreen;

    const-string v3, "/settings/messenger/about_unused"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 82
    new-instance v3, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity$1;

    invoke-direct {v3, p0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity$1;-><init>(Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->f:Landroid/preference/PreferenceScreen;

    const-string v3, "/settings/messenger/switch_accounts"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 92
    new-instance v3, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity$2;

    invoke-direct {v3, p0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity$2;-><init>(Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->f:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->f:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->b:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    sget v1, Lcom/facebook/R$string;->preference_title:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 113
    return-void

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->f:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/prefs/AboutHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/AboutHandler;

    .line 139
    invoke-interface {v0}, Lcom/facebook/orca/prefs/AboutHandler;->a()V

    .line 140
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "prefs_root"

    return-object v0
.end method
