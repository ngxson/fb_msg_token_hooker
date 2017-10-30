.class public Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;
.super Lcom/facebook/orca/login/AuthFragmentViewGroup;
.source "GenericFirstPartySsoViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/login/AuthFragmentViewGroup",
        "<",
        "Lcom/facebook/orca/login/FirstPartySsoFragmentControl;",
        ">;"
    }
.end annotation


# static fields
.field public static final LAYOUT_RESOURCE:Ljava/lang/String; = "orca:authparam:sso_layout"

.field public static final LOGO1_RESOURCE:Ljava/lang/String; = "orca:authparam:logo1"

.field public static final LOGO2_RESOURCE:Ljava/lang/String; = "orca:authparam:logo2"


# instance fields
.field private final loginButton:Landroid/widget/Button;

.field private final loginText:Landroid/widget/TextView;

.field private final logo1:Landroid/widget/ImageView;

.field private final logo2:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/login/FirstPartySsoFragmentControl;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x21

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/login/AuthFragmentViewGroup;-><init>(Landroid/content/Context;Lcom/facebook/orca/login/AuthFragmentControlBase;)V

    .line 76
    const-string v0, "orca:authparam:sso_layout"

    sget v1, Lcom/facebook/R$layout;->orca_login_start_screen:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->getResource(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->setContentView(I)V

    .line 77
    sget v0, Lcom/facebook/R$id;->login:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->loginButton:Landroid/widget/Button;

    .line 78
    sget v0, Lcom/facebook/R$id;->login_sso_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->loginText:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/facebook/R$id;->login_logo1:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->logo1:Landroid/widget/ImageView;

    .line 80
    sget v0, Lcom/facebook/R$id;->login_logo2:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->logo2:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->loginText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->loginButton:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup$1;-><init>(Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const-string v0, "orca:authparam:logo1"

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->getResource(Ljava/lang/String;I)I

    move-result v0

    .line 90
    const-string v1, "orca:authparam:logo2"

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->getResource(Ljava/lang/String;I)I

    move-result v1

    .line 92
    if-eqz v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->logo1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    :cond_0
    if-eqz v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->logo2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    :cond_1
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;

    invoke-direct {v0}, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;-><init>()V

    .line 101
    new-instance v1, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup$2;-><init>(Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;->a(Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;)V

    .line 110
    invoke-interface {p2}, Lcom/facebook/orca/login/FirstPartySsoFragmentControl;->H()Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_2
    invoke-interface {p2}, Lcom/facebook/orca/login/FirstPartySsoFragmentControl;->H()Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/auth/FirstPartySsoSessionInfo;->a()Ljava/lang/String;

    move-result-object v1

    .line 115
    const/16 v2, 0x20

    const/16 v3, 0xa0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 118
    new-instance v3, Lcom/facebook/orca/common/util/StyledStringBuilder;

    invoke-direct {v3, v2}, Lcom/facebook/orca/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 119
    sget v4, Lcom/facebook/R$string;->start_screen_sso_text:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 120
    const-string v4, "[[name]]"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 121
    iget-object v1, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->loginButton:Landroid/widget/Button;

    invoke-virtual {v3}, Lcom/facebook/orca/common/util/StyledStringBuilder;->b()Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v1, Lcom/facebook/orca/common/util/StyledStringBuilder;

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 124
    invoke-virtual {v1, v0, v6}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 125
    sget v0, Lcom/facebook/R$string;->start_screen_sso_text_not_you_link:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 126
    invoke-virtual {v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a()Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->loginText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->b()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->onLoginClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->onNotYouClicked()V

    return-void
.end method

.method public static createParameterBundle(III)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v1, "orca:authparam:sso_layout"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v1, "orca:authparam:logo1"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v1, "orca:authparam:logo2"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    return-object v0
.end method

.method private onLoginClicked()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->control:Lcom/facebook/orca/login/AuthFragmentControlBase;

    check-cast v0, Lcom/facebook/orca/login/FirstPartySsoFragmentControl;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    invoke-virtual {p0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/R$string;->login_screen_login_progress:I

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/login/FirstPartySsoFragmentControl;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 137
    return-void
.end method

.method private onNotYouClicked()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->control:Lcom/facebook/orca/login/AuthFragmentControlBase;

    check-cast v0, Lcom/facebook/orca/login/FirstPartySsoFragmentControl;

    invoke-interface {v0}, Lcom/facebook/orca/login/FirstPartySsoFragmentControl;->I()V

    .line 132
    return-void
.end method
