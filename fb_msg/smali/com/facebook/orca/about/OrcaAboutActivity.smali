.class public Lcom/facebook/orca/about/OrcaAboutActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "OrcaAboutActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/about/OrcaAboutActivity;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/orca/about/OrcaAboutActivity;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/facebook/orca/about/OrcaAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 32
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 33
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 36
    return-object v2
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 41
    invoke-virtual {p0, v1}, Lcom/facebook/orca/about/OrcaAboutActivity;->requestWindowFeature(I)Z

    .line 42
    sget v0, Lcom/facebook/R$layout;->about:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/about/OrcaAboutActivity;->setContentView(I)V

    .line 43
    sget v0, Lcom/facebook/R$drawable;->launcher_icon:I

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/about/OrcaAboutActivity;->setFeatureDrawableResource(II)V

    .line 45
    sget v0, Lcom/facebook/R$id;->wv:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/about/OrcaAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 46
    new-instance v1, Lcom/facebook/orca/about/OrcaAboutActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/about/OrcaAboutActivity$1;-><init>(Lcom/facebook/orca/about/OrcaAboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/about/OrcaAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/about/OrcaAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 65
    sget v2, Lcom/facebook/R$raw;->orca_about:I

    invoke-direct {p0, v2}, Lcom/facebook/orca/about/OrcaAboutActivity;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    const-string v3, "{version}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    sget v0, Lcom/facebook/R$id;->btn_terms_of_service:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/about/OrcaAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/about/OrcaAboutActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/about/OrcaAboutActivity$2;-><init>(Lcom/facebook/orca/about/OrcaAboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v0, Lcom/facebook/R$id;->btn_ok:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/about/OrcaAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/about/OrcaAboutActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/about/OrcaAboutActivity$3;-><init>(Lcom/facebook/orca/about/OrcaAboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :catch_1
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "about"

    return-object v0
.end method
