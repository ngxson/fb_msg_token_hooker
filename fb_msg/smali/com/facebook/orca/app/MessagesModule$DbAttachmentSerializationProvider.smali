.class Lcom/facebook/orca/app/MessagesModule$DbAttachmentSerializationProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbAttachmentSerialization;",
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
    .line 1091
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$DbAttachmentSerializationProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1091
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$DbAttachmentSerializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/DbAttachmentSerialization;
    .locals 2

    .prologue
    .line 1096
    new-instance v1, Lcom/facebook/orca/database/DbAttachmentSerialization;

    const-class v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$DbAttachmentSerializationProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1, v0}, Lcom/facebook/orca/database/DbAttachmentSerialization;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1091
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$DbAttachmentSerializationProvider;->a()Lcom/facebook/orca/database/DbAttachmentSerialization;

    move-result-object v0

    return-object v0
.end method
