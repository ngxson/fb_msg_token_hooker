.class public Lcom/facebook/orca/app/MessengerApplication;
.super Lcom/facebook/app/DelegatingApplication;
.source "MessengerApplication.java"

# interfaces
.implements Lcom/facebook/orca/inject/FbInjectorProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/app/DelegatingApplication",
        "<",
        "Lcom/facebook/orca/app/MessengerApplicationImpl;",
        ">;",
        "Lcom/facebook/orca/inject/FbInjectorProvider;"
    }
.end annotation

.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    formKey = ""
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/app/OrcaAppType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/app/DelegatingApplication;-><init>()V

    return-void
.end method

.method private f()Lcom/facebook/orca/app/OrcaAppType;
    .locals 7

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 60
    const-string v1, "com.facebook.orca"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 62
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 63
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 64
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/SecureHashUtil;->b([B)Ljava/lang/String;

    move-result-object v3

    .line 65
    const-string v4, "OrcaGuiceModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v4, Lcom/facebook/orca/app/OrcaAppTypes;->a:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v4}, Lcom/facebook/orca/app/OrcaAppType;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    sget-object v0, Lcom/facebook/orca/app/OrcaAppTypes;->a:Lcom/facebook/orca/app/OrcaAppType;

    .line 75
    :goto_1
    return-object v0

    .line 68
    :cond_0
    sget-object v4, Lcom/facebook/orca/app/OrcaAppTypes;->b:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v4}, Lcom/facebook/orca/app/OrcaAppType;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    sget-object v0, Lcom/facebook/orca/app/OrcaAppTypes;->b:Lcom/facebook/orca/app/OrcaAppType;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 63
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 75
    :cond_2
    sget-object v0, Lcom/facebook/orca/app/OrcaAppTypes;->c:Lcom/facebook/orca/app/OrcaAppType;

    goto :goto_1
.end method


# virtual methods
.method protected synthetic a()Lcom/facebook/app/ApplicationLike;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerApplication;->d()Lcom/facebook/orca/app/MessengerApplicationImpl;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 34
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 35
    const-string v0, "https://www.facebook.com/mobile/orca_android_crash_logs/"

    .line 36
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v1

    .line 37
    new-instance v2, Lorg/acra/sender/HttpPostSender;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/acra/sender/HttpPostSender;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/app/MessengerApplication;->f()Lcom/facebook/orca/app/OrcaAppType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/app/MessengerApplication;->a:Lcom/facebook/orca/app/OrcaAppType;

    .line 39
    const-string v0, "app"

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerApplication;->a:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v2}, Lcom/facebook/orca/app/OrcaAppType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    const-string v0, "fb_app_id"

    iget-object v2, p0, Lcom/facebook/orca/app/MessengerApplication;->a:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v2}, Lcom/facebook/orca/app/OrcaAppType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected d()Lcom/facebook/orca/app/MessengerApplicationImpl;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/orca/app/MessengerApplicationImpl;

    iget-object v1, p0, Lcom/facebook/orca/app/MessengerApplication;->a:Lcom/facebook/orca/app/OrcaAppType;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/app/MessengerApplicationImpl;-><init>(Landroid/app/Application;Lcom/facebook/orca/app/OrcaAppType;)V

    return-object v0
.end method

.method public declared-synchronized e()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerApplication;->c()Lcom/facebook/app/ApplicationLike;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/MessengerApplicationImpl;

    invoke-virtual {v0}, Lcom/facebook/orca/app/MessengerApplicationImpl;->e()Lcom/facebook/orca/inject/FbInjector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
