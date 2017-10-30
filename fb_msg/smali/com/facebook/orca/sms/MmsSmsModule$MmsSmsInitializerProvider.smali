.class Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsInitializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MmsSmsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/MmsSmsInitializer;",
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
    .line 298
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsInitializerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsInitializerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/sms/MmsSmsInitializer;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Lcom/facebook/orca/sms/MmsSmsInitializer;

    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsInitializerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-static {v1}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Lcom/facebook/orca/sms/MmsSmsModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/sms/MmsSmsInitializer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsInitializerProvider;->a()Lcom/facebook/orca/sms/MmsSmsInitializer;

    move-result-object v0

    return-object v0
.end method
