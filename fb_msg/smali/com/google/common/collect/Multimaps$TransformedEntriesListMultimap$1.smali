.class Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;->b:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;)TV2;"
        }
    .end annotation

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;->b:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->b:Lcom/google/common/collect/Maps$EntryTransformer;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/Maps$EntryTransformer;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
