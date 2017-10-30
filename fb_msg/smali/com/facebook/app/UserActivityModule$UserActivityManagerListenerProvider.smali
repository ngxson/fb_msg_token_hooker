.class Lcom/facebook/app/UserActivityModule$UserActivityManagerListenerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "UserActivityModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/app/UserActivityManager$MyActivityListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/app/UserActivityModule;


# direct methods
.method private constructor <init>(Lcom/facebook/app/UserActivityModule;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/app/UserActivityModule$UserActivityManagerListenerProvider;->a:Lcom/facebook/app/UserActivityModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/app/UserActivityModule;Lcom/facebook/app/UserActivityModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/app/UserActivityModule$UserActivityManagerListenerProvider;-><init>(Lcom/facebook/app/UserActivityModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/app/UserActivityManager$MyActivityListener;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/facebook/app/UserActivityManager;

    invoke-virtual {p0, v0}, Lcom/facebook/app/UserActivityModule$UserActivityManagerListenerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/app/UserActivityManager;

    invoke-virtual {v0}, Lcom/facebook/app/UserActivityManager;->f()Lcom/facebook/app/UserActivityManager$MyActivityListener;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/facebook/app/UserActivityModule$UserActivityManagerListenerProvider;->a()Lcom/facebook/app/UserActivityManager$MyActivityListener;

    move-result-object v0

    return-object v0
.end method
