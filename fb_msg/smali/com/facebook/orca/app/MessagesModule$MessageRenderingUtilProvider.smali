.class Lcom/facebook/orca/app/MessagesModule$MessageRenderingUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;",
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
    .line 973
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$MessageRenderingUtilProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 973
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$MessageRenderingUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;
    .locals 4

    .prologue
    .line 977
    new-instance v3, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$MessageRenderingUtilProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    const-class v1, Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$MessageRenderingUtilProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/share/ShareRenderingLogic;

    const-class v2, Lcom/facebook/orca/emoji/EmojiUtil;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$MessageRenderingUtilProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/emoji/EmojiUtil;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;-><init>(Landroid/content/res/Resources;Lcom/facebook/orca/share/ShareRenderingLogic;Lcom/facebook/orca/emoji/EmojiUtil;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$MessageRenderingUtilProvider;->a()Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    move-result-object v0

    return-object v0
.end method
