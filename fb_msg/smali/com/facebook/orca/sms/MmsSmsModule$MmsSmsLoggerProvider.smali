.class Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLoggerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MmsSmsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/MmsSmsLogger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/sms/MmsSmsModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLoggerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLoggerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/sms/MmsSmsLogger;
    .locals 5

    .prologue
    .line 323
    new-instance v3, Lcom/facebook/orca/sms/MmsSmsLogger;

    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLoggerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-static {v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Lcom/facebook/orca/sms/MmsSmsModule;)Landroid/content/Context;

    move-result-object v4

    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLoggerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-class v1, Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLoggerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager;

    const-class v2, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLoggerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/facebook/orca/sms/MmsSmsLogger;-><init>(Landroid/content/Context;Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/content/pm/PackageManager;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsLoggerProvider;->a()Lcom/facebook/orca/sms/MmsSmsLogger;

    move-result-object v0

    return-object v0
.end method
