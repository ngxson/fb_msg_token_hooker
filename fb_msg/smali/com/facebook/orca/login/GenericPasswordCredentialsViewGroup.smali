.class public Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;
.super Lcom/facebook/orca/login/AuthFragmentViewGroup;
.source "GenericPasswordCredentialsViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/login/AuthFragmentViewGroup",
        "<",
        "Lcom/facebook/orca/login/PasswordCredentialsFragmentControl;",
        ">;"
    }
.end annotation


# static fields
.field public static final LAYOUT_RESOURCE:Ljava/lang/String; = "orca:authparam:login_screen_layout"

.field public static final LOGO1_RESOURCE:Ljava/lang/String; = "orca:authparam:logo1"

.field public static final LOGO2_RESOURCE:Ljava/lang/String; = "orca:authparam:logo2"


# instance fields
.field private final emailText:Landroid/widget/TextView;

.field private final inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final loginButton:Landroid/widget/Button;

.field private final logo1:Landroid/widget/ImageView;

.field private final logo2:Landroid/widget/ImageView;

.field private final passwordText:Landroid/widget/TextView;

.field private final signupButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/login/PasswordCredentialsFragmentControl;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/login/AuthFragmentViewGroup;-><init>(Landroid/content/Context;Lcom/facebook/orca/login/AuthFragmentControlBase;)V

    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 88
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 90
    const-string v0, "orca:authparam:login_screen_layout"

    sget v1, Lcom/facebook/R$layout;->orca_login:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getResource(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->setContentView(I)V

    .line 91
    sget v0, Lcom/facebook/R$id;->email:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->emailText:Landroid/widget/TextView;

    .line 92
    sget v0, Lcom/facebook/R$id;->password:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->passwordText:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/facebook/R$id;->login:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->loginButton:Landroid/widget/Button;

    .line 94
    sget v0, Lcom/facebook/R$id;->signup:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->signupButton:Landroid/widget/Button;

    .line 95
    sget v0, Lcom/facebook/R$id;->login_logo1:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->logo1:Landroid/widget/ImageView;

    .line 96
    sget v0, Lcom/facebook/R$id;->login_logo2:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->logo2:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->loginButton:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$1;-><init>(Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->signupButton:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$2;-><init>(Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->passwordText:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$3;-><init>(Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 122
    const-string v0, "orca:authparam:logo1"

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getResource(Ljava/lang/String;I)I

    move-result v0

    .line 123
    const-string v1, "orca:authparam:logo2"

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getResource(Ljava/lang/String;I)I

    move-result v1

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v2, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->logo1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :cond_0
    if-eqz v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->logo2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->onLoginClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->onSignupClick()V

    return-void
.end method

.method public static createParameterBundle(III)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v1, "orca:authparam:login_screen_layout"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v1, "orca:authparam:logo1"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v1, "orca:authparam:logo2"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    return-object v0
.end method

.method private onLoginClick()V
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->emailText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->passwordText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->control:Lcom/facebook/orca/login/AuthFragmentControlBase;

    check-cast v0, Lcom/facebook/orca/login/PasswordCredentialsFragmentControl;

    new-instance v3, Lcom/facebook/orca/auth/PasswordCredentials;

    invoke-direct {v3, v1, v2}, Lcom/facebook/orca/auth/PasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    invoke-virtual {p0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/facebook/R$string;->login_screen_login_progress:I

    invoke-direct {v1, v2, v4}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v3, v1}, Lcom/facebook/orca/login/PasswordCredentialsFragmentControl;->a(Lcom/facebook/orca/auth/PasswordCredentials;Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto :goto_0
.end method

.method private onSignupClick()V
    .locals 4

    .prologue
    .line 149
    const-string v0, "https://m.facebook.com/r.php"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 150
    const-string v0, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/locale/FBLocaleMapper;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->control:Lcom/facebook/orca/login/AuthFragmentControlBase;

    check-cast v0, Lcom/facebook/orca/login/PasswordCredentialsFragmentControl;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Lcom/facebook/orca/login/PasswordCredentialsFragmentControl;->c(Landroid/content/Intent;)V

    .line 152
    return-void
.end method
