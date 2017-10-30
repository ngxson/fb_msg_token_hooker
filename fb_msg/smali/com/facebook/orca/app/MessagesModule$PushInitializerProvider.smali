.class Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/PushInitializer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1617
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/PushInitializer;
    .locals 4

    .prologue
    .line 1621
    new-instance v2, Lcom/facebook/orca/push/PushInitializer;

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v3

    const-class v0, Landroid/app/AlarmManager;

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider$1;-><init>(Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider;)V

    invoke-static {v1}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/orca/push/PushInitializer;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Ljava/util/Set;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$PushInitializerProvider;->a()Lcom/facebook/orca/push/PushInitializer;

    move-result-object v0

    return-object v0
.end method
