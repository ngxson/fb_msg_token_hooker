.class Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->c:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;

    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->a:Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 237
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->c:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap;->b:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->c:Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->d(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method
