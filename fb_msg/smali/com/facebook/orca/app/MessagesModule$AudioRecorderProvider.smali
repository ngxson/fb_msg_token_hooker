.class Lcom/facebook/orca/app/MessagesModule$AudioRecorderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/attachments/AudioRecorder;",
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
    .line 1141
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$AudioRecorderProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AudioRecorderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/attachments/AudioRecorder;
    .locals 4

    .prologue
    .line 1145
    new-instance v2, Lcom/facebook/orca/attachments/AudioRecorder;

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$AudioRecorderProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v3

    const-class v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$AudioRecorderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    const-class v1, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$AudioRecorderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/orca/attachments/AudioRecorder;-><init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaAttachmentFactory;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$AudioRecorderProvider;->a()Lcom/facebook/orca/attachments/AudioRecorder;

    move-result-object v0

    return-object v0
.end method
