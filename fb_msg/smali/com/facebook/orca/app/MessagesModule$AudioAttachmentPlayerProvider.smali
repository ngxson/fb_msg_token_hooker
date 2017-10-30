.class Lcom/facebook/orca/app/MessagesModule$AudioAttachmentPlayerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/attachments/AudioAttachmentPlayer;",
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
    .line 1133
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$AudioAttachmentPlayerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1133
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AudioAttachmentPlayerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/attachments/AudioAttachmentPlayer;
    .locals 3

    .prologue
    .line 1137
    new-instance v1, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$AudioAttachmentPlayerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$AudioAttachmentPlayerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$AudioAttachmentPlayerProvider;->a()Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    move-result-object v0

    return-object v0
.end method
