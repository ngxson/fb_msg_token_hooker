.class final enum Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory$4;
.super Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory;
.source "CustomConcurrentHashMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/cache/CustomConcurrentHashMap$1;)V

    return-void
.end method


# virtual methods
.method copyEntry(Lcom/google/common/cache/CustomConcurrentHashMap$Segment;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$Segment",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 407
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory;->copyEntry(Lcom/google/common/cache/CustomConcurrentHashMap$Segment;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 408
    invoke-virtual {p0, p2, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory$4;->copyExpirableEntry(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 409
    invoke-virtual {p0, p2, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory$4;->copyEvictableEntry(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 410
    return-object v0
.end method

.method newEntry(Lcom/google/common/cache/CustomConcurrentHashMap$Segment;Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$Segment",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    return-object v0
.end method
