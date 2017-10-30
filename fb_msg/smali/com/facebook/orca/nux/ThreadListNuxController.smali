.class public Lcom/facebook/orca/nux/ThreadListNuxController;
.super Ljava/lang/Object;
.source "ThreadListNuxController.java"


# instance fields
.field private final a:Lcom/facebook/orca/nux/OrcaNuxManager;

.field private final b:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final d:Lcom/facebook/orca/nux/NuxScrimView;

.field private final e:Lcom/facebook/orca/nux/NuxSmsIntroView;

.field private f:Lcom/facebook/orca/nux/ThreadListNuxController$OnNuxFinishedListener;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/nux/OrcaNuxManager;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/nux/NuxScrimView;Lcom/facebook/orca/nux/NuxSmsIntroView;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->g:Z

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->a:Lcom/facebook/orca/nux/OrcaNuxManager;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->b:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 39
    iput-object p3, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 40
    iput-object p4, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->d:Lcom/facebook/orca/nux/NuxScrimView;

    .line 41
    iput-object p5, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->e:Lcom/facebook/orca/nux/NuxSmsIntroView;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/nux/ThreadListNuxController;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/nux/ThreadListNuxController;->d()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/nux/ThreadListNuxController;)Lcom/facebook/orca/prefs/OrcaSharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    return-object v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/orca/nux/ThreadListNuxController;)Lcom/facebook/orca/app/OrcaActivityBroadcaster;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->b:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->g:Z

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->d:Lcom/facebook/orca/nux/NuxScrimView;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/NuxScrimView;->e()V

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->e:Lcom/facebook/orca/nux/NuxSmsIntroView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/nux/NuxSmsIntroView;->setClickable(Z)V

    .line 68
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->e:Lcom/facebook/orca/nux/NuxSmsIntroView;

    invoke-virtual {v1}, Lcom/facebook/orca/nux/NuxSmsIntroView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/nux/SmsNuxDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    iget-object v1, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->e:Lcom/facebook/orca/nux/NuxSmsIntroView;

    invoke-virtual {v1}, Lcom/facebook/orca/nux/NuxSmsIntroView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/nux/ThreadListNuxController;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/nux/ThreadListNuxController;->f()V

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 81
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;

    invoke-direct {v0}, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;-><init>()V

    .line 82
    new-instance v1, Lcom/facebook/orca/nux/ThreadListNuxController$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/nux/ThreadListNuxController$1;-><init>(Lcom/facebook/orca/nux/ThreadListNuxController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;->a(Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;)V

    .line 89
    iget-object v1, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->e:Lcom/facebook/orca/nux/NuxSmsIntroView;

    invoke-virtual {v1}, Lcom/facebook/orca/nux/NuxSmsIntroView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 90
    new-instance v2, Lcom/facebook/orca/common/util/StyledStringBuilder;

    invoke-direct {v2, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 91
    iget-object v3, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->a:Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v3}, Lcom/facebook/orca/nux/OrcaNuxManager;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    sget v3, Lcom/facebook/R$string;->sms_nux_intro_upgrade_blurb:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 96
    :goto_0
    const-string v3, "[[learn_more_link]]"

    sget v4, Lcom/facebook/R$string;->sms_nux_learn_more_link:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->e:Lcom/facebook/orca/nux/NuxSmsIntroView;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->g()V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->e:Lcom/facebook/orca/nux/NuxSmsIntroView;

    invoke-virtual {v2}, Lcom/facebook/orca/common/util/StyledStringBuilder;->b()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/nux/NuxSmsIntroView;->setBlurb(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->d:Lcom/facebook/orca/nux/NuxScrimView;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/NuxScrimView;->g()V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->e:Lcom/facebook/orca/nux/NuxSmsIntroView;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->e()V

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->e:Lcom/facebook/orca/nux/NuxSmsIntroView;

    new-instance v1, Lcom/facebook/orca/nux/ThreadListNuxController$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/nux/ThreadListNuxController$2;-><init>(Lcom/facebook/orca/nux/ThreadListNuxController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/nux/NuxSmsIntroView;->setOnTryClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->e:Lcom/facebook/orca/nux/NuxSmsIntroView;

    new-instance v1, Lcom/facebook/orca/nux/ThreadListNuxController$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/nux/ThreadListNuxController$3;-><init>(Lcom/facebook/orca/nux/ThreadListNuxController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/nux/NuxSmsIntroView;->setOnSkipClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void

    .line 94
    :cond_0
    sget v3, Lcom/facebook/R$string;->sms_nux_intro_blurb:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->a:Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/OrcaNuxManager;->i()V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->e:Lcom/facebook/orca/nux/NuxSmsIntroView;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/NuxSmsIntroView;->f()V

    .line 126
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->d:Lcom/facebook/orca/nux/NuxScrimView;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/NuxScrimView;->f()V

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->f:Lcom/facebook/orca/nux/ThreadListNuxController$OnNuxFinishedListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->f:Lcom/facebook/orca/nux/ThreadListNuxController$OnNuxFinishedListener;

    invoke-interface {v0}, Lcom/facebook/orca/nux/ThreadListNuxController$OnNuxFinishedListener;->a()V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/nux/ThreadListNuxController$OnNuxFinishedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->f:Lcom/facebook/orca/nux/ThreadListNuxController$OnNuxFinishedListener;

    .line 134
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/facebook/orca/nux/ThreadListNuxController;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/nux/ThreadListNuxController;->a:Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v1}, Lcom/facebook/orca/nux/OrcaNuxManager;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/facebook/orca/nux/ThreadListNuxController;->c()V

    .line 50
    invoke-direct {p0}, Lcom/facebook/orca/nux/ThreadListNuxController;->e()V

    .line 54
    const/4 v0, 0x1

    goto :goto_0
.end method
