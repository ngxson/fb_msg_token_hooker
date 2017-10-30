.class public Lcom/facebook/orca/prefs/OrcaTesterPreferenceActivity;
.super Lcom/facebook/orca/activity/FbPreferenceActivity;
.source "OrcaTesterPreferenceActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaTesterPreferenceActivity;->setContentView(I)V

    .line 37
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 38
    sget v0, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaTesterPreferenceActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaTesterPreferenceActivity;->a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 40
    sget v0, Lcom/facebook/R$xml;->preferences_tester:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaTesterPreferenceActivity;->addPreferencesFromResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaTesterPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 42
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaTesterPreferenceActivity;->a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    const-string v1, "Tester"

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "prefs_tester"

    return-object v0
.end method
