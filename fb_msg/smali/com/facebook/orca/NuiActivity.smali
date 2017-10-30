.class public Lcom/facebook/orca/NuiActivity;
.super Landroid/app/Activity;
.source "NuiActivity.java"


# static fields
.field private static token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, ""

    sput-object v0, Lcom/facebook/orca/NuiActivity;->token:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "text"

    .prologue
    .line 70
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 71
    const-string v2, "clipboard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 72
    .local v1, clipboard:Landroid/text/ClipboardManager;
    invoke-virtual {v1, p2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .end local v1           #clipboard:Landroid/text/ClipboardManager;
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v2, "clipboard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 75
    .local v1, clipboard:Landroid/content/ClipboardManager;
    const-string v2, "Copied Text"

    invoke-static {v2, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 76
    .local v0, clip:Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method


# virtual methods
.method public copyToken()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/facebook/orca/NuiActivity;->token:Ljava/lang/String;

    invoke-direct {p0, p0, v0}, Lcom/facebook/orca/NuiActivity;->setClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    .local v3, main:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v3}, Lcom/facebook/orca/NuiActivity;->setContentView(Landroid/view/View;)V

    .line 23
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 28
    .local v5, token_view:Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, copy_btn:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    const-string v6, "Copy"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v6, Lcom/facebook/orca/NuiActivity$1;

    invoke-direct {v6, p0}, Lcom/facebook/orca/NuiActivity$1;-><init>(Lcom/facebook/orca/NuiActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, login_btn:Landroid/widget/Button;
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    const-string v6, "Login"

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v6, Lcom/facebook/orca/NuiActivity$2;

    invoke-direct {v6, p0}, Lcom/facebook/orca/NuiActivity$2;-><init>(Lcom/facebook/orca/NuiActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    const-string v6, "com.facebook.orca_preferences"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/facebook/orca/NuiActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 60
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v6, "/auth/user_data/fb_token"

    const-string v7, "cannot find token!"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/facebook/orca/NuiActivity;->token:Ljava/lang/String;

    .line 61
    sget-object v6, Lcom/facebook/orca/NuiActivity;->token:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
