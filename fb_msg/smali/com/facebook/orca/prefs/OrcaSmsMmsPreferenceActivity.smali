.class public Lcom/facebook/orca/prefs/OrcaSmsMmsPreferenceActivity;
.super Lcom/facebook/orca/activity/FbPreferenceActivity;
.source "OrcaSmsMmsPreferenceActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private b:Lcom/facebook/orca/app/OrcaDataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbPreferenceActivity;->b(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/facebook/R$layout;->orca_preferences:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaSmsMmsPreferenceActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSmsMmsPreferenceActivity;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 39
    const-class v1, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaDataManager;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSmsMmsPreferenceActivity;->b:Lcom/facebook/orca/app/OrcaDataManager;

    .line 41
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 42
    sget v0, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaSmsMmsPreferenceActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSmsMmsPreferenceActivity;->a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 44
    sget v0, Lcom/facebook/R$xml;->preferences_smsmms:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaSmsMmsPreferenceActivity;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSmsMmsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSmsMmsPreferenceActivity;->a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    sget v1, Lcom/facebook/R$string;->preference_sms_mms_title:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/prefs/OrcaSmsMmsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "prefs_root"

    return-object v0
.end method
