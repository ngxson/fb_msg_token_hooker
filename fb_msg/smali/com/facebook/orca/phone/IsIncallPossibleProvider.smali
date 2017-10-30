.class public Lcom/facebook/orca/phone/IsIncallPossibleProvider;
.super Ljava/lang/Object;
.source "IsIncallPossibleProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaAppType;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaAppType;Landroid/content/Context;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/facebook/orca/annotations/FromApplication;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/phone/IsIncallPossibleProvider;->a:Lcom/facebook/orca/app/OrcaAppType;

    .line 29
    iput-object p2, p0, Lcom/facebook/orca/phone/IsIncallPossibleProvider;->b:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/phone/IsIncallPossibleProvider;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/phone/IsIncallPossibleProvider;->a:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->i()Lcom/facebook/orca/app/OrcaAppType$Product;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType$Product;->MESSENGER:Lcom/facebook/orca/app/OrcaAppType$Product;

    if-ne v0, v1, :cond_0

    const-string v0, "android.permission.CALL_PHONE"

    invoke-direct {p0, v0}, Lcom/facebook/orca/phone/IsIncallPossibleProvider;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.GET_TASKS"

    invoke-direct {p0, v0}, Lcom/facebook/orca/phone/IsIncallPossibleProvider;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-direct {p0, v0}, Lcom/facebook/orca/phone/IsIncallPossibleProvider;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/phone/IsIncallPossibleProvider;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/facebook/orca/phone/IsIncallPossibleProvider;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
