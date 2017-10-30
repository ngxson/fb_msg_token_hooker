.class public Lcom/facebook/orca/prefs/OrcaNotificationPreferenceActivity;
.super Lcom/facebook/orca/activity/FbPreferenceActivity;
.source "OrcaNotificationPreferenceActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbPreferenceActivity;->b(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/facebook/R$layout;->orca_preferences:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaNotificationPreferenceActivity;->setContentView(I)V

    .line 32
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 33
    sget v0, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaNotificationPreferenceActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaNotificationPreferenceActivity;->a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 35
    sget v0, Lcom/facebook/R$xml;->preferences_notif:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaNotificationPreferenceActivity;->addPreferencesFromResource(I)V

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaNotificationPreferenceActivity;->a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    sget v1, Lcom/facebook/R$string;->preference_notifications_title:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/prefs/OrcaNotificationPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "prefs_root"

    return-object v0
.end method
