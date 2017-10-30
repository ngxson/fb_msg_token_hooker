.class public Lcom/facebook/orca/nux/SmsNuxDetailActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "SmsNuxDetailActivity.java"


# instance fields
.field private n:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/nux/SmsNuxDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/nux/SmsNuxDetailActivity;->h()V

    return-void
.end method

.method private h()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/facebook/orca/nux/SmsNuxDetailActivity;->finish()V

    .line 49
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/facebook/R$layout;->orca_nux_sms_details:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/SmsNuxDetailActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/facebook/orca/nux/SmsNuxDetailActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 32
    const-class v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/nux/SmsNuxDetailActivity;->n:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 34
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 35
    sget v0, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/SmsNuxDetailActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 36
    sget v1, Lcom/facebook/R$string;->app_name:I

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(I)V

    .line 38
    sget v0, Lcom/facebook/R$id;->sms_nux_detail_okay_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/SmsNuxDetailActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 39
    new-instance v1, Lcom/facebook/orca/nux/SmsNuxDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/nux/SmsNuxDetailActivity$1;-><init>(Lcom/facebook/orca/nux/SmsNuxDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
