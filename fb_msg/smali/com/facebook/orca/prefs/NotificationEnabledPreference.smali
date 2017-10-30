.class public Lcom/facebook/orca/prefs/NotificationEnabledPreference;
.super Landroid/preference/CheckBoxPreference;
.source "NotificationEnabledPreference.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private c:Lcom/facebook/orca/notify/NotificationSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v2, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 49
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 50
    sget v2, Lcom/facebook/R$string;->preference_notifications_muted_until:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v1}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    sget v1, Lcom/facebook/R$string;->preference_notifications_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_1
    sget v1, Lcom/facebook/R$string;->preference_notifications_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 39
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 40
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 41
    iget-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->setChecked(Z)V

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 4
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    sget-object v0, Lcom/facebook/orca/notify/NotificationSetting;->a:Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 72
    :goto_0
    sget-object v0, Lcom/facebook/orca/prefs/MessagesPrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    .line 73
    iget-object v1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 75
    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 76
    invoke-direct {p0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    return-void

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x7080

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->a(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->c:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0
.end method
