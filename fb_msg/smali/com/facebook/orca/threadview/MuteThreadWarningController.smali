.class public Lcom/facebook/orca/threadview/MuteThreadWarningController;
.super Ljava/lang/Object;
.source "MuteThreadWarningController.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final c:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private final d:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private final e:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

.field private final f:Lcom/facebook/orca/prefs/PrefKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/notify/NotificationSettingsUtil;Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->a:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/facebook/orca/prefs/MessagesPrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->f:Lcom/facebook/orca/prefs/PrefKey;

    .line 32
    iput-object p2, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 33
    iput-object p3, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->d:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 34
    iput-object p4, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->e:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    .line 36
    new-instance v0, Lcom/facebook/orca/threadview/MuteThreadWarningController$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/MuteThreadWarningController$1;-><init>(Lcom/facebook/orca/threadview/MuteThreadWarningController;)V

    invoke-virtual {p4, v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v0, Lcom/facebook/orca/threadview/MuteThreadWarningController$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/MuteThreadWarningController$2;-><init>(Lcom/facebook/orca/threadview/MuteThreadWarningController;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 52
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MuteThreadWarningController;->b()V

    .line 53
    return-void
.end method

.method private a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->f:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MuteThreadWarningController;->b()V

    .line 63
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/MuteThreadWarningController;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MuteThreadWarningController;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/MuteThreadWarningController;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/MuteThreadWarningController;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->d:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->d:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->e:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->b()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->e:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->c()V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->e:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->d()V

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/MuteThreadWarningController;->f:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 80
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MuteThreadWarningController;->b()V

    .line 57
    return-void
.end method
