.class Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;
.super Ljava/lang/Object;
.source "MessagesCollectionMerger.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/threads/MessagesCollectionMerger$1;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/facebook/orca/threads/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_0
    return-void
.end method

.method b(Lcom/facebook/orca/threads/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->c(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;
    .locals 2
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 299
    if-eqz v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 302
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    goto :goto_0
.end method

.method d(Lcom/facebook/orca/threads/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesCollectionMerger$MessageMap;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    return-void
.end method
