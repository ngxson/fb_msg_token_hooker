.class Lcom/facebook/orca/app/MessagesModule$ThreadParticipantUtilsProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/threads/ThreadParticipantUtils;",
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
    .line 917
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ThreadParticipantUtilsProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadParticipantUtilsProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threads/ThreadParticipantUtils;
    .locals 3

    .prologue
    .line 921
    new-instance v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    const-class v1, Lcom/facebook/orca/users/User;

    const-class v2, Lcom/facebook/orca/annotations/MeUser;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadParticipantUtilsProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$ThreadParticipantUtilsProvider;->a()Lcom/facebook/orca/threads/ThreadParticipantUtils;

    move-result-object v0

    return-object v0
.end method
