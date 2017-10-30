.class Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/MessageDeserializer;",
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
    .line 1426
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1426
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/methods/MessageDeserializer;
    .locals 6

    .prologue
    .line 1430
    new-instance v0, Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    const-class v1, Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    const-class v2, Lcom/facebook/orca/protocol/methods/ShareDeserializer;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/protocol/methods/ShareDeserializer;

    const-class v3, Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;

    const-class v4, Lcom/facebook/orca/location/CoordinatesDeserializer;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/location/CoordinatesDeserializer;

    const-class v5, Lcom/facebook/orca/protocol/methods/SourceDeserializer;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/protocol/methods/SourceDeserializer;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/methods/MessageDeserializer;-><init>(Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;Lcom/facebook/orca/protocol/methods/ShareDeserializer;Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;Lcom/facebook/orca/location/CoordinatesDeserializer;Lcom/facebook/orca/protocol/methods/SourceDeserializer;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;->a()Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    move-result-object v0

    return-object v0
.end method
