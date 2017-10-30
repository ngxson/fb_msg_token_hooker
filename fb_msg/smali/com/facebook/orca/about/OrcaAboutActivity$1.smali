.class Lcom/facebook/orca/about/OrcaAboutActivity$1;
.super Landroid/webkit/WebViewClient;
.source "OrcaAboutActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/about/OrcaAboutActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/about/OrcaAboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/orca/about/OrcaAboutActivity$1;->a:Lcom/facebook/orca/about/OrcaAboutActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 48
    const-string v0, "/license"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/facebook/orca/about/OrcaAboutActivity$1;->a:Lcom/facebook/orca/about/OrcaAboutActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/about/OrcaAboutActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 60
    :goto_0
    return v0

    .line 53
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/about/OrcaAboutActivity$1;->a:Lcom/facebook/orca/about/OrcaAboutActivity;

    sget v1, Lcom/facebook/R$raw;->orca_license:I

    invoke-static {v0, v1}, Lcom/facebook/orca/about/OrcaAboutActivity;->a(Lcom/facebook/orca/about/OrcaAboutActivity;I)Ljava/lang/String;

    move-result-object v2

    .line 54
    const/4 v1, 0x0

    const-string v3, "text/txt"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/about/OrcaAboutActivity$1;->a:Lcom/facebook/orca/about/OrcaAboutActivity;

    sget v1, Lcom/facebook/R$id;->btn_terms_of_service:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/about/OrcaAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 60
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const/4 v0, 0x0

    goto :goto_0
.end method
