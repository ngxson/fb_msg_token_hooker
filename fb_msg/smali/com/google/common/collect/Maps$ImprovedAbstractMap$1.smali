.class Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;
.super Lcom/google/common/collect/Maps$KeySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$ImprovedAbstractMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1484
    iput-object p1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->a:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$KeySet;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;->a:Lcom/google/common/collect/Maps$ImprovedAbstractMap;

    return-object v0
.end method
