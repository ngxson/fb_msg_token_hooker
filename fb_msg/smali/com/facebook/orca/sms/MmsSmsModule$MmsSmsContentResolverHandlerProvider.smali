.class Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MmsSmsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;",
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
    .line 174
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;
    .locals 7

    .prologue
    .line 179
    new-instance v0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-static {v1}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Lcom/facebook/orca/sms/MmsSmsModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    const-class v3, Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/sms/MmsContentResolverHandler;

    const-class v4, Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/sms/MmsSmsUserUtils;

    const-class v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v6, Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;-><init>(Landroid/content/Context;Lcom/facebook/orca/sms/SmsContentResolverHandler;Lcom/facebook/orca/sms/MmsContentResolverHandler;Lcom/facebook/orca/sms/MmsSmsUserUtils;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/threads/ThreadSnippetUtil;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsContentResolverHandlerProvider;->a()Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    move-result-object v0

    return-object v0
.end method
